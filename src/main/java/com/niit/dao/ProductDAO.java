package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDAO {
	public List<Product> getAllProducts();
	  public Product getProduct(int productId);
	  public void updateProduct(Product products);
	  public void deleteProduct(Product products);
}
