<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type='text/css' rel='stylesheet' href='MainPane.css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>YEXIN</title>
</head>
<body>
<%@include file="menue.jsp" %>

<div class="divCategoryOne"><ul><s:iterator var="c" value="#session.categoryOneList"><li class="li1"><a class="a1" href="product-findByCid.action?page=1&&cid=<s:property value="#c.cid"/>"><s:property value="#c.cname"/></a></li></s:iterator></ul></div>
		<!--小米页面 -->
		<!--<a href='/PageHeart/MainPanel'><img src='images/yexin.gif'/></a><a href='#'><img src='images/Attention.JPG' style='margin-left:300px;'/></a><br/>-->
		<form action='#' method='post'>
		<div class='div2'>"
				<table style='width:200px;height:400px;'>
	    <tr><td  onmouseover='showTable()' onmouseout='hideTable()'><a href='#' id='a3' style='color:white;text-decoration:none'>   手机 </a></td></tr><tr><td><a href='#' style='color:white;text-decoration:none'>   笔记本 平板</a>
				</td></tr><tr><td><a href='#' style='color:white;text-decoration:none'>   电视 盒子</a></td></tr><tr><td><a href='#' style='color:white;text-decoration:none'>   电话卡 移动</a></td></tr>
				<tr><td><a href='#' style='color:white;text-decoration:none'>   移动电源 手环</a></td></tr><tr><td><a href='#' style='color:white;text-decoration:none'>   智能家居 电视</a></td></tr>
		</table></div><table class='table1' onmouseover='showTable()' onmouseout='hideTable()' id='table_phone'><tr><td><a href='#' class='a1'><img src='images/mi5s.JPG'/>   小米5s</a></td><td><a href='#' class='a1'><img src='images/mi5s.JPG'/>   小米5s</a></td></tr><tr><td><a href='#' class='a1'><img src='images/redmi3s.JPG'/>   红米3s</a></td><td><a href='#' class='a1'><img src='images/mi5plus.JPG'/>   小米5splus</a></td></tr><tr><td><a href='#' class='a1'><img src='images/mi5plus.JPG'/>   小米5splus</a></td><td><a href='#' class='a1'><img src='images/mi5plus.JPG'/>   小米5splus</a></td></tr><tr><td><a href='#' class='a1'><img src='images/mi5plus.JPG'/>   小米5splus</a></td><td><a href='#' class='a1'><img src='images/mi5plus.JPG'/>   小米5splus</a></td></tr></table></form>
		<div class='div3'><img width='850px' height='430px' src='images/mainPic_1.JPG' id='mainimg'/></div><br/><br/>
		<!-- 苹果页面-->
		
		<img width='100px' src='images/apple.jpg'><a href='#'><img src='images/Attention.JPG' style='margin-left:300px;'/></a><br/>
		<div class='div4'>
		<div class='div5'><a href='#' class='a4'><img src='images/ip7p.JPG' width='100px'/><br>iphone7plus<br/> ￥已下架</a>
		</div>
		<div class='div5'><a href='#' class='a4'><img src='images/ip7p.JPG' width='100px'/><br>iphone7plus<Br/>￥已下架</a>
		</div>
		<div class='div5'><a href='#' class='a4'><img src='images/ip7p.JPG' width='100px'/><br>iphone7plus<Br/>￥已下架</a>
		</div>
		<div class='div5'><a href='#' class='a4'><img src='images/ip7p.JPG' width='100px'/><br>iphone7plus<Br/>￥已下架</a>
		</div>
		<div class='div5'><a href='#'class='a4'><img src='images/ip6s.JPG'  width='100px'/><br>iphone6splus<Br/>￥已下架</a>
		</div>
		<div class='div5'><a href='#'class='a4'><img src='images/ip6s.JPG'  width='100px'/><br>iphone6splus<Br/>￥已下架</a>
		</div>
		<div class='div5'><a href='#' class='a4'><img src='images/ip6s.JPG'  width='100px'/><br>iphone6splus<Br/>￥已下架</a>
		</div>
		</div>
		<br/><big><big>明星产品</big></big>
		<!--明星产品-->
		<hr/><br/>
		<div class='div6'><table style='width:1100px;height:710px;'><tr><td><a href='#' class='a5'><img src='images/redmi3x.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmtv.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmmax.JPG'width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmpb.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmlp.JPG' width='150px'/></br>点击购买</a></td></tr>
				<tr><td><a href='#' class='a5'><img src='images/redmi3x.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmtv.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmmax.JPG'width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmpb.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmlp.JPG' width='150px'/></br>点击购买</a></td></tr>
				<tr><td><a href='#' class='a5'><img src='images/redmi3x.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmtv.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmmax.JPG'width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmpb.JPG' width='150px'/></br>点击购买</a></td><td><a href='#' class='a5'><img src='images/xmlp.JPG' width='150px'/></br>点击购买</a></td></tr></table></div>
		 <!--只能硬件-->
		<br/><big><big>智能硬件</big></big>
		<hr/><br/>
		<div class='div9'><div class='div7'><a href='#' class='a5'><img src='images/xmjhq.JPG' width='300px' height='680px'/><br/>小米空气净化器</a></div><div class='div8'><table style='width:720;height:350;'><tr><td><a href='#' class='a5'><img src='images/xmly.JPG' width='170px' height='330px'/><br/>小米路由器</a></td><td><a href='#' class='a5'><img src='images/xmtd.JPG' width='170px' height='330px'/><br/>小米台灯</a></td><td><a href='#' class='a5'><img src='images/xmphc.JPG' width='170px' height='330px'/><br/>小米平衡车</a></td><td><a href='#' class='a5'><img src='images/xmmt.JPG' width='170px' height='330px'/><br/>小米米突</a></td></tr></table>
				</div><div class='div8'><table style='width:720;height:350;'><tr><td><a href='#' class='a5'><img src='images/xmly.JPG' width='170px' height='330px'/><br/>小米路由器</a></td><td><a href='#' class='a5'><img src='images/xmtd.JPG' width='170px' height='330px'/><br/>小米台灯</a></td><td><a href='#' class='a5'><img src='images/xmphc.JPG' width='170px' height='330px'/><br/>小米平衡车</a></td><td><a href='#' class='a5'><img src='images/xmmt.JPG' width='170px' height='330px'/><br/>小米米兔</a></td></tr></table></div></div>
		<script language='javascript'>
				var i=0;
			    function $(id){return document.getElementById(id);}
				function changeImg(){i++;if(i>3)i=1;$('mainimg').src='images/mainPic_'+i+'.JPG';}
				function showTable(){$('table_phone').style.display='block';$('a3').style.color='red';}
				function hideTable(){$('table_phone').style.display='none';$('a3').style.color='white';}
				setInterval('changeImg()',3000);
				</script>
		</body>
</html>