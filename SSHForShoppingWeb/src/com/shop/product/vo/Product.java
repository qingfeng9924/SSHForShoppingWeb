package com.shop.product.vo;
import java.io.Serializable;
import java.sql.Date;
/*
 *  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
 */
import java.util.List;

import com.shop.categorysecond.vo.CategorySecond;

public class Product implements Serializable{
	/**
	 * 
	 */
	private Integer pid;
	private String pname;
	private double market_price;
	private double shop_price;
	private String image;
    private String pdesc;
    private Integer is_hot;
    private Date pdate;
    private Integer csid;
    private Integer monthsale;
    CategorySecond categorySecond;
    public void setMonthsale(Integer monthsale) {
		this.monthsale = monthsale;
	}
    public Integer getMonthsale() {
		return monthsale;
	}
    public void setMarket_price(double market_price) {
		this.market_price = market_price;
	}
    public double getMarket_price() {
		return market_price;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public double getShop_price() {
		return shop_price;
	}
	public void setShop_price(double shop_price) {
		this.shop_price = shop_price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}
	public CategorySecond getCategorySecond() {
		return categorySecond;
	}
	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", shop_price="
				+ shop_price + ", image=" + image + ", pdesc=" + pdesc
				+ ", is_hot=" + is_hot + ", pdate=" + pdate + ", csid=" + csid
				+ ", categorySecond=" + categorySecond + "]";
	}
    
	
}
