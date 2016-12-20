package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	UserDAO userDAO;
	
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
    public String adminPage(Model model) {
        return "admin";
    }
	
	@RequestMapping(value= "/viewProduct")
	public ModelAndView viewProductDetails() {
		List<Product> products=productDAO.getAllProducts();
		String json=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("viewProduct");
		model.addObject("allProducts", json);
		return model;
	}

	@RequestMapping(value= "/viewUser")
	public ModelAndView viewUserDetails() {
		List<Users> users=userDAO.listUsers();
		String json1=new Gson().toJson(users);
		ModelAndView model=new ModelAndView("viewUser");
		model.addObject("allUsers", json1);
		return model;
	}
	
}
