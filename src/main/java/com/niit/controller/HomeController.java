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
import com.niit.model.Users;
import com.niit.model.Product;
import com.niit.dao.UserDAO;

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
	UserDAO userDAO;
	
	@RequestMapping(value= {"/", "/home" }, method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView model=new ModelAndView("index");
		return model;
	}
	
	@RequestMapping(value= "/Register")
	public String registerPage(Model model) {
		Users user=new Users();
		model.addAttribute("user", user);
		return "Register";
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
 
 
    @RequestMapping(value="/logout", method = RequestMethod.GET)
       public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
          Authentication auth = SecurityContextHolder.getContext().getAuthentication();
          if (auth != null){    
             new SecurityContextLogoutHandler().logout(request, response, auth);
          }
          return "index";
       }
 
    
}
