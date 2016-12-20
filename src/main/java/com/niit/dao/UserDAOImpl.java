package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
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
		Session session=sessionFactory.getCurrentSession();
		session.persist(user);
		
	}

	public void updateUser(Users user) {
		Session session=sessionFactory.getCurrentSession();
		session.update(user);
		
	}

	public List<Users> listUsers() {
		Session session=sessionFactory.getCurrentSession();
		List<Users> users=session.createQuery("from Users").getResultList();
		/*if(users.isEmpty())
		{
			System.out.println("Empty");
		}
		else
		{
			for(Users u:users)
			{
				System.out.println(u.getName());
			}
		}*/
		return users;
		
	}

	public Users getUserById(int userId) {
		Session session=sessionFactory.getCurrentSession();
		Users user=(Users)session.createQuery("from Users where id="+userId).getSingleResult();
		return user;
		
	}

	public void removeUser(int userId) {
		Session session=sessionFactory.getCurrentSession();
		Users user=(Users)session.createQuery("from Users where id=+"+userId).getSingleResult();
		session.delete(user);
	}

}
