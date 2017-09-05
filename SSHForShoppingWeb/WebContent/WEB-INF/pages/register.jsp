<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>叶心注册</title>
<link rel="stylesheet" type="text/css" href="commonBody.css">
</head>
<body>
<%@include file="menue.jsp" %>
<br/>
<br/>
<br/>
<hr/>
<div style="margin-left:200px;margin-top:70px;">
<s:form action="UserExtraAction-regist.action" method="get">
<s:token></s:token>
<table style="border-right-style:double;">
<tr><td><font color="red">*</font>用户名:</td><td><input style="width:200px;height:30px" type="text" id="username" name="username" onblur="checkUserName()"/></td><td><span id="userInf"></span></td></tr>
<tr><td><font color="red">*</font>密&nbsp&nbsp&nbsp码:</td><td><input style="width:200px;height:30px" type="password" id="password" name="password"/></td><td></td></tr>
<tr><td><font color="red">*</font>确认密码:</td><td><input style="width:200px;height:30px" type="password" id="password1" name="password1"/></td><td></td></tr>
<tr><td>&nbsp姓   名:</td><td><input style="width:200px;height:30px" type="text" id="name" name="name"/></td><td><span><s:fielderror fieldName="name"></s:fielderror></span></td></tr>
<tr><td><font color="red">*</font>email:</td><td><input style="width:200px;height:30px" type="text" name="email"/></td><td><span><s:fielderror fieldName="email"></s:fielderror></span></td></tr>
<tr><td>&nbsp性   别:</td><td>男<input type="radio" name="sex" checked="checked" value="male"/>&nbsp&nbsp&nbsp&nbsp女<input type="radio" name="sex" value="female"/></td><td></td></tr>
<tr><td>&nbsp电   话:</td><td><input style="width:200px;height:30px" type="text" name="phone"/></td><td><span><s:fielderror fieldName="phone"></s:fielderror></span></td></tr>
<tr><td>&nbsp地   址:</td><td><input  style="width:200px;height:30px" type="text" name="addr"/></td><td><span><s:fielderror fieldName="addr"></s:fielderror></span></td></tr>
<tr><td>验证吗:</td><td><input style="width:200px;height:30px" type="text" name="validateCode" id="validateCode" onblur="checkValidateCode()"/></td><td><span><img id="imgCode" width="100px" height="32px" src="ValidateCodeAction.action" onclick="changeImg()"/></span></td></tr>
<tr><td></td><td><span id="validateCodeInf"></span></td></tr>
<tr><td></td><td><input id="sub" style="width:195px;height:28px;background-color: red;border:none;color: white;font-size: 20px;" type="submit" onclick="return validateacct()" name="register" value="立 即 注 册" onmouseover="changeMouse()" onmouseout="mouseResum()"/></td><td></td></tr>
</table>
</s:form>
</div>
<%@include file="buttonMenue.jsp" %>
<script type="text/javascript" language="javascript">
function $(id)
	{
		return document.getElementById(id);
	}
	function validateacct()
	{
		var name=$("username").value;
	     	if(name=="")
			{
			alert("用户名不可为空");
			return false;
			}
		else if(name.length>6){
				alert("用户名大于6位");
				return false;
			}
		else{
			var pwd=$("password").value;
			if(pwd.length<6)
				{
				alert("密码小于6位");
				return false;
				}
			else{
				var pwdsure=$("password1").value;
				if(pwdsure!=pwd)
					{
					alert("两次输入的密码不一样");
					return false;
					
					}
			}
		}
			if($("validateCodeInf").innerText!="验证码正确!GOOD BOY")
			{
			    return false;
			}
			if($("userInf").innerText!="用户名可用!GOOD BOY")
			{
				return false;
			}
	     	//window.alert("++++++++");
	     	return true;
		}
	
	
	//换验证吗
	function changeImg()
	{
		var img=$("imgCode");
		img.src="ValidateCodeAction.action?currentTime="+new Date().getTime();
	}
</script>
<script type="text/javascript">function getXmlGttpObject()
{
	//ajax校验用户名是否可用
	function $(id)
	{
		return document.getElementById(id);
	}
	var xmlHttpRequest;
	if(window.ActiveXObject)
		{
		xmlHttpRequest=new ActiveXObject("Microsoft.XMLHTTP");
		}else{
			xmlHttpRequest=new XMLHttpRequest();
		}
	return xmlHttpRequest;
	}
function validateSubmit()
{
	if(myXmlHttpRequest.readyState==4)
		if(myXmlHttpRequest.status==200)
			$("userInf").innerHTML=myXmlHttpRequest.responseText;
	}
var myXmlHttpRequest;
function checkValidateCode()
{
	if($("validateCode").value=="")
		{
		$("validateCode").value=="";
		return;
		}
	myXmlHttpRequest=getXmlGttpObject();
	if(myXmlHttpRequest)
		{
		var url="UserAction-checkValidateCode.action?validateCode="+$("validateCode").value+"&cunrrentTime="+new Date().getTime();
		myXmlHttpRequest.open("get", url, true);
		myXmlHttpRequest.onreadystatechange=getValidateCodeInf;
		myXmlHttpRequest.send(null);
		}
	}
function getValidateCodeInf()
{
	if(myXmlHttpRequest.readyState==4)
		if(myXmlHttpRequest.status==200)
			$("validateCodeInf").innerHTML="";
	$("validateCodeInf").innerHTML=myXmlHttpRequest.responseText;
	//alert(myXmlHttpRequest.responseText);
}
function checkUserName()
{
	if($("username").value=="")
		{
		$("username").value="";
		return;
		}
	myXmlHttpRequest=getXmlGttpObject();
	if(myXmlHttpRequest){
		var url="UserAction-findById.action"+"?currentTime="+new Date().getTime()+"&username="+$("username").value;
		myXmlHttpRequest.open("get",url,true);
		myXmlHttpRequest.onreadystatechange=validateSubmit;
		myXmlHttpRequest.send(null);
	}else{
		window.alert("faile");
	}
	}</script>
<script type="text/javascript">
function changeMouse()
{
	document.getElementById("sub").style.cursor="pointer";
	document.getElementById("sub").style.width="200px";
	document.getElementById("sub").style.height="30px";
	//alert(changeMouse);
	}
	function mouseResum()
	{
		document.getElementById("sub").style.cursor="default";
		document.getElementById("sub").style.height="195px";
		document.getElementById("sub").style.height="28px";
	}
</script>
</body>
</html>