package com.shop.order.service;

import com.shop.order.dao.OrderDao;

public class OrderService {
	OrderDao orderDao;
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
}
