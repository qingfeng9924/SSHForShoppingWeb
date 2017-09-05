package com.shop.cart.action;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.cart.vo.Cart;
import com.shop.cart.vo.ProductItem;
import com.shop.product.service.ProductService;
import com.shop.product.vo.Product;

public class CartAction extends ActionSupport{
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
	public String removeCart()
	{
		getCart().removeItem(pid);
		return "cartPage";
	}
	public static Cart getCart()
	{
		Cart cart=(Cart) ServletActionContext.getRequest().getSession().getAttribute("cart");
		if(cart==null)
		{
			cart=new Cart();
			ServletActionContext.getRequest().getSession().setAttribute("cart", cart);
		}
		return cart;
	}
	public String removeAll()
	{
		System.out.print("yes");
		getCart().clearCart();
		return "cartPage";
	}
}
