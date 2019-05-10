<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <base href="<%=basePath%>">
   	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<title>Contact Us</title>

	<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="images//favicon.ico" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" href="images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" href="images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="images//apple-touch-icon-57x57-precomposed.png">	
	
	<!-- Library - Google Font Familys -->
	<link href="https://fonts.googleapis.com/css?family=Arizonia|Crimson+Text:400,400i,600,600i,700,700i|Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="revolution/css/settings.css">
 
	<!-- RS5.0 Layers and Navigation Styles -->
	<link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
	<link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">
	
	<!-- Library - Bootstrap v3.3.5 -->
    <link rel="stylesheet" type="text/css" href="libraries/lib.css">
	
	<!-- Custom - Common CSS -->
	<link rel="stylesheet" type="text/css" href="css/plugins.css">			
	<link rel="stylesheet" type="text/css" href="css/navigation-menu.css">
	<link rel="stylesheet" type="text/css" href="css/shortcode.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	
	<!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->
	
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
	<div class="main-container">
		<!-- Loader -->
		<div id="site-loader" class="load-complete">
			<div class="loader">
				<div class="loader-inner ball-clip-rotate">
					<div></div>
				</div>
			</div>
		</div><!-- Loader /- -->	
		
	<header class="header-section container-fluid no-padding">
		<!-- Top Header -->
		<div class="top-header container-fluid no-padding">
			<!-- Container -->
			<div class="container">
				<div class="col-md-7 col-sm-7 col-xs-7 dropdown-bar">
					<h5>欢迎您${username }来到小二的商店</h5>
					<div class="language-dropdown dropdown">
						<button aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" title="languages" id="language" type="button" class="btn dropdown-toggle">中文<span class="caret"></span></button>
						<ul class="dropdown-menu no-padding">
							<li><a title="Danish" href="#">English</a></li>
							<li><a title="German" href="#">German</a></li>
							<li><a title="French" href="#">French</a></li>
						</ul>
					</div>
					<div class="language-dropdown dropdown">
						<button aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" title="currency" id="currency" type="button" class="btn dropdown-toggle">人民币<span class="caret"></span></button>
						<ul class="dropdown-menu no-padding">
							<li><a title="Danish" href="#">美元</a></li>
							<li><a title="German" href="#">欧元</a></li>
							<li><a title="French" href="#">里亚尔</a></li>
						</ul>
					</div>
				</div>
				<!-- Social -->
				<div class="col-md-5 col-sm-5 col-xs-5 header-social">
					<ul>
						<li><a href="#" title="腾讯微博"><i class="fa fa-tencent-weibo"></i></a></li>
						<li><a href="http://www.qq.com" title="qq"><i class="fa fa-qq"></i></a></li>
						<li><a href="#" title="微信"><i class="fa fa-wechat"></i></a></li>
						<li><a href="#" title="微博"><i class="fa fa-weibo"></i></a></li>
						<li><a href="#" title="v"><i class="fa fa-vimeo"></i></a></li>
						<li><a href="#" title="分享"><i class="fa fa-bicycle"></i></a></li>
						<c:choose>
							<c:when test="${empty username}">
								<li><a href="user/regist" title="注册">注册</a></li>
								<li><a href="user/login" title="登录">登录</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="user/logout" title="退出" >退出</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div><!-- Social /- -->
			</div><!-- Container /- -->
		</div><!-- Top Header /- -->

		<!-- Menu Block -->
		<div class="container-fluid no-padding menu-block">
			<!-- Container -->
			<div class="container">
				<!-- nav -->
				<nav class="navbar navbar-default ow-navigation">
					<div class="navbar-header">
						<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="index.jsp" class="navbar-brand">欢迎 <span>访问</span></a>
					</div>
					<!-- Menu Icon -->
					<div class="menu-icon">
						<div class="search">
							<a href="#" id="search" title="Search"><i class="icon icon-Search"></i></a>
						</div>
						<ul class="cart">
							<li>
								<a aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" id="cart" class="btn dropdown-toggle" title="添加到购物车" href="#"><i class="icon icon-ShoppingCart"></i></a>
								<ul class="dropdown-menu no-padding">
									<li class="mini_cart_item">
										<a title="移除这个商品" class="remove" href="#">&#215;</a>
										<a href="#" class="shop-thumbnail">
											<img alt="poster_2_up" class="attachment-shop_thumbnail" src="images/product-wishlist-1.jpg">商品
										</a>
										<span class="quantity">数量 &#215; <span class="amount">价格</span></span>
									</li>
									<li class="button">
										<a href="/cart1/cart" title="查看详情">查看详情</a>
										<a href="#" title="结账">结账</a>
									</li>
								</ul>
							</li>
							<li><a href="#" title="我喜欢"><i class="icon icon-Heart"></i></a></li>
							<li><a href="/message/myindex" title="用户"><i class="icon icon-User"></i></a></li>
						</ul>
					</div><!-- Menu Icon /- -->
					<div class="navbar-collapse collapse navbar-right" id="navbar">
						<ul class="nav navbar-nav">
							<li><a href="/index">主页</a></li>
								<li><a href="/cart1/cart">购物车</a></li>
								<li><a href="/goods">商品</a></li>
								<li><a href="/about">关于我们</a></li>
								<li><a href="/connect">联系我们</a></li>
						</ul>
					</div><!--/.nav-collapse -->
				</nav><!-- nav /- -->
				<!-- Search Box -->
				<div class="search-box">
					<span><i class="icon_close"></i></span>
					<form><input type="text" class="form-control" placeholder="输入想要搜索的商品..." onchange="" /></form>
				</div><!-- Search Box /- -->
			</div><!-- Container /- -->
		</div><!-- Menu Block /- -->
	</header>
		
		<main>
			<!-- Page Banner -->
			<div class="page-banner container-fluid no-padding">
				<!-- Container -->
				<div class="container">
					<div class="banner-content">
						<h3>联系我们</h3>
						<p>我们的愿望就是成为地球上唯一以客户为中心的公司</p>
					</div>
					<ol class="breadcrumb">
						<li><a href="index.jsp" title="主页">主页</a></li>							
						<li class="active">联系我们</li>
					</ol>
				</div><!-- Container /- -->
			</div><!-- Page Banner /- -->
			
			<!-- Contact Us -->
			<div class="contact-us container-fluid no-padding">
				<div class="col-md-6 col-sm-6 col-xs-12 no-padding">
					<div class="contact-detail">
						<!-- Section Header -->
						<div class="section-header">
							<h3>和我们联系</h3>
							<p>您可以在任何时候联系我们</p>
						</div><!-- Section Header /- -->
						<div class="contact-info">
							<i class="icon icon-Pointer"></i>
							<p>河南省郑州市</p> 
							<p>郑州航空工业管理学院。</p>
						</div>
						<div class="contact-info">
							<i class="icon icon-Phone2"></i>
							<a href="tel:(11)1234567890" title="电话" class="phone">123456789</a>
						</div>
						<div class="contact-info">
							<i class="icon icon-Phone2"></i>
							<a href="mailto:info@maxshop.com" title="邮箱">www.baidu.com</a>
						</div>
						<ul class="social">
							<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#" title="Tumblr"><i class="fa fa-tumblr"></i></a></li>
							<li><a href="#" title="Vimeo"><i class="fa fa-vimeo"></i></a></li>
							<li><a href="#" title="Pinterest"><i class="fa fa-pinterest-p"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12 no-padding">
					<div class="form-detail">
						<!-- Section Header -->
						<div class="section-header">
							<h3>给我们的建议</h3>
							<p>您可以给我们提任何建议和咨询任何问题</p>
						</div><!-- Section Header /- -->
						<form action="/connectus" method="post">
							<div class="col-md-6 col-sm-6 col-xs-12 form-group">
								<input type="text" name="contactname" class="form-control" id="input_name" placeholder="您的名字" required/>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12 form-group">
								<input type="text" name="contactemail" class="form-control" id="input_email" placeholder="邮箱地址" required/>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12 form-group">
								<input type="text" required="" placeholder="想了解问题的类型" id="input_subject" class="form-control" name="contactsubject">
							</div>
							<div class="form-group col-md-12 col-sm-12 col-xs-12">
								<textarea placeholder="输入您的具体详情" id="textarea_message" name="contactmessage" rows="5" class="form-control"></textarea>
							</div>
							<div class="form-group col-md-12 col-sm-12 col-xs-12">
								<button title="Submit" type="submit" id="btn_submit">提交信息</button>
							</div>
							<div id="alert-msg" class="alert-msg"></div>
						</form>
					</div>
				</div>
				<!-- Map Section -->
				<div class="map container-fluid no-padding">
					<div class="map-canvas" id="map-canvas-contact" data-lat="-32.559356" data-lng="149.564237" data-string="Max Shop, 65 Huge Street Melbourne,  2850 Australia." data-zoom="12"></div>
					<a href="#">小二的<span>店</span></a>
				</div><!--  Map Section /- -->
			</div><!-- Contact Us /- -->
			
		</main>
		
		<!-- Footer Main 1 -->
		<footer id="footer-main" class="footer-main footer-main-1 services-section container-fluid">
			<!-- Container -->
			<div class="container">
				<div class="services-item">
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="srv-box">
							<i class="icon icon-Truck"></i><h5>包邮</h5><i class="icon icon-Dollar"></i>
							<span class="icon_close"></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="srv-box">
							<i class="icon icon-Goto"></i><h5>售后</h5><i class="icon icon-Dollars"></i>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="srv-box">
							<i class="icon icon-Headset"></i><h5>24小时服务</h5><i class="icon icon-Timer"></i>
						</div>
					</div>
				</div>
				<!-- Widget About -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_about">
						<a href="index.jsp" title="Max Shop">我的家居<span>商城</span></a>
					<p>皇后大道西又皇后大道东，皇后大道东转皇后大道中，皇后大道东上为何无皇宫，皇后大道中人民如潮涌</p>
					<ul class="social">
						<li><a href="#" title="qq"><i class="fa fa-qq"></i></a></li>
							<li><a href="#" title="微信"><i class="fa fa-wechat"></i></a></li>
							<li><a href="#" title="腾讯微博"><i class="fa fa-tencent-weibo"></i></a></li>
							<li><a href="#" title="新浪微博"><i class="fa fa-weibo"></i></a></li>
							<li><a href="#" title="分享"><i class="fa fa-bicycle"></i></a></li>
					</ul>
				</aside><!-- Widget About /- -->
				<!-- Widget Links -->
				<aside class="col-md-2 col-sm-6 col-xs-6 ftr-widget widget_links">
					<h3 class="widget-title">最新流行风</h3>
					<ul>
						<li><a href="#product-section" title="最新流行风">最新流行风</a></li>
							<li><a href="#selling" title="畅销款">畅销款</a></li>
							<li><a href="about.jsp" title="关于我们">关于我们</a></li>
							<li><a href="#dealing" title="今日爆款">今日爆款</a></li>
							<li><a href="#collection" title="产品收藏">产品收藏</a></li>
							<li><a href="contact-us.jsp" title="联系我们">联系我们</a></li>
						</ul>
					</aside><!-- Widget Links /- -->
					<!-- Widget Account -->
					<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_links widget_account">
						<h3 class="widget-title">我的账户</h3>
						<ul>
							<li><a href="#" title="我的订单">我的订单</a></li>
							<li><a href="#" title="我的信用">我的信用</a></li>
							<li><a href="#" title="我的地址">我的地址</a></li>
							<li><a href="#" title="我的个人资料">我的个人资料</a></li>
							<li><a href="#" title="我的账户">我的账户</a></li>
						</ul>
				</aside><!-- Widget Account /- -->
				<!-- Widget Gallery -->
				<aside class="col-md-4 col-sm-6 col-xs-6 ftr-widget widget_gallery">
					<h3 class="widget-title">collections</h3>
					<ul>
						<li><a href="#" title=""><img src="images/ftr-latestpost-1.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-2.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-3.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-4.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-5.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-6.jpg" alt="ftr-latestpost"></a></li>
					</ul>
				</aside><!-- Widget Gallery -->
				<div class="copyright-section">
					<div class="coyright-content">
						<p>Copyright &copy; 版权(2007)公司名称保留所有权利。<a href="http://www.baidu.com/" target="_blank" title="百度">百度</a>----<a href="http://www.qq.com/" title="腾讯" target="_blank">腾讯</a></p>
					</div>	
					<ul>
						<li><a href="#" title="快递信息">快递信息</a></li>
						<li><a href="#" title="隐私政策">隐私政策</a></li>
						<li><a href="#" title="条款和条件">条款和条件</a></li>
					</ul>
				</div>
			</div><!-- Container /- -->
		</footer><!-- Footer Main 1 -->

	</div>
	
	<!-- JQuery v1.12.4 -->
	<script src="js/jquery.min.js"></script>

	<!-- Library - Js -->
	<script src="libraries/lib.js"></script>
	
	<script src="libraries/jquery.countdown.min.js"></script>
	
	<!-- RS5.0 Core JS Files -->
	<script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
	<script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	
	<!-- Library - Google Map API -->
	<!---<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDW40y4kdsjsz714OVTvrw7woVCpD8EbLE"></script>--->

	<!-- Library - Theme JS -->
	<script src="js/functions.js"></script>
	
</body>
</html>
	

