<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>

<script>
	$(document).ready(function(){
		$("button.jia").click(function(){
			var num = "";
		});
		$("button.jian").click(function(){
			alert();
		});
	});
</script>
</head>
<body>
	
		<table>
			<tr>
				<td width="10%">编号</td>
				<td width="25%">商品名</td>
				<td width="25%">用户名</td>
				<td width="20%">数量</td>
				<td width="10%">单价</td>
				<td width="10%">总价</td>
			</tr>
			<c:forEach var="cart" items="${carts}">
				<tr>
					<td>${cart.id}</td>
					<td>${cart.goodsname}</td>
					<td>${cart.username}</td>
					<td><button class="jia">-</button>${cart.goodsnum}<button class="jian">+</button></td>
					<td>${cart.singleprice}</td>
					<td>${cart.sumprice}</td>
				</tr>
			</c:forEach>
		</table>
	
</body>
</html>