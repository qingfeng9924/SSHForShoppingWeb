package com.shop.order.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class OrderDao {
	SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
}
