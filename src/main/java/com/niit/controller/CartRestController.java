package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.niit.dao.CartDAO;
import com.niit.dao.ItemDAO;
import com.niit.model.Cart;
import com.niit.model.Item;

@RestController
public class CartRestController {
	
	@Autowired
	CartDAO cartDAO;
	 
	@Autowired
	ItemDAO itemDAO;
	
	@RequestMapping(value="/refreshCart/{cartId}")
	public Cart getCartById(@PathVariable(value="cartId") int cartId) {
		return cartDAO.getCartById(cartId);
	}
	
	@RequestMapping(value="/removeItem/{itemId}", method=RequestMethod.PUT)
	public void removeItem(@PathVariable(value="itemId") int itemId) {
		Item item=itemDAO.getItemById(itemId);
		itemDAO.removeItem(item);
	}
	

}
