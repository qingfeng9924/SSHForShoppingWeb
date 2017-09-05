package com.shop.categoryone.dao;

import java.util.List;





import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.shop.categoryone.vo.CategoryOne;

public class CategoryOneDao {
	SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	public List<CategoryOne> getAll() {
		// TODO Auto-generated method stub
		String hql="FROM CategoryOne";
		return (List<CategoryOne>) getSession().createQuery(hql).list();
	}
}
