package com.shop.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.http.server.ServerHttpResponse;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shop.user.service.UserService;
import com.shop.user.vo.User;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	private String validateCode;
	User user=new User();
	UserService userService;
	HttpServletResponse response=ServletActionContext.getResponse();
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}
	public String findById() throws IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		User validatUser=userService.findUserName(user.getUsername());
		if(validatUser==null)
		{
			response.getWriter().println("<font color='red'>�û�������!GOOD BOY</font>");
		}else{
			response.getWriter().println("<font color='red'>�û����ѱ�ʹ��</font>");
		}
		return NONE;
	}
	public String checkValidateCode() throws IOException
	{
		//System.out.print("ok");
		response.setContentType("text/html;charset=UTF-8");
		String code=ServletActionContext.getRequest().getSession().getAttribute("validateCode").toString();
		System.out.println(code);
		System.out.print(validateCode);
		if(validateCode!=null)
		{
			if(validateCode.equals(code))
			{
				response.getWriter().println("<font color='red'>��֤����ȷ!GOOD BOY</font>");
			}else{
				response.getWriter().println("<font color='red'>��֤����� ? COME ON! BOY</font>");
			}
			
		}else{
			response.getWriter().println("<big><font color='red'>��������֤�� COME ON! BOY</font></big>");
		}
		return NONE;
	}
	public String checkUser()
	{
		User u=userService.finUser(user);
		System.out.print(u);
		if(u==null)
		{
			System.out.print("�û���Ϊ��");
			this.addFieldError("error", "�û���������");
			return "loginPage";
		}else if(u.getPassword().equals(user.getPassword()))
		{
			ServletActionContext.getRequest().getSession().setAttribute("user", user);
			return "yexinIndex";
		}else{
			this.addFieldError("error", "�û������������");
			return "loginPage";
		}
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

}
