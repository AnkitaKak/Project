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

	@RequestMapping(value= "/insertUser", method = RequestMethod.POST)
	public String registerUser(@Valid @ModelAttribute("user") Users user, Model model, BindingResult result) {
		
		if(result.hasErrors())
		{
			return "Register";
		}
		
		if(user.getUserId()==0)
		{
			userDAO.addUser(user);
			return "Login";
		}
		else {
			return "Register";
		}
		
		
	}
	
	@RequestMapping(value= "/remove/{userId}")
	public String removePerson(@PathVariable("userId") int userId)
	{
		userDAO.removeUser(userId);
		return "redirect:/";
	}
	
	@RequestMapping(value= "/edit/{userId}")
	public String editPerson(@PathVariable("userId") int userId, Model model)
	{
		model.addAttribute("person", userDAO.getUserById(userId));
        model.addAttribute("listPersons", userDAO.listUsers());
        return "";
	}

	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(Model model) {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }
    
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof Users) {
            userName = ((Users)principal).getUname();
        } 
        else {
            userName = principal.toString();
        }
        return userName;
    }

}
