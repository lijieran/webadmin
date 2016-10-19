<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie lt-ie9 lt-ie8 lt-ie7 fluid sticky-sidebar sidebar"> <![endif]-->
<!--[if IE 7]>    <html class="ie lt-ie9 lt-ie8 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if IE 8]>    <html class="ie lt-ie9 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if gt IE 8]> <html class="ie gt-ie8 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if !IE]><!--><html class="fluid sticky-top sticky-sidebar sidebar"><!-- <![endif]-->
<head>
	<title>后台管理系统</title>
	
	<!-- Meta -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
	
	<!-- Bootstrap -->
	<link href="${ctxStatic}/common/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/common/bootstrap/css/responsive.css" rel="stylesheet" type="text/css" />
	
	<!-- Glyphicons Font Icons -->
	<link href="${ctxStatic}/common/theme/fonts/glyphicons/css/glyphicons.css" rel="stylesheet" />
	
	<link rel="stylesheet" href="${ctxStatic}/common/theme/fonts/font-awesome/css/font-awesome.min.css">
	<!--[if IE 7]><link rel="stylesheet" href="${ctxStatic}/common/theme/fonts/font-awesome/css/font-awesome-ie7.min.css"><![endif]-->
	
	
	<!--[if IE]><!--><script src="${ctxStatic}/common/theme/scripts/plugins/other/excanvas/excanvas.js"></script><!--<![endif]-->
	<!--[if lt IE 8]><script src="${ctxStatic}/common/theme/scripts/plugins/other/json2.js"></script><![endif]-->

	
	<!-- Main Theme Stylesheet :: CSS -->
	<link href="${ctxStatic}/common/theme/css/style-default.css?1371698479" rel="stylesheet" type="text/css" />
	
	<!-- LESS.js Library -->
	<script src="${ctxStatic}/common/theme/scripts/plugins/system/less.min.js"></script>
</head>

<body class="">
	
		<!-- Main Container Fluid -->
	<div class="container-fluid fluid menu-left">
		
				<!-- Sidebar menu & content wrapper -->
		<div id="wrapper">
		
		<!-- Sidebar Menu -->
		<div id="menu" class="hidden-phone hidden-print">
		
			<!-- Brand -->
			<a href="index.html" class="appbrand">Web Admin</a>
		
			<!-- Scrollable menu wrapper with Maximum height -->
			<div class="slim-scroll" data-scroll-height="800px">
			
			<!-- Sidebar Profile -->
			<span class="profile center">
				<a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default"><img data-src="holder.js/36x36/white" alt="Avatar" /></a>
			</span>
			<!-- // Sidebar Profile END -->
			
			<!-- Regular Size Menu -->
			<ul>
			
								
				<li class="glyphicons user"><a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default"><i></i><span>我的账号</span></a></li>
				<li class="glyphicons history"><a href="timeline.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default"><i></i><span>Timeline</span></a></li>
				<li class="glyphicons picture"><a href="gallery.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default"><i></i><span>Photo Gallery</span></a></li>
												
			</ul>
			<div class="clearfix"></div>
			<!-- // Regular Size Menu END -->
			
			</div>
			<!-- // Scrollable Menu wrapper with Maximum Height END -->
			
		</div>
		<!-- // Sidebar Menu END -->
				
		<!-- Content -->
		<div id="content">
		
				<!-- Top navbar (note: add class "navbar-hidden" to close the navbar by default) -->
		<div class="navbar main hidden-print">
			
			<!-- Menu Toggle Button -->
			<button type="button" class="btn btn-navbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!-- // Menu Toggle Button END -->
			
						<!-- Top Menu -->
			<ul class="topnav pull-left">
				<li class="active"><a href="index.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons dashboard"><i></i> Dashboard</a></li>
				<li class="dropdown dd-1">
					<a href="" data-toggle="dropdown" class="glyphicons settings"><i></i>Components <span class="caret"></span></a>
					<ul class="dropdown-menu pull-left">
					
						<!-- Components Submenu Level 2 -->
						<li class="dropdown submenu">
							<a data-toggle="dropdown" class="dropdown-toggle">Forms</a>
							<ul class="dropdown-menu submenu-show submenu-hide pull-right">
								<li class=""><a href="form_wizards.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Form Wizards</a></li>
								<li class=""><a href="form_elements.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Form Elements</a></li>
								<li class=""><a href="form_validator.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Form Validator</a></li>
								<li class=""><a href="file_managers.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">File Managers</a></li>
							</ul>
						</li>
						<!-- // Components Submenu Level 2 END -->
						
						<li class="dropdown submenu">
							<a data-toggle="dropdown" class="dropdown-toggle">Tables</a>
							<ul class="dropdown-menu submenu-show submenu-hide pull-right">
								<li class=""><a href="tables.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Tables</a></li>
								<li class=""><a href="tables_responsive.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Responsive Tables</a></li>
								<li class=""><a href="pricing_tables.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Pricing tables</a></li>
							</ul>
						</li>
						
						<!-- Components Submenu Regular Items -->
						<li class=""><a href="ui.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">UI Elements</a></li>
						<li class=""><a href="icons.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Icons</a></li>
						<li class=""><a href="widgets.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Widgets</a></li>
						<li class=""><a href="tabs.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Tabs</a></li>
						<li class=""><a href="sliders.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Sliders</a></li>
						<li class=""><a href="charts.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Charts</a></li>
						<li class=""><a href="grid.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Grid system</a></li>
						<li class=""><a href="modals.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Modals</a></li>
						<li class=""><a href="thumbnails.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Thumbnails</a></li>
						<li class=""><a href="carousels.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Carousels</a></li>
						<li class=""><a href="image_crop.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Image Cropping</a></li>
						<li class=""><a href="tour.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Page Tour</a></li>
						
						<li class="dropdown submenu">
							<a data-toggle="dropdown" class="dropdown-toggle">APIs</a>
							<ul class="dropdown-menu submenu-show submenu-hide pull-right">
								<li class=""><a href="twitter.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Twitter API</a></li>
								<li class=""><a href="google_analytics.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Google Analytics API</a></li>
							</ul>
						</li>
						
						<li class=""><a href="infinite_scroll.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Infinite Scroll</a></li>
						<!-- // Components Submenu Regular Items END -->
						
						<li class="dropdown submenu">
							<a data-toggle="dropdown" class="dropdown-toggle glyphicons circle_info"><i></i>4 Level Menu</a>
							<ul class="dropdown-menu submenu-show submenu-hide pull-right">
								<li class="dropdown submenu">
									<a data-toggle="dropdown" href="#" class="dropdown-toggle">Menu item</a>
									<ul class="dropdown-menu submenu-show submenu-hide pull-right">
										<li><a href="#">Menu item</a></li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="dropdown dd-1">
					<a href="" data-toggle="dropdown" class="glyphicons notes"><i></i>Pages <span class="caret"></span></a>
					<ul class="dropdown-menu pull-left">
						
						<li><a href="timeline.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons history"><i></i>Timeline</a></li>
						
												
						<li><a href="invoice.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons credit_card"><i></i>Invoice</a></li>
						<li><a href="faq.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons circle_question_mark"><i></i>FAQ</a></li>
						<li><a href="search.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons search"><i></i>Search</a></li>
						<li><a href="ratings.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons star"><i></i>Ratings</a></li>
						
						<li class="dropdown submenu">
							<a data-toggle="dropdown" class="dropdown-toggle glyphicons user"><i></i>Account</a>
							<ul class="dropdown-menu submenu-show submenu-hide pull-right">
								<li class=""><a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Advanced profile</a></li>
								<li class=""><a href="my_account.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">My Account</a></li>
								<li><a href="login.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default"><i></i>Login</a></li>
								<li><a href="signup.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default"><i></i>Register</a></li>
							</ul>
						</li>
						<li class="dropdown submenu">
							<a data-toggle="dropdown" class="dropdown-toggle glyphicons google_maps"><i></i>Maps</a>
							<ul class="dropdown-menu submenu-show submenu-hide pull-right">
								<li class=""><a href="maps_vector.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Vector maps</a></li>
								<li class=""><a href="maps_google.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Google maps</a></li>
							</ul>
						</li>
						<li><a href="typography.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons font"><i></i>Typography</a></li>
						<li><a href="gallery.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons picture"><i></i>Photo Gallery</a></li>
						<li><a href="calendar.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons calendar"><i></i>Calendar</a></li>
						<li><a href="bookings.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons user_add"><i></i>Bookings</a></li>
						<li><a href="finances.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons coins"><i></i>Finances</a></li>
						<li><a href="error.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons warning_sign"><i></i>Error page</a></li>
						<li><a href="blank.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons magic"><i></i>Blank page</a></li>
					</ul>
				</li>
				<li class="glyphs hidden-tablet hidden-phone" data-toggle="tooltip" data-title="Click to see all the 400+ PREMIUM icons that you can use!" data-placement="bottom">
					<ul>
						<li class="active"><a href="icons.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons heart"><i></i></a></li>
						<li><a href="icons.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons home"><i></i></a></li>
						<li><a href="icons.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons bin"><i></i></a></li>
					</ul>
				</li>
				<li class="search open">
					<form autocomplete="off" class="dropdown dd-1">
						<input type="text" value="" placeholder="Type for suggestions .." data-toggle="typeahead" />
						<button type="button" class="glyphicons search"><i></i></button>
					</form>
				</li>
			</ul>
			<!-- // Top Menu END -->
						
						
			<!-- Top Menu Right -->
			<ul class="topnav pull-right hidden-phone">
			
								<!-- Themer -->
				<li><a href="#themer" data-toggle="collapse" class="glyphicons eyedropper single-icon"><i></i></a></li>
				<!-- // Themer END -->
								
				<!-- Language menu -->
				<li class="hidden-tablet hidden-phone hidden-desktop-1 dropdown dd-1 dd-flags" id="lang_nav">
					<a href="#" data-toggle="dropdown"><img src="${ctxStatic}/common/theme/images/lang/en.png" alt="en" /></a>
			    	<ul class="dropdown-menu pull-left">
			      		<li class="active"><a href="?module=admin&amp;page=index&amp;url_rewrite=&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default&amp;lang=en" title="English"><img src="${ctxStatic}/common/theme/images/lang/en.png" alt="English"> English</a></li>
			      		<li><a href="?module=admin&amp;page=index&amp;url_rewrite=&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default&amp;lang=ro" title="Romanian"><img src="${ctxStatic}/common/theme/images/lang/ro.png" alt="Romanian"> Romanian</a></li>
			      		<li><a href="?module=admin&amp;page=index&amp;url_rewrite=&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default&amp;lang=it" title="Italian"><img src="${ctxStatic}/common/theme/images/lang/it.png" alt="Italian"> Italian</a></li>
			      		<li><a href="?module=admin&amp;page=index&amp;url_rewrite=&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default&amp;lang=fr" title="French"><img src="${ctxStatic}/common/theme/images/lang/fr.png" alt="French"> French</a></li>
			      		<li><a href="?module=admin&amp;page=index&amp;url_rewrite=&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default&amp;lang=pl" title="Polish"><img src="${ctxStatic}/common/theme/images/lang/pl.png" alt="Polish"> Polish</a></li>
			    	</ul>
				</li>
				<!-- // Language menu END -->
			
				<!-- Profile / Logout menu -->
				<li class="account dropdown dd-1">
										<a data-toggle="dropdown" href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons logout lock"><span class="hidden-tablet hidden-phone hidden-desktop-1">mosaicpro</span><i></i></a>
					<ul class="dropdown-menu pull-right">
						<li><a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons cogwheel">Settings<i></i></a></li>
						<li><a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons camera">My Photos<i></i></a></li>
						<li class="profile">
							<span>
								<span class="heading">Profile <a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="pull-right">edit</a></span>
								<span class="img"></span>
								<span class="details">
									<a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Mosaic Pro</a>
									contact@mosaicpro.biz
								</span>
								<span class="clearfix"></span>
							</span>
						</li>
						<li>
							<span>
								<a class="btn btn-default btn-mini pull-right" href="login.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Sign Out</a>
							</span>
						</li>
					</ul>
									</li>
				<!-- // Profile / Logout menu END -->
				
			</ul>
			<div class="clearfix"></div>
			<!-- // Top Menu Right END -->
			
		</div>
		<!-- Top navbar END -->
				
	<ul class="breadcrumb">
		<li>You are here</li>
		<li><a href="index.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons dashboard"><i></i> Quick Admin</a></li>
		<li class="divider"></li>
		<li>Dashboard</li>
		<li class="pull-right hidden-phone"><a href="" class="glyphicons shield">Get Help<i></i></a></li>
		<li class="pull-right hidden-phone divider"></li>
		<li class="pull-right hidden-phone"><a href="" class="glyphicons adjust_alt">Filter<i></i></a></li>
	</ul>


	
		
		</div>
		<!-- // Content END -->
		
				</div>
		<div class="clearfix"></div>
		<!-- // Sidebar menu & content wrapper END -->
				
		<div id="footer" class="hidden-print">
			
			<!--  Copyright Line -->
			<div class="copy">&copy; 2012 - 2013 - <a href="http://www.mosaicpro.biz">MosaicPro</a> - All Rights Reserved. <a href="http://themeforest.net/item/quick-admin-template/4940725?ref=mosaicpro" target="_blank">Purchase Quick Admin on ThemeForest</a> - Current version: v1.3.1 / <a target="_blank" href="http://demo.mosaicpro.biz/quickadmin/CHANGELOG">changelog</a></div>
			<!--  End Copyright Line -->
	
		</div>
		<!-- // Footer END -->
		
	</div>
	<!-- // Main Container Fluid END -->
	


	
	<!-- JQuery -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

	
	
	<!-- JQueryUI -->
	<script src="${ctxStatic}/common/theme/scripts/plugins/system/jquery-ui/js/jquery-ui-1.9.2.custom.min.js"></script>
	
	<!-- JQueryUI Touch Punch -->
	<!-- small hack that enables the use of touch events on sites using the jQuery UI user interface library -->
	<script src="${ctxStatic}/common/theme/scripts/plugins/system/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	

	
	<!-- Bootstrap -->
	<script src="${ctxStatic}/common/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- SlimScroll Plugin -->
	<script src="${ctxStatic}/common/theme/scripts/plugins/other/jquery-slimScroll/jquery.slimscroll.min.js"></script>
	
	<!-- Common Demo Script -->
	<script src="${ctxStatic}/common/theme/scripts/demo/common.js?1371698479"></script>

	

</body>
</html>