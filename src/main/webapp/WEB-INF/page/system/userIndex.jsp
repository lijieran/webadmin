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
				<li><a href="index.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default" class="glyphicons dashboard"><i></i> Quick Admin</a></li>
				<li class="divider"></li>
				<li>Dashboard</li>
				<li class="pull-right hidden-phone"><a href="" class="glyphicons shield">帮助<i></i></a></li>
				<li class="pull-right hidden-phone divider"></li>
				<li class="pull-right hidden-phone"><a href="" class="glyphicons adjust_alt">Filter<i></i></a></li>
			</ul>


              <div>
                   <table data-toggle="table"
					       data-url="http://localhost:8080/webadmin/user/list"
					       data-query-params="queryParams"
					       data-pagination="true"
					       data-search="false"
					       data-height="500">
					    <thead>
					    <tr>
					        <th data-field="id">id</th>
					        <th data-field="username">username</th>
					         <th data-field="password">password</th>
					        <th data-field="name">name</th>	       		        
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