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
                <span>用户管理页面</span>
            </div>
            <form action="/useradmin/search" method="post">
            <div class="search">
                <span>用户名：</span>
                <input type="text" name="searchuser" placeholder="请输入用户名"/>
                <input type="submit" title="submit" value="查询"/>
                <a href="/useradmin/adduser">添加用户</a>
            </div>
            </form>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">名字</th>
                    <th width="15%">密码</th>
                    <th width="15%">电话</th>
                    <th width="20%">地址</th>
                    <th width="20%">创建时间</th>
                    <th width="20%">操作</th>
                </tr>
               <c:forEach var="listmessage" items="${listmessages}">
                <tr>
                    <td>${listmessage.username }</td>
                    <td>${listmessage.password }</td>
                    <td>${listmessage.telphone }</td>
                    <td>${listmessage.address }</td>
                    <td>${listmessage.creatime }</td>
                    <td>
                        <a href="javascript:if(confirm('确实要修改这个用户吗?'))location='/useradmin/updateuser?username=${listmessage.username }'"><img src="img/xiugai.png" alt="修改" title="修改"/></a>
                        <a href="javascript:if(confirm('确实要删除这个用户吗?'))location='/useradmin/deluser?username=${listmessage.username }'" class="removeUser"><img src="img/schu.png" alt="删除" title="删除"/></a>
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