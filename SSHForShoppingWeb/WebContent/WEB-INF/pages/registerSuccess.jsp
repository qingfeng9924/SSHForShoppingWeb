<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功</title>
</head>
<body>
恭喜你，注册成功！！！<span id="span1">5</span>秒后自动跳转
<a href="">点击回转</a>

<script type="text/javascript">
function $(id)
{
	return document.getElementById(id);
}
var time=Integer.parseInt($("span1").value);
function time()
{
	time--;
	}
	setInterval("time()", 1000);
</script>
</body>
</html>