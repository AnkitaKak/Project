package com.niit.dao;

import java.util.List;

import com.niit.model.Users;

public interface UserDAO {
	public void addUser(Users user);
	public void updateUser(Users user);
	public List<Users> listUsers();
	public Users getUserById(int userId);
	public void removeUser(int userId);

}
