package com.shop.user.action;

import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.utils.CreateCode;

public class ValidateCodeAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletResponse response=ServletActionContext.getResponse();
		CreateCode createCode=new CreateCode();
		ServletActionContext.getRequest().getSession().setAttribute("validateCode", createCode.sb);
		ImageIO.write(createCode.getImg(), "jpg", response.getOutputStream());
		return NONE;
	}
}
