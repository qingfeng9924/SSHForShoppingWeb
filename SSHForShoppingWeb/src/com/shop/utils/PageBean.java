package com.shop.utils;

import java.util.List;

import com.shop.product.vo.Product;

public class PageBean<T> {
	int page;
	int limit;
	int totleNum;
	int pageSize;
	List<T> pList;
	
	public void setPage(int page) {
		this.page = page;
	}
	public int getPage() {
		return page;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getTotleNum() {
		return totleNum;
	}
	public void setTotleNum(int totleNum) {
		this.totleNum = totleNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setpList(List<T> pList) {
		this.pList = pList;
	}
	public List<T> getpList() {
		return pList;
	}
	
}
