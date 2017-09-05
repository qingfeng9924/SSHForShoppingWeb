package com.shop.product.service;

import java.util.List;

import javassist.bytecode.Descriptor.Iterator;

import com.shop.product.dao.ProductDao;
import com.shop.product.vo.Product;
import com.shop.utils.PageBean;

public class ProductService {
	ProductDao productDao;
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	public List<Product> findByCid() {
		// TODO Auto-generated method stub
		return productDao.getByCid();
	}
	public PageBean<Product> findByPage(int page,int cid) {
		// TODO Auto-generated method stub
		PageBean<Product> pageBean=new PageBean<Product>();
		//���õ�ǰҳ��
		pageBean.setPage(page);
		//����ÿҳ����
		int limit=8;
		pageBean.setLimit(limit);
		//�������Ʒ��
		int totalNum;
		totalNum=productDao.findTotalPruduct(cid);
		//����ȡ��
		int pageSize;
		if(totalNum%limit==0)
		{
			pageSize=totalNum/limit;
		}else{
			pageSize=totalNum/limit+1;
		}
		pageBean.setPageSize(pageSize);
		pageBean.setTotleNum(productDao.findTotalPruduct(cid));
		System.out.println(" page: "+page+" totalNum: "+totalNum+" pagesize: "+pageSize);
		int begin=(page-1)*limit;
		pageBean.setpList(productDao.findAPByCid(cid,begin,limit));
		return pageBean;
	}
	public Product findByPid(int pid) {
		// TODO Auto-generated method stub
		return productDao.findProductByPid(pid);
	}
}