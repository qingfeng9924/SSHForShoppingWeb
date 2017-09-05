package com.shop.product.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shop.categoryone.service.CategoryOneService;
import com.shop.categoryone.vo.CategoryOne;
import com.shop.product.service.ProductService;
import com.shop.product.vo.Product;
import com.shop.utils.PageBean;


public class ProductAction extends ActionSupport implements ModelDriven<Product>{
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	private Product product=new Product();
	ProductService productService;
	CategoryOneService categoryOneService;
	private int cid;
	int page;
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getCid() {
		return cid;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPage() {
		return page;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public String findByCid()
	{
		PageBean<Product> pageBean=productService.findByPage(page,cid);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCid";
	}
	public String findDeatil()
	{
		//System.out.println("pid***************************"+product.getPid());
		product=productService.findByPid(product.getPid());
		return "detailProduct";
	}
	@Override
	public Product getModel() {
		// TODO Auto-generated method stub
		System.out.print(product);
		return product;
	}
	
}
