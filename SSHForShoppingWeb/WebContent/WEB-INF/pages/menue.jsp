<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="menue.css" rel="stylesheet" type="text/css">
<!--<span style="position:absolute;margin-top:20px;width:100%;"><img style="width: 100%;height:100%;" src="images/backgroud_icon.png"/></span>-->
<div style="background-color: #B8CAEE;width: 100%;">
<script type="text/javascript" src="js/common.js" >

</script>
<span style="width:9%;height:30px;"><img style="width:114px;height: 30px;" src="images/yexin.gif"></span>
               <span class="spanMenue">
				<a href='person-yeXinIndex.action' class='a2'>页心首页</a>
				<a href='#' class='a2'>叶心首页</a>
				<s:if test="#session.user==null">
				<a href='#' class='a2'>登录？</a>
				<a href='#' class='a2'>注册</a>
				</s:if>
				<s:else><a href='#' class='a2'>欢迎:<s:property value="#session.user.username"/></a>
				<a href='#' class='a2'>我的资料</a>
				</s:else>
				<a href='#' class='a2'>收藏夹</a>
				<a href='#' class='a2'>叶心服务</a>
				<a href='#' class='a2'>退出登录</a>
				<a href='#' class='a2'>网站导航</a>
				</span>
				<div class="div10"><div class="div1"><a href="person-loginpage.action" class="a3"><img src="images/acct.JPG"/></a></div>
                   <div class="div1" id="spancart"style=""><a href="##" class="a3" onmouseout="changeDefault()" onmouseover="changeCursor()"><img src="images/cart.JPG"/></a></div>
                   </div>
				</div>	
<div style="position: absolute;
	right: 43px;
	margin-top: 238px;
	width:200px;
	height: 200px;
	background-color: gray;
	display: none;" id="divcart"><table>
<s:if test="#session.cart!=null">
<tr>***************</tr>
</s:if>
</table>
</div>
				<!----->