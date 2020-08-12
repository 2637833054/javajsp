<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>音乐播放</title>
	<style>
		* {
			margin: 0;
			padding: 0;
		}
		body {
			background-color: #4e454a;
		} 
		h1 {
			padding-left: 42%;
			background-color: #4e454a;
		}
		.header {
			height: 70px;
			background-color: pink;
		}
		.header > span {
			width: 150px;
			padding-top: 10px;
			padding-left: 160px;
			display: inline-block;  /*设置模式转化给span设置上边距*/
		}
		span:hover {
		 	color: red;
		}
	
		.aa {
			width: 200px;
			height: 25px;
		}

		img {
			width: 40%;
			height: 400px;
			padding: 20px 20px;
			display: inline-block;
		}
		
		.ab > img {
			display: inline-block;
			float: left;
		}
		.rel {
			width: 100%;
			height: 300px;
			position: relative;
		}
		.abs {
			position: absolute;
		}
		.dis {
			display: inline-block;
		}
		.dis > img {
			padding-top: 460px;
			padding-left: 50px;
			height: 200px;
			width: 200px;
			display: inline-block;
		}
		.disa {
			display: inline-block;
		}
		.disa > img {
			padding-top: 760px;
			padding-left: 150px;
			height: 200px;
			width: 200px;
			display: inline-block;
		}
		.disa > span {
			width: 200px;
			padding-left: 150px;
			display: block;
		}
		div > span {
			width: 200px;
			padding-left: 50px;
			display: block;
		}
		.ac {
			margin-left: 270px;
			display: inline-block;
		}
		h2 {
			padding-left: 52%;
		}
		.cc {
			margin-top: 30px;
			width: 40%;
			height: 200px;
		}
	</style>
</head>
<body>
	<h1>网易云音乐</h1>
	<div class="ab">
		<img src="<%=request.getContextPath()%>/img/49.png" alt="">
		<img src="<%=request.getContextPath()%>/img/32.png" alt="" class="cc">
	</div>
	<hr />
	<div class="rel">
		<div class="abs">
			<div class="dis"><h2>购买专辑</h2></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/12.png" alt=""><span>所有的道别里，我最喜欢：明天见</span></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/12.png" alt=""><span>所有的道别里，我最喜欢：明天见</span></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/12.png" alt=""><span>所有的道别里，我最喜欢：明天见</span></div>
			<div class="dis"><img src="<%=request.getContextPath()%>/img/12.png" alt=""><span>所有的道别里，我最喜欢：明天见</span></div>
		</div>
		<div class="rel">
		<div class="abs">
			<div class="disa"><img src="<%=request.getContextPath()%>/img/501.png" alt=""><span>五味钟意甜，我只钟意你</span></div>
			<div class="disa"><img src="<%=request.getContextPath()%>/img/501.png" alt=""><span>五味钟意甜，我只钟意你</span></div>
			<div class="disa"><img src="<%=request.getContextPath()%>/img/501.png" alt=""><span>五味钟意甜，我只钟意你</span></div>
			
		</div>
</body>
</html>