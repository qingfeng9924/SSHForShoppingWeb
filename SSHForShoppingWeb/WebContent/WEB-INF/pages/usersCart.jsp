<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<link rel="stylesheet" href="cart.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
</head>
<body>
<%@include file="menue.jsp" %><a></a>
<font style="font-size: xx-large;" color="gray">订单信息</font>
<div>
<table style="width:100%;background-color: #F2F7FF;border:1px;">
<tr class="tr1"><td>商品</td><td>商品名称</td><td>单价</td><td>数量</td><td>总计</td><td>操作</td></tr>
<s:iterator var="i" value="#session.cart.itemList">
<tr>
<td style="border:2px solid white;"><img style="width:50px;height:50px" src="<s:property value='#i.product.image'/>"/></td>
<td style="border:2px solid white;"><s:property value="#i.product.pname"/></td>
<td style="border:2px solid white;font-size: large;">￥<s:property value="#i.product.shop_price"/></td>
<td style="border:2px solid white;"><s:property value="#i.itemNum"/></td>
<td style="border:2px solid white;"><s:property value="#i.itemSumPrice"/></td>
<td style="border:2px solid white;"><a class="a1" href="cart-removeCart.action?pid=<s:property value='#i.product.pid'/>">删除</a></td>
</tr>
</s:iterator>
<tr><td></td><td ></td><td></td><td ><font style="color:#FF4400">确认登陆后是否有优惠</font></td><td>赠送积分:<font style="color:#FF4400"><s:property value="#session.cart.total"/></font>分</td><td style="color:#FF4400;">全部总计:￥<s:property value="#session.cart.total"/></td>
</tr>
<tr>
<td></td><td>   &nbsp</td><td></td><td></td><td><a style="float:right;" class="a1" href="cart-removeAll.action"><font style="font-size: 10px;">全部清空?</font></a></td><td><a href="#" style="background-color: #FF4400;display: block;width:100px;height:20px;color:white;text-align: center;text-decoration: none;border:1px solid gray;">提交订单</a></td>
</tr>
</table>
</div>
<%@include file="buttonMenue.jsp" %>
</body>
</html>