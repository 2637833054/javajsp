<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<style>
		* {
			margin: 0;
			padding: 0;
		}
		h1 {
			margin-top: 20px;
			margin-left: 35%;
			/*margin-bottom: 100px;*/
			font:normal normal 60px "微软雅黑";
		}
		.abody {
			text-decoration: none;
			color: white;
			background-color: black;
			font:normal normal 60px "微软雅黑";
			margin-left: 40%;
			margin-bottom: 20px;
			width: 300px;
			height: 120px;
			text-align: center;
			line-height: -50px;
			display: block;
		}
		.abody:hover {
			background-color: white;
			color: black;
		}
		
		div {
			margin-left: 70%;
		}
	</style>
	
	<script>
		onload = function() {
			var hh = document.getElementById('head');
			hh.onclick = function() {
				do{
					var i=prompt('你刚才是不是点我了？');
				}while(i!=='是');
				do{
					var i=prompt('点我是不是喜欢我？');
				}while(i!=='是');
				alert('我也喜欢你');
		}
		}
	</script>
</head>
<body>
	<h1 id="head">欢迎来到我的网页</h1>
	
	<a href="shopping.jsp" class="abody">购物</a>
	<a href="youxi.jsp" class="abody">游戏</a>
	<a href="music.jsp" class="abody">音乐</a>
</body> 
</html>