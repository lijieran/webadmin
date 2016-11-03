<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie lt-ie9 lt-ie8 lt-ie7 fluid sticky-sidebar sidebar"> <![endif]-->
<!--[if IE 7]>    <html class="ie lt-ie9 lt-ie8 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if IE 8]>    <html class="ie lt-ie9 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if gt IE 8]> <html class="ie gt-ie8 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if !IE]><!--><html class="fluid sticky-top sticky-sidebar sidebar"><!-- <![endif]-->
<head>
	<title>后台管理系统</title>
	
	<!-- Meta -->
	 <%@ include file="/WEB-INF/page/include/meta.jsp"%>
	

</head>

<body class="">
	
		<!-- Main Container Fluid -->
	<div class="container-fluid fluid menu-left">
		
				<!-- Sidebar menu & content wrapper -->
		<div id="wrapper">
		
		<!-- Sidebar Menu -->
		<%@ include file="/WEB-INF/page/include/sidebar.jsp"%>
		<!-- // Sidebar Menu END -->
				
		<!-- Content -->
		<div id="content">
		
		<!-- Top navbar (note: add class "navbar-hidden" to close the navbar by default) -->
		<%@ include file="/WEB-INF/page/include/topNavbar.jsp"%>
		<!-- Top navbar END -->
		
				
	<ul class="breadcrumb">
		<li>You are here</li>
		<li><a href="${ctx }/" class="glyphicons dashboard"><i></i> Quick Admin</a></li>
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
	


	
     <%@ include file="/WEB-INF/page/include/script.jsp"%>
	

</body>
</html>