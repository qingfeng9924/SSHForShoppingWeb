package com.shop.product.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.shop.product.vo.Product;

public class ProductDao {
	SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return this.sessionFactory.getCurrentSession();
	}
	public List<Product> getByCid() {
		// TODO Auto-generated method stub
		//String hql
		return null;
	}
	@SuppressWarnings("unchecked")
	public int findTotalPruduct(int cid) {
		// TODO Auto-generated method stub
		String hql="select count(*) from Product p,CategoryOne c,CategorySecond cs where p.csid=cs.csid and cs.csid=c.cid and c.cid=?";
		//String hql="select count(*) from Product p where p.categorySecond.categoryOne.cid = ?";
		List<Long> l=getSession().createQuery(hql).setInteger(0, cid).list();
		if(l.size()>0)
		{
			int res=l.get(0).intValue();
			System.out.println("findTotalPruduct  res="+res+" cid="+cid);
			return res;
		}else{
			return 0;	
		}
	}
	public List<Product> findAPByCid(int cid, int begin, int limit) {
		// TODO Auto-generated method stub
		System.out.println("cid="+cid+" begin="+begin+" limit="+limit);
		//String hql="select p from Product p join p.categorySecond cs join cs.categoryOne c where c.cid=?";
		String hql="select p from Product p,CategoryOne c,CategorySecond cs where p.csid=cs.csid and cs.csid=c.cid and c.cid=?";
		List<Product> list=getSession().createQuery(hql).setInteger(0, cid).setFirstResult(begin).setMaxResults(limit).list();
		return list;
	}
	public Product findProductByPid(Integer pid) {
		// TODO Auto-generated method stub
		return (Product) getSession().get(Product.class, pid);
	}
}
