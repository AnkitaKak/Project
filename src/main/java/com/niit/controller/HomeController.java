package com.niit.controller;

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
import com.niit.model.Person;
import com.niit.model.Product;
import com.niit.dao.PersonDAO;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

@Controller
public class HomeController {
	
	@Autowired
	//@Qualifier(value="productDAO")
	ProductDAO productDAO;
	PersonDAO personDAO;
	
	@RequestMapping(value= {"/", "/home" }, method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView model=new ModelAndView("index");
		return model;
	}
	
	@RequestMapping(value= "/Register")
	public ModelAndView RegisterPage() {
		ModelAndView model=new ModelAndView("Register");
		return model;
	}
	
	@RequestMapping(value= "/Login")
	public ModelAndView LoginPage() {
		ModelAndView model=new ModelAndView("Login");
		return model;
	}
	
	@RequestMapping(value= "/Product")
	public ModelAndView productsPage() {
		List<Product> products=productDAO.getAllProducts();
		String json=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("Product");
		model.addObject("productData", json);
		return model;
	}
	
	@RequestMapping(value= "/ProductDetails/{productId}")
	public ModelAndView detailsPage(@PathVariable("productId") int productId) {
		Product product=productDAO.getProduct(productId);
		String json=new Gson().toJson(product);
		ModelAndView model=new ModelAndView("ProductDetails");
		model.addObject("productDetails", json);
		return model;
	}
	
	@RequestMapping(value= "/person/add", method = RequestMethod.POST)
	public String addPerson(@Valid @ModelAttribute("person") Person person, Model model, BindingResult result, HttpServletRequest request) {
		String filename;
		byte[] bytes;
		
		if (!person.getImage().isEmpty()) {

			try {
				
				bytes = person.getImage().getBytes();
				personDAO.addPerson(person);
				System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/resources/images/" + person.getPersonId() + ".jpg");
				System.out.println("Path = " + path);
				System.out.println("File name = " + person.getImage().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			} 
			catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		if(result.hasErrors())
		{
			return "Register";
		}
		
		if(person.getPersonId()==0)
		{
			personDAO.addPerson(person);
		}
		/*else {
			personDAO.updatePerson(person);
		}*/
		
		
		return "redirect:/";
	}
	
	@RequestMapping(value= "/remove/{personId}")
	public String removePerson(@PathVariable("personId") int personId)
	{
		personDAO.removePerson(personId);
		return "redirect:/";
	}
	
	@RequestMapping(value= "/edit/{personId}")
	public String editPerson(@PathVariable("personId") int personId, Model model)
	{
		model.addAttribute("person", personDAO.getPersonById(personId));
        model.addAttribute("listPersons", personDAO.listPersons());
        return "";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(Model model) {
        model.addAttribute("persons", personDAO.listPersons());
        return "admin";
    }
 
 
    @RequestMapping(value="/logout", method = RequestMethod.GET)
       public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
          Authentication auth = SecurityContextHolder.getContext().getAuthentication();
          if (auth != null){    
             new SecurityContextLogoutHandler().logout(request, response, auth);
          }
          return "index";
       }
 
    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(Model model) {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }
    
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } 
        else {
            userName = principal.toString();
        }
        return userName;
    }

}
