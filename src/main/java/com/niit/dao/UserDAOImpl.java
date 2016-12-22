package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Users;

@Repository
@Transactional
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addUser(Users user) {
		
		sessionFactory.getCurrentSession().persist(user);
		
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

}
