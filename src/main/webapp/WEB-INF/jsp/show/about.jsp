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

	<title>About Us</title>

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
		
		<!-- Header -->
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
						<h3>关于我们</h3>
						<p>我们的愿望就是成为地球上唯一以客户为中心的公司</p>
					</div>
					<ol class="breadcrumb">
						<li><a href="index.jsp" title="主页">主页</a></li>							
						<li class="active">关于我们</li>
					</ol>
				</div><!-- Container /- -->
			</div><!-- Page Banner /- -->
			
			<!-- About Section -->
			<div class="about-section container-fluid no-padding">
				<!-- Container -->
				<div class="container">
					<!-- Section Header -->
					<div class="section-header">
						<h3>关于我们小二的店</h3>
						<p>我们的愿望就是成为地球上唯一以客户为中心的公司</p>
						<img src="images/section-seprator.png" alt="section-seprator" />
					</div><!-- Section Header /- -->
					<div class="col-md-6 col-sm-6 col-xs-6">
						<img src="images/about.jpg" alt="about" />
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						<div class="about-content">
							<h5>当您在<span>小二的店</span>，您可以放心购买的产品质量。</h5>
							<p>你想在哪里可以看到我们的烦恼都是一样的。你想成为每个人都知道你的名字的地方。所以，让我们充分利用这美好的一天。因为我们在一起。，我们要去做。在你的标记上设置并立即行动。</p>
							<p>马金他们的方式是他们知道如何的唯一方式。这只是法律允许的一点点。以我们的方式做吧。 </p>	
							<ul>
								<li>我们只提供品牌产品</li>
								<li>我们只提供最大的优惠</li>
								<li>我们只提供最完善的服务</li>
							</ul>
						</div>
					</div>
				</div><!-- Container /- -->
			</div><!-- About Section /- -->
			
			<!-- Team Section -->
			<div class="team-section container-fluid">
				<!-- Container -->
				<div class="container">
					<!-- Section Header -->
					<div class="section-header">
						<h3>我们优秀的团队</h3>
						<p>我们的愿望就是成为地球上唯一以客户为中心的公司</p>
						<img src="images/section-seprator.png" alt="section-seprator" />
					</div><!-- Section Header /- -->
					<div class="col-md-3 col-sm-4 col-xs-6">
						<div class="team-detail">
							<div class="team-box">
								<img src="images/team-1.jpg" alt="team" />
								<h3>张三</h3>
							</div>
							<div class="team-content">
								<h5>销售员</h5>
								<p>信不信由你，我正在空中行走。在一个翅膀和一个祈祷。</p>
								<ul class="social">
									<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#" title="Tumblr"><i class="fa fa-tumblr"></i></a></li>
									<li><a href="#" title="Vimeo"><i class="fa fa-vimeo"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="col-md-3 col-sm-4 col-xs-6">
						<div class="team-detail">
							<div class="team-box">
								<img src="images/team-2.jpg" alt="team" />
								<h3>张三</h3>
							</div>
							<div class="team-content">
								<h5>销售员</h5>
								<p>信不信由你，我正在空中行走。在一个翅膀和一个祈祷。</p>
								<ul class="social">
									<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#" title="Tumblr"><i class="fa fa-tumblr"></i></a></li>
									<li><a href="#" title="Vimeo"><i class="fa fa-vimeo"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="col-md-3 col-sm-4 col-xs-6">
						<div class="team-detail">
							<div class="team-box">
								<img src="images/team-3.jpg" alt="team" />
								<h3>张三</h3>
							</div>
							<div class="team-content">
								<h5>销售员</h5>
								<p>信不信由你，我正在空中行走。在一个翅膀和一个祈祷。</p>
								<ul class="social">
									<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#" title="Tumblr"><i class="fa fa-tumblr"></i></a></li>
									<li><a href="#" title="Vimeo"><i class="fa fa-vimeo"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="col-md-3 col-sm-4 col-xs-6">
						<div class="team-detail">
							<div class="team-box">
								<img src="images/team-4.jpg" alt="team" />
								<h3>张三</h3>
							</div>
							<div class="team-content">
								<h5>销售员</h5>
								<p>信不信由你，我正在空中行走。在一个翅膀和一个祈祷。</p>
								<ul class="social">
									<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#" title="Tumblr"><i class="fa fa-tumblr"></i></a></li>
									<li><a href="#" title="Vimeo"><i class="fa fa-vimeo"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div><!-- Container /- -->
			</div><!-- Team Section -->
			
			<!-- Testimonial Section -->
			<div class="testimonial-section container-fluid">
				<!-- Container -->
				<div class="container">
					<!-- Section Header -->
					<div class="section-header">
						<h3>客户对我们的高度评价</h3>
						<p>我们的愿望就是成为地球上唯一以客户为中心的公司</p>
						<img src="images/section-seprator.png" alt="section-seprator" />
					</div><!-- Section Header /- -->
					<!-- Main Carousel -->
					<div id="main-carousel1" class="carousel slide carousel-fade" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#main-carousel1" data-slide-to="0" class="active"></li>
							<li data-target="#main-carousel1" data-slide-to="1"></li>
							<li data-target="#main-carousel1" data-slide-to="2"></li>
						</ol>
						<div role="listbox" class="carousel-inner">
							<div class="item active">
								<div class="testimonial-content">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>最后的边疆。这些是星舰企业的航程？只要我们生活在你我这里的宝贝。从那天起，你所见过的所有法律都遇到了麻烦。</p>
									<img src="images/testi.jpg" alt="testi" />
									<span class="star">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o"></i>
									</span>
									<h3>李四</h3>
									<h5>总经理</h5>
								</div>
							</div>
							<div class="item">
								<div class="testimonial-content">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>最后的边疆。这些是星舰企业的航程？只要我们生活在你我这里的宝贝。从那天起，你所见过的所有法律都遇到了麻烦。</p>
									<img src="images/testi.jpg" alt="testi" />
									<span class="star">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o"></i>
									</span>
									<h3>李四</h3>
									<h5>总经理</h5>
								</div>
							</div>
							<div class="item">
								<div class="testimonial-content">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>最后的边疆。这些是星舰企业的航程？只要我们生活在你我这里的宝贝。从那天起，你所见过的所有法律都遇到了麻烦。</p>
									<img src="images/testi.jpg" alt="testi" />
									<span class="star">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o"></i>
									</span>
									<h3>李四</h3>
									<h5>总经理</h5>
								</div>
							</div>
						</div>
					</div><!-- Main Carousel /-  -->
				</div><!-- Container /- -->
			</div><!-- Testimonial Section /- -->
			
			<!-- Clients -->
			<div class="clients container-fluid">
				<!-- Container -->
				<div class="container">
					<div class="clients-carousel">
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-1.png" alt="client-1"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-2.png" alt="client-2"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-3.png" alt="client-3"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-4.png" alt="client-4"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-5.png" alt="client-5"></a></div>
						
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-1.png" alt="client-1"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-2.png" alt="client-2"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-3.png" alt="client-3"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-4.png" alt="client-4"></a></div>
						<div class="col-md-12 item"><a href="#" title="商标"><img src="images/client-5.png" alt="client-5"></a></div>
					</div>
				</div><!-- Container /- -->
			</div><!-- Clients /- -->
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
	

