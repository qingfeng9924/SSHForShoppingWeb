package com.shop.index.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.shop.categoryone.dao.CategoryOneDao;
import com.shop.categoryone.service.CategoryOneService;

public class LoginAction {
	CategoryOneService categoryOneService;
	public void setCategoryOneService(CategoryOneService categoryOneService) {
		this.categoryOneService = categoryOneService;
	}
	public String loginpage()
	{
		System.out.println("login");
	    return "loginpage";
	}
	public String registerpage()
	{
		return "registerpage";
	}
	public String yeXinIndex()
	{
		List categoryOneList=categoryOneService.findAll();
		ServletActionContext.getRequest().getSession().setAttribute("categoryOneList", categoryOneList);
		return "yexinIndex";
	}
}
