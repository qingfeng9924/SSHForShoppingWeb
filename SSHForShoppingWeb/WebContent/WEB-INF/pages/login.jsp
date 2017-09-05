<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="commonBody.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆叶心</title>
</head>
<body>
<%@ include file="menue.jsp" %>
<s:div style="margin-left:250px;margin-top:150px;">
<s:form action="UserAction-checkUser.action" method="post" theme="simple">
<table>
<tr><td><s:textfield  label="账户" name="username"></s:textfield></td><td><span style="color:red;"><s:fielderror name="error"></s:fielderror></span></td></tr>
<tr><td><s:password  label="密码" name="password" id="upwd"></s:password><td></td></tr>
<tr><td></td><td><s:submit name="login" value="登陆"></s:submit></td></tr>
</table>
</s:form>
</s:div>
</body>
</html>