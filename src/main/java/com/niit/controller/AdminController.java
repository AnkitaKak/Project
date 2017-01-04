package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Product;
import com.niit.model.Users;

@Controller
public class AdminController {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value = "/admin")
    public String adminPage(Model model) {
        model.addAttribute("user", getPrincipal());
		//ModelAndView model=new ModelAndView("admin");
		return "admin";
    }
	
	
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(Model model) {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }
    
    private String getPrincipal(){
        String username = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof Users) {
            username = ((Users)principal).getUsername();
        } 
        else {
            username = principal.toString();
        }
        return username;
    }
	
	@RequestMapping(value= "/ProductAdmin", method = RequestMethod.GET)
	public String viewProductDetails(@Valid @ModelAttribute("product") Product product, Model model) {
		/*List<Product> products=productDAO.getAllProducts();
		String json=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("viewProduct");
		model.addObject("allProducts", json);
		return model;
		*/
		model.addAttribute("product", new Product());
		model.addAttribute("listProducts", productDAO.getAllProducts());
		return "viewProduct";
	}
	
	
	@RequestMapping(value= "/viewUser", method = RequestMethod.GET)
	public String viewUserDetails(@Valid @ModelAttribute("user") Users user, Model model) {
		model.addAttribute("user", new Users());
		model.addAttribute("listUsers", userDAO.listUsers());
		return "viewUser";
		
	}
	
	@RequestMapping(value= "/user/add", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("user") Users user, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			//model.addAttribute("listUsers", userDAO.listUsers());
			return "/viewUser";
		}
		
		if(user.getUserId()==0)
		{
			userDAO.addUser(user);
		}
		else
		{
			userDAO.updateUser(user);
		}
		
		return "/viewUser";
	}
	
	@RequestMapping(value= "/removeUser/{userId}")
	public String removePerson(@PathVariable("userId") int userId)
	{
		userDAO.removeUser(userId);
		return "/viewUser";
	}
	
	@RequestMapping(value= "/editUser/{userId}")
	public String editUser(@PathVariable("userId") int userId, Model model)
	{
		model.addAttribute("user", userDAO.getUserById(userId));
        model.addAttribute("listUsers", userDAO.listUsers());
        return "/viewUser";
	}

	
	@RequestMapping(value= "/product/add", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model, HttpServletRequest request)
	{
		
		//String filename;
		byte[] bytes;
		if (!product.getImage().isEmpty()) {

			try {
			
				bytes = product.getImage().getBytes();
				model.addAttribute("product");
				productDAO.addProduct(product);
				//System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/resources/img/" + product.getProductId() + ".jpg");
				//System.out.println("Path = " + path);
				//System.out.println("File name = " + person.getImage().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				//System.out.println("Image uploaded");
			} 
			catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		if(result.hasErrors())
		{
			//model.addAttribute("listProducts", productDAO.getAllProducts());
			return "/viewProduct";
		}
		
		if(product.getProductId()==0)
		{
			productDAO.addProduct(product);
		}
		else
		{
			productDAO.updateProduct(product);
			return "/viewProduct";
		}
		
		return "/viewProduct";
	}
	
	@RequestMapping(value= "/removeProduct/{productId}")
	public String removeProduct(@PathVariable("productId") int productId)
	{
		productDAO.deleteProduct(productId);
		return "/viewProduct";
	}
	
	@RequestMapping(value= "/editProduct/{productId}")
	public String editProduct(@PathVariable("productId") int productId, Model model)
	{
		model.addAttribute("product", productDAO.getProduct(productId));
        model.addAttribute("listProducts", productDAO.getAllProducts());
        return "/viewProduct";
	}
	
	
}
