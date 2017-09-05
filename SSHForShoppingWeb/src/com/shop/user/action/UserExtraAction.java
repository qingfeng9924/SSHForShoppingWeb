package com.shop.user.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Service;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shop.user.service.UserService;
import com.shop.user.vo.User;

public class UserExtraAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserService userService;
	User user=new User();
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String regist()
	{
		System.out.print(user);
		userService.saveUser(user);	
		return NONE;
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
}
