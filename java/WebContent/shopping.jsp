<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>电子商务</title>
	<base target="_self">
	<style>
		* {
			margin: 0;
			padding: 0;
		}
		h1 {
			padding-top: 20px;
			padding-bottom: 20px;
			margin-left: 42%;
			color: black;
		}
		.header {
			height: 40px;
			background-color: rgb(204,230,219);
		}
		.header > span {
			padding-top: 10px;
			padding-left: 60px;
			padding-right: 65px;
			display: inline-block;  /*设置模式转化给span设置上边距*/
		}
		body {
			background: url("<%=request.getContextPath()%>/img/mmexport1593993066933.jpg");
			background-size: 1800px;
			background-position: 60px -100px;
		}
		span:hover {
		 	color: red;
		}
		.rel {
			width: 100%;
			height: 290px;
			position: relative;
		}
		.abs {
			position: absolute;
		}
		img {
			
			padding-left: 40px;
			height: 200px;
			width: 200px;
			display: inline-block;
		}
		div > span {
			color: black;
			padding-left: 43%;
			display: inline-block;
		}
		.dis {
			display: inline-block;
		}
		.footer {
			padding-top: 10px;
			padding-bottom: 10px;
			height: 40px;
			background-color: black;
		}
		.footer > span {
			color: white;
			padding-left: 80px;
			padding-right: 155px;
			display: inline-block;  /*设置模式转化给span设置上边距*/
		}
		.cc {
			padding-left: 43%;
			height: 30px;
			display: block;
		}
		.cd {
			width: 50px;
		}
		
	</style>
</head>
<body>
	<h1>看了就得买网店</h1>
	
	<div class="rel">
		<div class="abs">
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007082590.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007083320.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007083818.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007085594.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007088875.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
		</div>
	</div>
	
	<div class="rel">
		<div class="abs">
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007056132.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button"	 value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007083320.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007056610.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007081894.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/1594007082590.jpg" alt=""><span>9.8￥</span><div class="cc"><input type="button" value="购买" class="cd"></div></div>
		</div>
	</div>
	<div class="footer">
		<span>购物指南</span>
		<span>配送方式</span>
		<span>支付方式</span>
		<span>售后服务</span>
		<span>特色服务</span>
	</div>	
</body>
</html>