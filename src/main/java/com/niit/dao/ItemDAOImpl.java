package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Cart;
import com.niit.model.Item;

@Repository("itemDAO")
@EnableTransactionManagement
@Transactional
public class ItemDAOImpl implements ItemDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addItem(Item items) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(items);
		
	}

	public List<Item> getAllItems() {
		Session session=sessionFactory.getCurrentSession();
		List<Item> item=session.createQuery("from Item").getResultList();
		return item;
	}

	public Item getItemById(int itemId) {
		Session session=sessionFactory.getCurrentSession();
		Item item=(Item)session.createQuery("from Item where itemId="+itemId).getSingleResult();
		return item;
	}

	public void removeItem(Item itemId) {
		Session session=sessionFactory.getCurrentSession();
		Item item=(Item)session.createQuery("from Item where itemId="+itemId).getSingleResult();
		session.delete(item);
		
	}
	
	public void removeAllItems(Cart cart) {
		Session session=sessionFactory.getCurrentSession();
		List<Item> item=cart.getItems();
		session.delete(item);
		
	}
	
	

}
