package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Person;

@Repository
@Transactional
@EnableTransactionManagement
public class PersonDAOImpl implements PersonDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addPerson(Person person) {
		Session session=sessionFactory.getCurrentSession();
		session.persist(person);
		
	}

	public void updatePerson(Person person) {
		Session session=sessionFactory.getCurrentSession();
		session.update(person);
		
	}

	public List<Person> listPersons() {
		Session session=sessionFactory.getCurrentSession();
		List<Person> persons=session.createQuery("from Person").getResultList();
		if(persons.isEmpty())
		{
			System.out.println("Empty");
		}
		else
		{
			for(Person p:persons)
			{
				System.out.println(p.getName());
			}
		}
		return persons;
		
	}

	public Person getPersonById(int personId) {
		Session session=sessionFactory.getCurrentSession();
		Person person=(Person)session.createQuery("from Person where id="+personId).getSingleResult();
		return person;
		
	}

	public void removePerson(int personId) {
		Session session=sessionFactory.getCurrentSession();
		Person person=(Person)session.createQuery("from Person where id=+"+personId).getSingleResult();
		session.delete(person);
	}
	
}
