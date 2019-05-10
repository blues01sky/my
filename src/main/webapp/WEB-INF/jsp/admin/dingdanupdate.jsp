<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<base href="<%=basePath%>">
			<title>家具商城后台管理</title>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  		 	<link rel="stylesheet" href="css/public.css"/>
  			<link rel="stylesheet" href="css/style2.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>家具商城后台管理</h1>

        <div class="publicHeaderR">
        <p><span>欢迎您</span><span style="color: #fff21b">${adminname}</span> 访问家具商城！</p>
        <a href="/adminuser/logout">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="hours"></span>
    
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="/adminorder/index">订单管理</a></li>
                <li><a href="/goodsadmin/index">商品管理</a></li>
                <li><a href="/useradmin/index">用户管理</a></li>
                <li><a href="/adminuser/admin">管理员管理</a></li>
                <li><a href="/adminuser/logout">退出系统</a></li>
            </ul>
        </nav>
    </div>
    
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>订单管理页面 >> 修改订单状态</span>
        </div>
        <div class="providerAdd">
            <form action="/adminorder/xiugai" method="post">
            <input name="xiugaiid" value="${xiugaiid1 }" hidden/>
                <div class="providerAddBtn" >
                   	<select name="zhuangtai">
                   		<option value="" selected="selected">请选择</option>
                   		<option value="已发货">已发货</option>
                   		<option value="已完成">已完成</option>
                   		<option value="运输中">运输中</option>
                   	</select>
                </div>
                <div class="providerAddBtn">
                    <input type="submit" value="保存" onclick="history.back(-1)"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>
<script src="js/time.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>