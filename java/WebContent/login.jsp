<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登陆页面</title>
	<style>
		div {
			width: 300px;
			height: 200px;
			margin-top: 100px;
			margin-left: 40%;
			padding-top: 60px;
			padding-left: 60px;
			background-color: pink;
		}
		.aa {
			margin-left: 100px;
		}
		h1 {
			margin-left: 20%;
			margin-top: 20px;
		}
	</style>
</head>
<body>
	<form action="${pageContext.request.contextPath }/UserLoginServlet" method="post">
	<div>
		<h1>登陆界面</h1>
		账号：<input type="text" name="username" id=""><br>
		密码：<input type="text" name="password" id=""><br>
		<input type="submit" value="登陆" class="aa">
	</div>
	</form>
</body>
</html>