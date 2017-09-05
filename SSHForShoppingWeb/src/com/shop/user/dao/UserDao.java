package com.shop.user.dao;

import java.util.List;

import javax.imageio.spi.ServiceRegistry;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.shop.user.vo.User;

/*
 * 用户模块持久层代码
 */
public class UserDao{
	SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return this.sessionFactory.getCurrentSession();
	}
	//查询
	public User checkName(String username)
	{
		System.out.println(username);
		if(username==null)
		{
			return null;
		}
		String hql="FROM User where username=?";
		List<User> userList=getSession().createQuery(hql).setString(0, username).list();
		if(userList.size()>0)
		{
			return userList.get(0);
		}else{
			return null;
		}
	}
	
	public void savaUser(User user)
	{
		System.out.print(user);
		getSession().save(user);
	}
	public User findUser(User user) {
		// TODO Auto-generated method stub
		System.out.print(user.getUsername());
		String hql="from User where username=?";
		List<User> list=getSession().createQuery(hql).setString(0, user.getUsername()).list();
		if(list.size()<1)
		{
			return null;
		}
		return list.get(0);
	}
}
