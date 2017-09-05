<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>叶心商城</title>
<link href="detailP.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="menue.jsp"></jsp:include>
<div class="detailP">
<div class="divp"><img style="width: 100%;height: 100%;" src="<s:property value='model.image'/>">
</div>
<span class="spanPname"><font style="font-size:larger; color: balck"><s:property value="model.pname"/></font></span>
<span class="spanPname"><font style="color: gray;font-size:x-small;"><s:property value="model.pdesc"/></font></span>
<span class="spanPname"><font style="color: gray;font-size:x-small;">上架时间:<s:property value="model.pdate"/></font></span>
<div>
<div class="divprice">
<div><font style="color:#666666;text-decoration: line-through;">&nbsp原 价:&nbsp&nbsp&nbsp&nbsp￥<s:property value="model.market_price"/></font>
</div>
<div><font style="color:#FF4400;font-size:x-large;">价 格:&nbsp&nbsp&nbsp&nbsp￥<s:property value="model.market_price"/></font>
</div></div>
<span class="spanPname"><font style="color: gray;font-size:x-small;">月 销:<s:property value="model.monthsale"/></font></span>

<s:form id="productf" action="cartAddItem-addToCart.action">
<s:token></s:token>
<input type="hidden" name="pid" value="<s:property value="model.pid"/>"/>
<div class="reserdiv">
<div class="divinf">配送至:<input type="text" name="place" size="60px"/>
</div>
<div class="divinf">颜色选择:
</div>
<div class="divinf">数 量:<input type="text" name="itemNum" size="1px " value="1"/>件
</div>
<div class="divinf">尺 码:
</div>
<div style="float:right; margin-right: 20px;">
<input style="background-color:#FF4400;width:130px;height:40px;color:white;" type="button" name="bynow" value="加入购物车" onmouseover="changeCursor()" onmouseout="changeDefult()" id="addToCart" onclick="atc()" />
</div>
<div style="float:right; margin-right: 30px;">
<input style="background-color:#FFE4D0;width:130px;height:40px;color:white;" type="button" name="bynow" value="立即购买" onmouseover="changeCursor()" onmouseout="changeDefult()" id="byNow"/>
</div>
</div>
</s:form>
</div>
</div>
<script type="text/javascript">
function $(id)
{
	return document.getElementById(id);
	}
function changeCursor()
{
	$("addToCart").style.cursor="pointer";
	$("byNow").style.cursor="pointer";
	}
function changeDefult()
{
	$("addToCart").style.cursor="defult";
	$("byNow").style.cursor="defult";
	}
function atc()
	{
		$("productf").submit();
	}
</script>
</body>
</html>