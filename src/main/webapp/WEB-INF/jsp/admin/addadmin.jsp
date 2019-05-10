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
            <span>管理员管理页面 >> 管理员添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="/adminuser/addadminuser" method="post">
                <div>
                    <label for="adminname">管理员名字：</label>
                    <input type="text" name="adminname" id="adminname"/>
                    <span >*请输入用户名称</span>
                </div>
                <div>
                    <label for="adminpassword">管理员密码：</label>
                    <input type="text" name="adminpassword" id="adminpassword"/>
                    <span>*长度必须大于6位小于20位</span>

                </div>
                <div>
                    <label >管理员性别：</label>

                    <select name="sex">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                 </div>
                <div>
                    <label for="adminage">年龄：</label>
                    <input type="text" name="adminage" id="adminage"/>
                </div>
               
                <div>
                    <label for="adminemail">管理员邮箱：</label>
                    <input type="text" name="adminemail" id="adminemail"/>
                </div>
                <div>
                    <label for="adminphone">管理员电话：</label>
                    <input type="text" name="adminphone" id="adminphone"/>
                </div>
                <div>
                    <label for="adminAddress">管理员地址：</label>
                    <input type="text" name="adminAddress" id="adminAddress"/>
                </div>
                
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.html">返回</a>-->
                    <input type="submit" value="保存" />
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