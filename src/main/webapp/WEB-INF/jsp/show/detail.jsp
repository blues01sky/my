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
	<link rel="stylesheet" type="text/css" href="detail_files/webcss.css">
		
		<style>
			table{border-collapse: collapse;}

			.viewtil{display:block; margin:auto; margin-top:10px; width:1200px; line-height:36px; text-align:left; color:#ff4400; border-bottom:1px solid #ff4400;}
			
			.tihu{display:block; margin:auto; width:1200px; margin-top:10px; position:relative; overflow:hidden; background:#fff}
			.tihu .sale{position:absolute; right:0}
			.tihu .thpic{display:inline-block; width:500px; height:420px; border-right:1px dotted #ddd; padding:30px 50px 30px 50px; margin-right:50px; float:left;}
			.tihu .thpic img{display:block; width:100%; height:100%}
			.tihu h2{display:block; margin:0; padding:0; text-align:left; line-height:36px; padding-top:20px}
			.tihu .thline{display:block; text-align:left; line-height:60px;}
			.tihu .thline em{display:inline-block; font-style:normal; color:#999; }
			.tihu .thline i{display:inline-block; font-style:normal; color:#333; }
			
			.addcart{display:block; text-align:left; padding-top:30px}/*添加购物车*/
			.addcart span{display:inline-block; width:100px; position:relative}
			.addcart span input{display:inline-block; width:60px; height:36px; text-align:center; border:1px solid #ddd}
			.addcart span i{display:inline-block; padding:0; margin:0; width:40px; line-height:18px; text-align:center; font-style:normal; font-size:18px; font-weight:bold; color:#000; position:absolute; right:0;}
			.addcart .submit{display:inline-block; padding:0; margin:0; width:180px; line-height:38px; text-align:center; color:#fff; background:#ff4400; border:none; vertical-align:middle; font-family:微软雅黑,宋体,Arial; font-size:16px; cursor:pointer}
			
			.cpinfo{display:block; margin:auto; width:1200px; margin-top:10px; text-align:center; background:#fff}
			.cpinfo img{display:block; margin:auto; width:1000px}
		</style>
	<script src="detail_files/share.js.下载"></script><link rel="stylesheet" href="detail_files/share_style1_32.css">

	<!--[if lt IE 9]>
	<script src="js/html5/respond.min.js"></script>
	<![endif]-->
	<style>
		ul.pagination {
		    display: inline-block;
		    padding: 0;
		    margin: 0;
		}
		
		ul.pagination li {display: inline;}
		
		ul.pagination li a {
		    color: black;
		    float: left;
		    padding: 8px 16px;
		    text-decoration: none;
		}
		
		ul.pagination li a.active {
		    background-color: #4CAF50;
		    color: white;
		}
		
		ul.pagination li a:hover:not(.active) {background-color: #ddd;}
	</style>
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
					<h5>欢迎您${username}来到小二的商店</h5>
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
							<c:when test="${ empty username}">
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
									<li class="mini_cart_item">
										<a title="移除这个商品" class="remove" href="#">&#215;</a>
										<a href="#" class="shop-thumbnail">
											<img alt="poster_2_up" class="attachment-shop_thumbnail" src="images/product-wishlist-2.jpg">商品
										</a>
										<span class="quantity">数量 &#215; <span class="amount">价格</span></span>
									</li>
									<li class="button">
										<a href="#" title="查看详情">查看详情</a>
										<a href="#" title="结账">结账</a>
									</li>
								</ul>
							</li>
							<li><a href="#" title="我喜欢"><i class="icon icon-Heart"></i></a></li>
							<li><a href="login.jsp" title="用户"><i class="icon icon-User"></i></a></li>
						</ul>
					</div><!-- Menu Icon /- -->
					<div class="navbar-collapse collapse navbar-right" id="navbar">
						<ul class="nav navbar-nav">
							<li><a href="/index">主页</a></li>
								<li><a href="/cart1/cart">购物车</a></li>
								<li><a href="/checkout">建议</a></li>
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
			<div class="tihu">
			<img src="detail_files/sale.png" class="sale">
			<span class="thpic"><img src="detail_files/zhuozi.jpg" onerror="this.src=&#39;/image/momo.gif&#39;"></span>
			<h2>${chanPin.shangpinming }</h2>
			<span class="thline"><em>分类：</em> <i>${chanPin.fenlei }</i></span>
			<span class="thline"><em>原价：</em> <i>￥${chanPin.jiage }</i></span>
			<span class="thline"><em>优惠折扣：</em> <i>￥ ${chanPin.jiage - chanPin.youhui }</i></span>
			<span class="thline">
				<em>优惠价格：</em>
				<i style="font-size:24px;color:red">￥${chanPin.youhui }</i>
			</span>
			<span class="thline"><em>库存量：</em> <i>${kucun }</i></span>
			<div class="addcart">
				<form action="/cart1/cart1" method="post">
					<span>
					<input name="shangpinming" value="${chanPin.shangpinming }" type="hidden">
					<input name="danjia" value="${chanPin.youhui }" type="hidden">
						<input type="text" name="shuliang" id="shuliang" value="1" readonly="">
						<i onclick="cpjia()" style="top:0">+</i>
						<i onclick="cpjian()" style="bottom:0">-</i>
					</span>
					<input type="hidden" name="id" value="">
					<input type="hidden" name="guestAction" value="addCart">
					<input type="submit" value="加入购物车" class="submit">
				</form>
			</div>
		</div>
		<span class="viewtil"> <img src="detail_files/dian.gif"> <b>产品详情</b> </span>	
		<div class="cpinfo"> <img src="detail_files/zhuozi.jpg" alt=""> </div>
		<script type="text/javascript">
			//数量加
			function cpjia(){
				var sl=document.getElementById("shuliang").value;
				if(parseInt(sl)< ${kucun}){
				document.getElementById("shuliang").value=parseInt(sl)+1;
				}
			}
			//数量减
			function cpjian(){
				var sl=document.getElementById("shuliang").value;
				if(parseInt(sl)>1)
					document.getElementById("shuliang").value=parseInt(sl)-1;
			}
			//提交   返回   购物车和当前产品页
			function submitput(where){
				document.getElementById("where").value=where;
				document.getElementById("cartForm").submit(); 
			}
		</script>
		<!-- 网页头部 -->
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
						<p><i class="icon icon-Phone2"></i><a href="tel:(11)1234567890" title="电话" class="phone">123456789+</a></p>
						<p><i class="icon icon-Imbox"></i><a href="mailto:info@maxshop.com" title="百度一下，你就知道">www.baidu.com</a></p>
					</div>
				</aside><!-- Widget About /- -->
				<!-- Widget Links -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_links">
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
						<li><a href="#" title="qq"><i class="fa fa-qq"></i></a></li>
						<li><a href="#" title="微信"><i class="fa fa-wechat"></i></a></li>
						<li><a href="#" title="腾讯微博"><i class="fa fa-tencent-weibo"></i></a></li>
						<li><a href="#" title="新浪微博"><i class="fa fa-weibo"></i></a></li>
						<li><a href="#" title="分享"><i class="fa fa-bicycle"></i></a></li>
					</ul>
				</aside><!-- Widget Newsletter /- -->
			</div>
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

