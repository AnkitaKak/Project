package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ItemDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.dao.UserOrderDAO;
import com.niit.model.Cart;
import com.niit.model.Item;
import com.niit.model.Product;
import com.niit.model.Users;

@Controller
public class CartController {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	UserOrderDAO userOrderDAO;
	
	@Autowired
	ItemDAO itemDAO;
	
	@RequestMapping(value="/AddToCart/{productId}")
	public ModelAndView cart(@PathVariable("productId") int productId, Principal principal){
		ModelAndView model=new ModelAndView("Cart");
		System.out.println(principal.getName());
		Users user=userDAO.getUserByUsername(principal.getName());
		model.addObject("user", user);
		Cart cart=user.getCart();
		Product product=productDAO.getProduct(productId);
		/*List<Item> items=cart.getItems();
		
		for(int i=0; i<items.size(); i++){
			if(product.getProductId()==items.get(i).getProduct().getProductId()){
				Item item=items.get(i);
				item.setQuantity(item.getQuantity()+1);
				item.setItemTotal(product.getPrice()*item.getQuantity());
				itemDAO.addItem(item);
				
				return model;
			}
		}*/
		
		Item item=new Item();
		item.setProduct(product);
		item.setQuantity(1);
		item.setItemTotal(product.getPrice()*item.getQuantity());
		item.setCart(cart);
		
		itemDAO.addItem(item);
		
		return model;
	}
	

}
