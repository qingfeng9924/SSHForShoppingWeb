package com.shop.categoryone.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.shop.categorysecond.vo.CategorySecond;

public class CategoryOne implements Serializable{
	private Integer cid;
	private String cname;
	private Set<CategorySecond> categorySeconds=new HashSet<CategorySecond>();
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Set<CategorySecond> getCategorySeconds() {
		return categorySeconds;
	}
	public void setCategorySeconds(Set<CategorySecond> categorySeconds) {
		this.categorySeconds = categorySeconds;
	}
	
	
}
