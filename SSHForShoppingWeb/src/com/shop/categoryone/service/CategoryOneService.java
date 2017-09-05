package com.shop.categoryone.service;

import java.util.List;

import com.shop.categoryone.dao.CategoryOneDao;
import com.shop.categoryone.vo.CategoryOne;

public class CategoryOneService {
	CategoryOneDao categoryOneDao;
	public void setCategoryOneDao(CategoryOneDao categoryOneDao) {
		this.categoryOneDao = categoryOneDao;
	}
	public List<CategoryOne> findAll() {
		// TODO Auto-generated method stub
		return categoryOneDao.getAll();
	}
}
