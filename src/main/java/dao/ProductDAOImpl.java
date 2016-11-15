package dao;

import java.util.ArrayList;
import java.util.List;

import model.Product;

public class ProductDAOImpl implements ProductDAO {
	//List is working as a database
	List<Product> products;
	
	public ProductDAOImpl() {
		products=new ArrayList<Product>();
		Product product1=new Product(1, "Chanel","Side Bag", "Purses & Handbags", "Stylish Bag", 1000);
		Product product2=new Product(2, "Calvin Klein","Watch", "Hand Accesories", "Wrist Watch", 7000);
		Product product3=new Product(3, "D'Damas","Necklace", "Jewellery", "Designer Jewellery Set", 10000);
		products.add(product1);
		products.add(product2);
		products.add(product3);
	}

	public void deleteProduct(Product product) {
		products.remove(product.getProductId());
		System.out.println("Product with ID: "+product.getProductId()+", is deleted from database");
	}
	
	public List<Product> getAllProducts() {
		return products;
	}

	public Product getProduct(int productId) {
		return products.get(productId);
	}

	public void updateProduct(Product product) {
		products.get(product.getProductId()).setProductName(product.getProductName());
		System.out.println("Product with Id: "+product.getProductId()+", is updated in the database");
		
	}

}
