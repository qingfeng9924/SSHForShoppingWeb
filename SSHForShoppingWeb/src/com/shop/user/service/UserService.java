package com.shop.user.service;

import com.shop.user.dao.UserDao;
import com.shop.user.vo.User;
import com.shop.utils.AcCode;
/*
 * �û�ҵ���Ĵ���
 */
public class UserService {
	public UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public User findUserName(String username)
	{
		return userDao.checkName(username);
	}
	public void saveUser(User user)
	{
		user.setState(1);
		user.setCode(AcCode.getactiveCode());
		userDao.savaUser(user);
	}
	public User finUser(User user)
	{
		return userDao.findUser(user);
	}
}
