package dao;

import java.util.List;

import model.Product;

public interface ProductDAO {
	public List<Product> getAllProducts();
	  public Product getProduct(int productId);
	  public void updateProduct(Product product);
	  public void deleteProduct(Product product);
}
