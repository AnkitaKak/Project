package com.niit.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="users")
public class Users {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;
	@Size(min=2,max=10,message="Name has to be between 2 and 10 characters")
	@NotEmpty(message="Name Can't be empty")
	private String name;
	@NotEmpty(message="Username Can't be empty")
	private String username;
	//private String uname;
	@NotEmpty(message="Email Can't be empty")
	private String email;
	@NotEmpty(message="Password Can't be empty")
	private String password;
	//private String pwd;
	@NotEmpty(message="Date of Birth Can't be empty")
	private String dob;
	private String role;
	private boolean enabled;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cartId")
	private Cart cart;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingAddressId")
	private ShippingAddress shippingAddress;
	

	public Users(){
		super();
	
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	/*public String getUname() {
		return uname;
    }

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}*/

	
}