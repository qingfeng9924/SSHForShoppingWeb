package com.shop.categorysecond.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.shop.categoryone.vo.CategoryOne;
import com.shop.product.vo.Product;

public class CategorySecond implements Serializable{
	private Integer csid;
	private String csname;
	private CategoryOne categoryOne;
	Set<Product> products=new HashSet<Product>();
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}
	public String getCsname() {
		return csname;
	}
	public void setCsname(String csname) {
		this.csname = csname;
	}
	public CategoryOne getCategoryOne() {
		return categoryOne;
	}
	public void setCategoryOne(CategoryOne categoryOne) {
		this.categoryOne = categoryOne;
	}
	
}
