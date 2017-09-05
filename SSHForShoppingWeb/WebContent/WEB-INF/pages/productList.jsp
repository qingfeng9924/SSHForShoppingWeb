<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>叶心商城</title>
<link href="common.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="menue.jsp" %>
<script type="text/javascript">
</script>
<div class="category">
<div class="divcategory">
<dl>
<s:iterator value="#session.categoryOneList" var="c">
<dt><s:property value="#c.cname"/></dt>
<s:iterator var="cs" value="#c.categorySeconds">
<dd class="ddstyle">
<a class="a1" href="#####"><s:property value="#cs.csname"/></a>
</dd>
</s:iterator>
</s:iterator>
</dl>
</div>
<div class="divcategoryP">
<s:iterator var="p" value="pageBean.pList">
<div class="divproduct">
<div class="divpimg"><img width="100%" height="100%" src="<s:property value='#p.image'/>"/>
</div>
<div class="divpsimg">
<img width="100%" height="100%" src="<s:property value='#p.image'/>"/>
</div>
<div class="divdf"><font style="color:white;">包邮</font></div>
<div><a class="a1" target="_blank" href="product-findDeatil.action?pid=<s:property value='#p.pid'/>"><s:property value="#p.pname"/></a><div>
<div><s:property value="#p.pdesc"/></div>
<font style="color: #FF4400;font-family: sans-serif;font-size: x-large;">￥<s:property value="#p.shop_price"/></font><font style="color: gray;font-family: sans-serif;font-size:xx-small;text-decoration: line-through;">原价:￥<s:property value="#p.market_price"/></font>
</div>
<hr>
<span class="monthsalespan"><strong>月销：<s:property value="#p.monthsale"/></strong></span>
<s:if test="#p.is_hot==1">
<span class="hotspan">热卖</span>
</s:if>
<s:else>
<span class="nothotspan">热卖</span>
</s:else>
</div>
</div>
</s:iterator>
</div>
<div class="pagedir">
<s:if test="pageBean.page>1">
<span class="pagespan"><a class="apage" href="product-findByCid.action?page=<s:property value='pageBean.page-1'/>&cid=<s:property value="cid"/>">上页 </a></span>
</s:if>
<s:if test="pageBean.page<pageBean.pageSize">
<span class="pagespan"><a class="apage" href="product-findByCid.action?page=<s:property value='pageBean.page+1'/>&cid=<s:property value="cid"/>">下页</a></span>
</s:if>
<span class="pagespan"><font style="color: #FF4400;font-size:x-large;">第<s:property value="pageBean.page"/>/<s:property value="pageBean.pageSize"/></font></span>
</div>
</div>
<%@include file="buttonMenue.jsp" %>
</body>
</html>