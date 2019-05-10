
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
			<title>家具商城管理</title>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  		 	<link rel="stylesheet" href="css/public.css"/>
  			<link rel="stylesheet" href="css/style2.css"/>
</head>
<body class="login_bg">
     <section class="loginBox">
        <header class="loginHeader">
            <h1>家具管理系统</h1>
        </header>
        <section class="loginCont">
                <div class="subBtn">
                    <input onclick="javascript:window.location.href='/index'" type="reset" value="用户" />
                    <input onclick="javascript:window.location.href='/adminlogin'" type="reset" value="管理员"/>
                </div>
        </section>
    </section>
<footer class="footer">
</footer>
<script src="js/time.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>