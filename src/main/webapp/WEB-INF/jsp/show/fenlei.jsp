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
	<title>index</title>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="description" content="">
	<meta name="author" content="">

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
						<li><a href="http://www.qq.com" title="微信"><i class="fa fa-wechat"></i></a></li>
						<li><a href="http://www.qq.com" title="微博"><i class="fa fa-weibo"></i></a></li>
						<li><a href="http://www.qq.com" title="v"><i class="fa fa-vimeo"></i></a></li>
						<li><a href="http://www.qq.com" title="分享"><i class="fa fa-bicycle"></i></a></li>
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
						<a href="/index" class="navbar-brand">欢迎 <span>访问</span></a>
					</div>
					<!-- Menu Icon -->
					<div class="menu-icon">
						<div class="search">
							<a href="/chanpin/search" id="search" title="Search"><i class="icon icon-Search"></i></a>
						</div>
						<c:if test="${not empty username}">
						<ul class="cart">
							<li>
								<a aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" id="cart" class="btn dropdown-toggle" title="打开我的购物车" href="/cart"><i class="icon icon-ShoppingCart"></i></a>
								<ul class="dropdown-menu no-padding">
									<c:forEach items="${listchanpins }" var="listchanpin">
										<li class="mini_cart_item">
											<a title="移除这个商品" class="remove" href="javascript:if(confirm('确实要删除这个订单吗?'))location='/shoucang/del?shangpinming=${listchanpin.shangpinming }'">&#215;</a>
											<a href="/chanpin/detail?shangpinming=${listchanpin.shangpinming}" name="shangpinming" class="shop-thumbnail">${listchanpin.shangpinming}</a>
											<span class="quantity">${listchanpin.youhui }</span>
										</li>
									</c:forEach>
									
									<li class="button">
										<a href="/cart1/cart" title="查看详情">查看详情</a>
										<a href="/order/index" title="结账">结账</a>
									</li>
								</ul>
							</li>
							<li><a href="/shoucang/shoucang" title="我喜欢"><i class="icon icon-Heart"></i></a></li>
							<li><a href="/message/myindex" title="用户"><i class="icon icon-User"></i></a></li>
						</ul>
						</c:if>
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

<!-- Slider Section 1 -->
	<div id="home-revslider" class="slider-section container-fluid no-padding">
		<!-- START REVOLUTION SLIDER 5.0 -->
		<div class="rev_slider_wrapper">
			<div id="home-slider1" class="rev_slider" data-version="5.0">
				<ul>
					<li data-transition="zoomout" data-slotamount="default"  data-easein="easeInOut" data-easeout="easeInOut" data-masterspeed="2000" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7">
						<img src="images/slider-1.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
						<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-1"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-200','-130','-110','-80']"
							 data-fontsize="['38','30','25','16']"
							 data-lineheight="['24','24','24','24']"
							 data-width="none"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_in="y:-50px;opacity:0;s:1000;e:Power4.easeOut;"
							 data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;"
							 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							 data-start="1000"
							 data-splitin="chars"
							 data-splitout="none"
							 data-responsive_offset="on"
							 data-elementdelay="0.05"
							 style="z-index: 5; white-space: nowrap; letter-spacing: 3.04px; color:#333; font-weight: 700; font-family: 'Montserrat', sans-serif; text-transform: uppercase;">不甘心的时候，就是在进步。痛苦的时候，就是在成长。 ​​​​
						</div>
						<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-2"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-135','-80','-60','-50']"
							 data-fontsize="['18','18','18','14']"
							 data-lineheight="['26','26','26','26']"
							 data-width="['750','750','738','450']"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
							 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							 data-start="1000"
							 data-splitin="chars"
							 data-splitout="none"
							 data-responsive_offset="on"
							 data-elementdelay="0.05"
							 style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#777; font-weight: normal; font-family: 'Lato', sans-serif;">永远不要跟一个纯傻逼争论,因为他会把你的智商拉到跟他一个水平。
						</div>
						<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-3"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-110','-50','-35','-30']"
							 data-fontsize="['18','18','18','14']"
							 data-lineheight="['26','26','26','26']"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
							 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							 data-start="1000"
							 data-splitin="chars"
							 data-splitout="none"
							 data-responsive_offset="on"
							 data-elementdelay="0.05"
							 style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#777; font-weight: normal; font-family: 'Lato', sans-serif;">熬出来的才是日子，逼出来的才是人生
						</div>
						<div class="tp-caption NotGeneric-Button rev-btn  rs-parallaxlevel-0" id="slide-layer-4"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-30','20','40','30']"
							 data-fontsize="['14','14','14','12']"
							 data-lineheight="['24','24','24','24']"
							 data-width="none"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:100;e:Power1.easeInOut;"
							 data-style_hover="c:rgb(255, 255, 255);bg:rgba(182, 121, 95);"
							 data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;"
							 data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;"
							 data-start="2000"
							 data-splitin="none"
							 data-splitout="none"
							 data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
							 data-responsive_offset="on"
							 data-responsive="off"
							 style="z-index: 10; padding:8px 38px; letter-spacing:0.56px; color: #b6795f; border-color: #b6795f; font-family: 'Montserrat', sans-serif; text-transform:uppercase; background-color:transparent; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">现在购买
						</div>
					</li>

					<li data-transition="zoomout" data-slotamount="default"  data-easein="easeInOut" data-easeout="easeInOut" data-masterspeed="2000" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7">
						<img src="images/slider-1.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
						<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-5"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-200','-130','-110','-80']"
							 data-fontsize="['38','30','25','16']"
							 data-lineheight="['24','24','24','24']"
							 data-width="none"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_in="y:-50px;opacity:0;s:1000;e:Power4.easeOut;"
							 data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;"
							 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							 data-start="1000"
							 data-splitin="chars"
							 data-splitout="none"
							 data-responsive_offset="on"
							 data-elementdelay="0.05"
							 style="z-index: 5; white-space: nowrap; letter-spacing: 3.04px; color:#333; font-weight: 700; font-family: 'Montserrat', sans-serif; text-transform: uppercase;">一辈子并不长，下辈子未必会遇见，请好好把握和珍惜你现在身边的人
						</div>
						<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-6"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-135','-80','-60','-50']"
							 data-fontsize="['18','18','18','14']"
							 data-lineheight="['26','26','26','26']"
							 data-width="['750','750','738','450']"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
							 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							 data-start="1000"
							 data-splitin="chars"
							 data-splitout="none"
							 data-responsive_offset="on"
							 data-elementdelay="0.05"
							 style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#777; font-weight: normal; font-family: 'Lato', sans-serif;">学会承认自己的错误，但放过自己，带着遗憾好好活下去
						</div>
						<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-7"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-110','-50','-35','-30']"
							 data-fontsize="['18','18','18','14']"
							 data-lineheight="['26','26','26','26']"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
							 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							 data-start="1000"
							 data-splitin="chars"
							 data-splitout="none"
							 data-responsive_offset="on"
							 data-elementdelay="0.05"
							 style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#777; font-weight: normal; font-family: 'Lato', sans-serif;">成长，不是你变得高了，变得壮了，而是你的心，变得能承受更多了
						</div>
						<div class="tp-caption NotGeneric-Button rev-btn  rs-parallaxlevel-0" id="slide-layer-8"
							 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							 data-y="['middle','middle','middle','middle']" data-voffset="['-30','20','40','30']"
							 data-fontsize="['14','14','14','12']"
							 data-lineheight="['24','24','24','24']"
							 data-width="none"
							 data-height="none"
							 data-whitespace="nowrap"
							 data-transform_idle="o:1;"
							 data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:100;e:Power1.easeInOut;"
							 data-style_hover="c:rgb(255, 255, 255);bg:rgba(182, 121, 95);"
							 data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;"
							 data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;"
							 data-start="2000"
							 data-splitin="none"
							 data-splitout="none"
							 data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
							 data-responsive_offset="on"
							 data-responsive="off"
							 style="z-index: 10; padding:8px 38px; letter-spacing:0.56px; color: #b6795f; border-color: #b6795f; font-family: 'Montserrat', sans-serif; text-transform:uppercase; background-color:transparent; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">现在购买
						</div>
					</li>
				</ul>
			</div><!-- END REVOLUTION SLIDER -->
		</div><!-- END OF SLIDER WRAPPER -->
		<div class="goto-next"><a href="#category-section"><i class="icon icon-Mouse bounce"></i></a></div>
	</div><!-- Slider Section 1 /- -->


	<!-- Services Section -->
	<div class="services-section container-fluid">
		<!-- Container -->
		<div class="container">
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
		</div><!-- Container /- -->
	</div><!-- Services Section /- -->

	<!-- Category Section -->
	<div id="category-section" class="category-section container-fluid no-padding">
		<div class="category-carousel">
			<div class="col-md-12 col-sm-12 col-xs-12 no-padding">
				<div class="category-box layout-1">
					<img src="images/category-1.jpg" alt="category" />
					<div class="category-content">
						<p>情侣式双人凳</p>
						<h5>节省最高40%</h5>
						<a href="#" title="现在购买">购买</a>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12 no-padding">
				<div class="category-box layout-2">
					<img src="images/category-2.jpg" alt="category" />
					<div class="category-content">
						<p>最新款心形凳</p>
						<h5>最高优惠可达25%</h5>
						<a href="#" title="现在购买">购买</a>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12 no-padding">
				<div class="category-box layout-3">
					<img src="images/category-3.jpg" alt="category" />
					<div class="category-content">
						<p>可爱的小马扎</p>
						<h5>最高可省60%</h5>
						<a href="#" title="购买">购买</a>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12 no-padding">
				<div class="category-box layout-3 layout-4">
					<img src="images/category-4.jpg" alt="category" />
					<div class="category-content">
						<p>最有创意的宽凳</p>
						<h5>创意十足</h5>
						<a href="#" title="现在购买">购买</a>
					</div>
				</div>
			</div>
		</div>
	</div><!-- Category Section /- -->

	<!-- Product Section -->
	<div id="product-section" class="product-section container-fluid no-padding">
		<!-- Container -->
		<div class="container">
			<div class="row">
				<!-- Section Header -->
				<div class="section-header">
					<h3>我们的产品</h3>
					<p>我们的愿望就是成为地球上唯一以客户为中心的公司</p>
					<img src="images/section-seprator.png" alt="section-seprator" />
				</div><!-- Section Header /- -->

				<ul id="filters" class="products-categories no-left-padding">
					<li><a class="active" href="/chanpin/fenye">所有产品</a></li>
					<li><a href="/chanpin/leixing?fenlei=沙发">沙发</a></li>
					<li><a href="/chanpin/leixing?fenlei=椅子">椅子</a></li>
					<li><a href="/chanpin/leixing?fenlei=茶几">茶几</a></li>
					<li><a href="/chanpin/leixing?fenlei=桌子">桌子</a></li>
					<li><a href="/chanpin/leixing?fenlei=床">床</a></li>
					<li><a href="/chanpin/leixing?fenlei=柜子">柜子</a></li>
					<li><a href="/chanpin/fenye">更多<i class="fa fa-angle-down"></i></a></li>
				</ul>
				
				<form action="/search" method="post">
					<div class="input-group">
						<input name="shangpinming" class="form-control" placeholder="输入你想要的商品" type="text">
						<span class="input-group-btn">
						<button class="btn btn-search" title="Search" type="submit"><i class="icon icon-Search"></i></button>
								</span>
					</div>
				</form>
				<!-- Products -->
				<ul class="products">
					
					<!-- Product -->
					
					
					<c:forEach var="SearchResult" items="${SearchResults}">
						<li class="product video">
							<a href="#">
								<img src="${SearchResult.img}" alt="Product" />
								<h5>${SearchResult.shangpinming}</h5>
								<span class="price"><del>¥${SearchResult.jiage}</del>$${SearchResult.youhui }</span>
							</a>
							<div class="wishlist-box">
								<a href="/cart1/detail?goodsname=${SearchResult.shangpinming}"><i class="fa fa-arrows-alt" title="查看详情"></i></a>
								<a href="#"><i class="fa fa-heart-o" title="收藏"></i></a>
								<a href="#"><i class="fa fa-search" title="更多相似产品"></i></a>
							</div>
							<a href="/cart1/addcart?goodsname=${SearchResult.shangpinming}" class="addto-cart" title="添加到购物车">添加到购物车</a>
						</li><!-- Product /- -->
					</c:forEach>
					
					
					
				</ul><!-- Products /- -->
			</div><!-- Row /- -->
			<nav class="ow-pagination">
				<ul class="pager">
					<li class="number"><a href="#"></a></li>
					<li class="load-more"><a href="#">加载更多</a></li>
					<li class="previous"><a href="#"><i class="fa fa-angle-right" title="下一页"></i></a></li>
					<li class="next"><a href="#"><i class="fa fa-angle-left" title="上一页"></i></a></li>
				</ul>
			</nav>
		</div><!-- Container /- -->
	</div><!-- Product Section /- -->


	<!-- Footer Main -->
	<footer id="footer-main" class="footer-main container-fluid">
		<!-- Container -->
		<div class="container">
			<div class="row">
				<!-- Widget About -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_about">
					<a href="index.jsp" title="Max Shop">我的家居<span>商城</span></a>
					<div class="info">
						<p><i class="icon icon-Pointer"></i>郑州航院</p>
						<p><i class="icon icon-Phone2"></i><a href="http://www.baidu.com" title="电话" class="phone">123456789+</a></p>
						<p><i class="icon icon-Imbox"></i><a href="mailto:123456789@163.com" title="百度一下，你就知道">发送邮件</a></p>
					</div>
				</aside><!-- Widget About /- -->
				<!-- Widget Links -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_links">
					<h3 class="widget-title">最新流行风</h3>
					<ul>
						<li><a href="/chanpin/index" title="最新流行风">最新流行风</a></li>
						<li><a href="/chanpin/index" title="畅销款">畅销款</a></li>
						<li><a href="/about" title="关于我们">关于我们</a></li>
						<li><a href="/chanpin/index" title="今日爆款">今日爆款</a></li>
						<li><a href="/chanpin/index" title="产品收藏">产品收藏</a></li>
						<li><a href="/connectus" title="联系我们">联系我们</a></li>
					</ul>
				</aside><!-- Widget Links /- -->
				<!-- Widget Account -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_links widget_account">
					<h3 class="widget-title">我的账户</h3>
					<ul>
						<li><a href="/message/myorder" title="我的订单">我的订单</a></li>
						<li><a href="/message/myorder" title="我的信用">我的信用</a></li>
						<li><a href="/message/myindex" title="我的地址">我的地址</a></li>
						<li><a href="/message/myorder" title="我的个人资料">我的个人资料</a></li>
						<li><a href="/message/myorder" title="我的账户">我的账户</a></li>
					</ul>
				</aside><!-- Widget Account /- -->
				<!-- Widget Newsletter -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_newsletter">
					<h3 class="widget-title">联系</h3>
					<div class="input-group">
						<input class="form-control" placeholder="输入邮件地址" type="text">
						<span class="input-group-btn">
								<button class="btn btn-default" type="button"><i class="fa fa-paper-plane-o"></i></button>
							</span>
					</div>
					<h5>从商城中获取最新的产品</h5>
					<h3 class="widget-title widget-title-1">加入我们</h3>
					<ul class="social">
						<li><a href="http://www.qq.com" title="qq"><i class="fa fa-qq"></i></a></li>
						<li><a href="http://www.qq.com" title="微信"><i class="fa fa-wechat"></i></a></li>
						<li><a href="http://www.qq.com" title="腾讯微博"><i class="fa fa-tencent-weibo"></i></a></li>
						<li><a href="http://www.qq.com" title="新浪微博"><i class="fa fa-weibo"></i></a></li>
						<li><a href="http://www.qq.com" title="分享"><i class="fa fa-bicycle"></i></a></li>
					</ul>
				</aside><!-- Widget Newsletter /- -->
			</div>
			<div class="copyright-section">
				<div class="coyright-content">
					<p>Copyright &copy; 版权(2007)公司名称保留所有权利。<a href="http://www.baidu.com/" target="_blank" title="百度">百度</a>----<a href="http://www.qq.com/" title="腾讯" target="_blank">腾讯</a></p>
				</div>
				<ul>
					<li><a href="http://www.kuaidi100.com/" title="快递信息">快递信息</a></li>
					<li><a href="http://www.baidu.com" title="隐私政策">隐私政策</a></li>
					<li><a href="http://www.baidu.com" title="条款和条件">条款和条件</a></li>
					<li><a href="#" title="选择用户">选择用户</a></li>
				</ul>
			</div>
		</div><!-- Container /- -->
	</footer><!-- Footer Main /- -->


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
<script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>

<!-- Library - Theme JS -->
<script src="js/functions.js"></script>

</body>
</html>

