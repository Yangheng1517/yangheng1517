<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guess Number</title>
<script>
	
</script>
<style>
.submitClass {
	cursor: pointer;
	width: 102px;
	height: 38px;
	line-height: 38px;
	padding: 0;
	border: 0;
	background: none;
	background-color: #38f;
	font-size: 16px;
	color: white;
	box-shadow: none;
	font-weight: normal
}

.textClass {
	cursor: pointer;
	width: 204px;
	height: 38px;
	line-height: 38px;
	background: none;
	font-size: 16px;
	font-weight: normal
}
</style>
</head>
<body>
	<div style="text-align: left; width: 100%">
		<a href="index.jsp">返回首页</a>
	</div>
	<div style="text-align: center; width: 100%">
		<h1>欢迎您来到猜数字游戏</h1>
		<div style="padding-left:38%;padding-bottom:15px;color:red;font-weight: bold;text-align:left">
			<c:out value="${message}" default="阁下请出招~"></c:out></div>
		<div style="padding-left:38%;padding-bottom:15px;font-weight: normal;text-align:left">
			提示:您上次猜的是:<c:out value="${data}" default="您还没开始呢~"></c:out></div>			
			
		<form action="guessNumber.do" method="get">
			<label></label><input type="text" id="arg1" name="arg1"
				class="textClass" /> <input type="submit" value="猜一下" id="su"
				class="submitClass">
		</form>
	</div>

</body>
</html>