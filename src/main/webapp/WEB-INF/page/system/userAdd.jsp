<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie lt-ie9 lt-ie8 lt-ie7 fluid sticky-sidebar sidebar"> <![endif]-->
<!--[if IE 7]>    <html class="ie lt-ie9 lt-ie8 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if IE 8]>    <html class="ie lt-ie9 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if gt IE 8]> <html class="ie gt-ie8 fluid sticky-top sticky-sidebar sidebar"> <![endif]-->
<!--[if !IE]><!--><html class="fluid sticky-top sticky-sidebar sidebar"><!-- <![endif]-->
<head>
	<title>用户添加-后台管理系统</title>
	
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
				<li class="pull-right hidden-phone"><a href="${ctx }/user/index" class="glyphicons adjust_alt">用户列表<i></i></a></li>
			</ul>			
			
<div class="innerLR">

	<!-- Form -->
	<form class="form-horizontal margin-none" id="validateSubmitForm" method="get" autocomplete="off" action="${ctx }/user/save">
		
		<!-- Widget -->
		<div class="widget widget-heading-simple widget-body-gray">
		
			<!-- Widget heading -->
			<div class="widget-head">
				<h4 class="heading"></h4>
			</div>
			<!-- // Widget heading END -->
			
			<div class="widget-body">
			
				<!-- Row -->
				<div class="row-fluid">
				
					<!-- Column -->
					<div class="span6">
					
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="id">工号</label>
							<div class="controls"><input class="span12" id="id" name="id" type="text" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="name">真实姓名</label>
							<div class="controls"><input class="span12" id="name" name="name" type="text" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">用户名</label>
							<div class="controls"><input class="span12" id="username" name="username" type="text" /></div>
						</div>
						<!-- // Group END -->
						
					</div>
					<!-- // Column END -->
					
					<!-- Column -->
					<div class="span6">
					
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="password">密码</label>
							<div class="controls"><input class="span12" id="password" name="password" type="password" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="confirm_password">确认密码</label>
							<div class="controls"><input class="span12" id="confirm_password" name="confirm_password" type="password" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="email">邮箱</label>
							<div class="controls"><input class="span12" id="email" name="email" type="email" /></div>
						</div>
						<!-- // Group END -->
						
					</div>
					<!-- // Column END -->
					
				</div>
				<!-- // Row END -->
				
				<hr class="separator" />
				
			
				
				<!-- Form actions -->
				<div class="form-actions center">
					<button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>保存</button>
					<button type="button" class="btn btn-icon btn-default glyphicons circle_remove" onclick="history.go(-1)"><i></i>返回</button>
				</div>
				<!-- // Form actions END -->
				
			</div>
		</div>
		<!-- // Widget END -->
		
	</form>
	<!-- // Form END -->
	
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
  
  <!-- Uniform Forms Plugin -->
	<script src="${ctxStatic}/common/theme/scripts/plugins/forms/pixelmatrix-uniform/jquery.uniform.min.js"></script>
	
	<!-- jQuery Validate Plugin -->
	<script src="${ctxStatic}/common/theme/scripts/plugins/forms/jquery-validation/dist/jquery.validate.min.js"></script>
	<!-- Form Validator Page Demo Script -->
	<script src="${ctxStatic}/webadmin/js/userAdd.js"></script>
	

	

</body>
</html>