package model;

public class Product {
	private int productId;
	private String brand;
	private String productName;
	private String category;
	private String description;
	private double price;
	 
	
	public Product(int productId, String brand, String productName, String category, String description, double price) {
		super();
		this.productId=productId;
		this.brand=brand;
		this.productName=productName;
		this.category=category;
		this.description=description;
		this.price=price;
	}


	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
