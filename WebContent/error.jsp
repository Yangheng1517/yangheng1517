<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
	<div style="text-align: left; width: 100%">
		<a href="index.html">返回首页</a>
	</div>
	<div style="text-align: center; width: 100%">
		<h1>欢迎您来到猜数字游戏</h1>
		<form action="guessNumber.do" method="get">
			<label></label><input type="text" id="arg1" name="arg1" class="textClass" /> <input
				type="submit" value="猜一下" id="su" class="submitClass">
		</form>
	</div>
</body>
</html>