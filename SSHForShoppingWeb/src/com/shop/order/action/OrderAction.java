package com.shop.order.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shop.order.service.OrderService;
import com.shop.order.vo.Order;

public class OrderAction extends ActionSupport implements ModelDriven<Order>{
	Order order=new Order();
	OrderService orderService;
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public String submitOrder()
	{
		//保存订单至数据库
		return "payPage";
	}
	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		return order;
	}
	
}
