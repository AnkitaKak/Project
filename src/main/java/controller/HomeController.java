package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public ModelAndView HomePage() {
		ModelAndView model=new ModelAndView("index");
		return model;
	}
	
	@RequestMapping("/Register")
	public ModelAndView RegisterPage() {
		ModelAndView model=new ModelAndView("Register");
		return model;
	}
	
	@RequestMapping("/Login")
	public ModelAndView LoginPage() {
		ModelAndView model=new ModelAndView("Login");
		return model;
	}

}
