package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import dao.ProductDAO;
import dao.ProductDAOImpl;
import model.Product;

import java.util.List;

@Controller
public class HomeController {
	
	ProductDAO productDAO=new ProductDAOImpl();
	
	@RequestMapping("/")
	public ModelAndView homePage() {
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
	
	@RequestMapping("/Product")
	public ModelAndView productsPage() {
		List<Product> products=productDAO.getAllProducts();
		String json=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("Product");
		model.addObject("productData", json);
		return model;
	}	

}
