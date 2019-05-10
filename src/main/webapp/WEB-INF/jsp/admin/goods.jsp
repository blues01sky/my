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
            <span>商品管理页面</span>
        </div>
        <form action="/goodsadmin/search" method="post">
	        <div class="search">
	            <span>商品名称：</span>
	            <input name="searchgoods" type="text" placeholder="请输入商品的名称"/>
	            <input type="submit" value="查询"/>
	            <a href="/goodsadmin/goodsadd">添加商品</a>
	        </div>
        </form>
        <!--供应商操作表格-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">商品名</th>
                <th width="10%">进价</th>
                <th width="10%">定价</th>
                <th width="10%">优惠价</th>
                <th width="10%">分类</th>
                <th width="30%">图片地址</th>
                <th width="10%">库存量</th>
                <th width="10%">操作</th>
            </tr>
            <c:forEach var="listchanpin" items="${listchanpins }">
            <tr>
                <td>${listchanpin.shangpinming }</td>
                <td>${listchanpin.jinjia }</td>
                <td>${listchanpin.jiage }</td>
                <td>${listchanpin.youhui }</td>
                <td>${listchanpin.fenlei }</td>
                <td>${listchanpin.img }</td>
                <td>${listchanpin.kucunliang }</td>
                <td>
                    <a href="/goodsadmin/updategoods?shangpinming=${listchanpin.shangpinming }"><img src="img/xiugai.png" alt="修改" title="修改"/></a>
                    <a href="/goodsadmin/delgoods?shangpinming=${listchanpin.shangpinming }" class="removeProvider"><img src="img/schu.png" alt="删除" title="删除"/></a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
</section>

<footer class="footer">
</footer>
<script src="js/time.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>