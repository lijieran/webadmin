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
	
	
	
	<!-- Main Theme Stylesheet :: CSS -->
	<link href="${ctxStatic}/common/theme/css/style-default.css?1371698479" rel="stylesheet" type="text/css" />
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="${ctxStatic}/common/bootstrap-table-master/bootstrap-table.min.css">

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
				<li><a href="index.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons dashboard"><i></i> Quick Admin</a></li>
				<li class="divider"></li>
				<li>Dashboard</li>
				<li class="pull-right hidden-phone"><a href="" class="glyphicons shield">Get Help<i></i></a></li>
				<li class="pull-right hidden-phone divider"></li>
				<li class="pull-right hidden-phone"><a href="" class="glyphicons adjust_alt">Filter<i></i></a></li>
			</ul>


              <div>
                   <table data-toggle="table"
					       data-url="https://api.github.com/users/wenzhixin/repos"
					       data-query-params="queryParams"
					       data-pagination="true"
					       data-search="true"
					       data-height="300">
					    <thead>
					    <tr>
					        <th data-field="name">Name</th>
					        <th data-field="stargazers_count">Stars</th>
					        <th data-field="forks_count">Forks</th>
					        <th data-field="description">Description</th>
					    </tr>
					    </thead>
					</table>
              </div>

	
		
		</div>
		<!-- // Content END -->
		
				</div>
		<div class="clearfix"></div>
		<!-- // Sidebar menu & content wrapper END -->
				
		<%@ include file="/WEB-INF/page/include/footer.jsp"%>
		<!-- // Footer END -->
		
	</div>
	<!-- // Main Container Fluid END -->
	


	
  <%@ include file="/WEB-INF/page/include/script.jsp"%>
	
	<script type="text/javascript">
	function queryParams() {
	    return {
	        type: 'owner',
	        sort: 'updated',
	        direction: 'desc',
	        per_page: 100,
	        page: 1
	    };
	}
	</script>

	

</body>
</html>