package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;

@Repository
@Transactional
@EnableTransactionManagement
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public List<Product> getAllProducts() {
		List<Product> products=sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return products;
	}
	
	public Product getProduct(int productId) {
		Product products=(Product)sessionFactory.getCurrentSession().createQuery("from Product where productId="+productId).getSingleResult();
		return products;
	}

	public void updateProduct(Product products) {
		sessionFactory.getCurrentSession().update(products);
		
	}

	public void deleteProduct(Product products) {
		sessionFactory.getCurrentSession().remove(products);
	}
}
