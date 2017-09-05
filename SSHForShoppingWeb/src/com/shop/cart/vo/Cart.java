package com.shop.cart.vo;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
public class Cart {
	Map<Integer,ProductItem> itemMap=new LinkedHashMap<Integer,ProductItem>();
	double total;
	public Collection<ProductItem> getItemList() {
		return itemMap.values();
	}
	public double getTotal() {
		return total;
	}
	public void addItem(ProductItem productItem)
	{
		int pid=productItem.getProduct().getPid();
		if(itemMap.containsKey(pid))
		{
			ProductItem p=itemMap.get(pid);
			p.setItemNum(p.getItemNum()+productItem.getItemNum());
		}else{
			itemMap.put(pid, productItem);
		}
		total+=productItem.getItemSumPrice();
	}
	public void removeItem(int pid)
	{
		ProductItem productItem=itemMap.remove(pid);
		total-=productItem.getItemSumPrice();
	}
	public void clearCart()
	{
		total=0;
		itemMap.clear();
		System.out.println("size="+itemMap.size());
	}
}
