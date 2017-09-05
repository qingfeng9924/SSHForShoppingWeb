package com.shop.cart.vo;

import com.shop.product.vo.Product;

public class ProductItem {
	Product product;
	double itemSumPrice;
	int itemNum;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public double getItemSumPrice() {
		return itemNum*product.getShop_price();
	}
	public void setItemSumPrice(double itemSumPrice) {
		this.itemSumPrice = itemSumPrice;
	}
	public int getItemNum() {
		return itemNum;
	}
	public void setItemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	
}
