package com.niit.controller;

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

import com.niit.dao.UserDAO;
import com.niit.model.Users;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;

	@RequestMapping(value= "/user/register", method = RequestMethod.POST)
	public String registerUser(@Valid @ModelAttribute("user") Users user, BindingResult result) {
		
		if(result.hasErrors())
		{
			return "Register";
		}
		
		else {
			userDAO.addUser(user);
			return "redirect:/";
		}
		
		
	}
	

}
