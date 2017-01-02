package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Cart;
import com.niit.model.ShippingAddress;
import com.niit.model.Users;

@Repository
@Transactional
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addUser(Users user) {
		
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		
		Cart cart=new Cart();
		user.setCart(cart);
		cart.setUser(user);
		
		ShippingAddress shippingAddress=new ShippingAddress();
		shippingAddress.setUser(user);
		user.setShippingAddress(shippingAddress);
		
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		
	}

	public void updateUser(Users user) {
		
		sessionFactory.getCurrentSession().update(user);
		
	}

	public List<Users> listUsers() {
		
		List<Users> users=sessionFactory.getCurrentSession().createQuery("from Users").getResultList();
		if(users.isEmpty())
		{
			System.out.println("Empty");
		}
		else
		{
			for(Users u:users)
			{
				System.out.println(u.getName());
			}
		}
		return users;
		
	}

	public Users getUserById(int userId) {

		Users user=(Users)sessionFactory.getCurrentSession().createQuery("from Users where userId="+userId).getSingleResult();
		return user;
		
	}

	public void removeUser(int userId) {
		
		Users user=(Users)sessionFactory.getCurrentSession().createQuery("from Users where userId=+"+userId).getSingleResult();
		sessionFactory.getCurrentSession().delete(user);
	}
	
	public Users getUserByUsername(String uname) {
		Session session=sessionFactory.getCurrentSession();
		Users user=(Users)session.createQuery("from Users where username='"+uname+"'").getSingleResult();
		return user;
		
	}

}
