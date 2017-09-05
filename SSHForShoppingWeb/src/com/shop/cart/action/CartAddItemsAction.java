package com.shop.cart.action;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.cart.vo.Cart;
import com.shop.cart.vo.ProductItem;
import com.shop.product.service.ProductService;
import com.shop.product.vo.Product;

public class CartAddItemsAction extends ActionSupport{
	ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	int pid;
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPid() {
		return pid;
	}
	int itemNum;
	public void setItemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	public int getItemNum() {
		return itemNum;
	}
	public String addToCart()
	{
		System.out.println("pid="+pid);
		Cart cart=CartAction.getCart();
		System.out.println("pid="+pid);
		Product product=productService.findByPid(pid);
		System.out.println(product);
		ProductItem productItem=new ProductItem();
		productItem.setProduct(product);
		productItem.setItemNum(itemNum);
		cart.addItem(productItem);
		return "cartPage";
	}
}
