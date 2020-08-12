<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>注册页面</title>
	<style>
		div {
			width: 300px;
			height: 200px;
			margin-top: 100px;
			margin-left: 40%;
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
	<form action="${pageContext.request.contextPath }/UserRegisterServlet" method="post">
	<div>
		<h1>注册界面</h1>
		账号：<input type="text" name="username" id=""><br>
		密码：<input type="text" name="password" id=""><br>
		年龄：<input type="text" name="age" id=""><br>
		电话：<input type="text" name="tell" id=""><br>
		<input type="submit" value="注册" class="aa">
	</div>
	</form>
</body>
</html>