package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="person")
public class Person {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int personId;
	@Size(min=2,max=10,message="Name has to be between 2 and 10 characters")
	@NotEmpty(message="Name Can't be empty")
	private String name;
	@NotEmpty(message="Gender Can't be empty")
	private String gender;
	@NotEmpty(message="Email Can't be empty")
	private String email;
	@NotEmpty(message="Password Can't be empty")
	private String pwd;
	@Value(value = "pwd")
	@NotEmpty(message="Password don't match")
	private String cpwd;
	@Size(min=10, max=10, message="Enter a valid contact")
	@NotEmpty(message="Contact Can't be empty")
	private String contact;
	@NotEmpty(message="Date of Birth Can't be empty")
	private String dob;
	
	@Transient
	private MultipartFile image;

	public Person(){
		super();
	}
	
	public int getPersonId() {
		return personId;
	}
	public void setPersonId(int personId) {
		this.personId = personId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getCpwd() {
		return cpwd;
	}

	public void setCpwd(String cpwd) {
		this.cpwd = cpwd;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

}
