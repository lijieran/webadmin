<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie lt-ie9 lt-ie8 lt-ie7 fluid sidebar"> <![endif]-->
<!--[if IE 7]>    <html class="ie lt-ie9 lt-ie8 fluid sticky-top sidebar"> <![endif]-->
<!--[if IE 8]>    <html class="ie lt-ie9 fluid sticky-top sidebar"> <![endif]-->
<!--[if gt IE 8]> <html class="ie gt-ie8 fluid sticky-top sidebar"> <![endif]-->
<!--[if !IE]><!--><html class="fluid sticky-top sidebar"><!-- <![endif]-->
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
	<link href="${ctxStatic}/common/theme/css/style-default.css?1371698489" rel="stylesheet" type="text/css" />
	
	
</head>
<body class="login ">
	
	<!-- Wrapper -->
<div id="login">

	<div class="container">
	
		<div class="wrapper">
		
			<h1 class="glyphicons lock">用户登录 <i></i></h1>
			
			<div>
			    <p>${message }</p>
			</div>
		     
			<!-- Box -->
			<div class="widget widget-heading-simple widget-body-gray">
				
				<div class="widget-body">
				
					<!-- Form -->
					<form method="post">
						<label>用户名</label>
						<input type="text"  name="username" class="input-block-level" placeholder=""/> 
						<label>密码<a class="password" href="">忘记密码?</a></label>
						<input type="password"  name="password" class="input-block-level margin-none" placeholder="" />
						<div class="separator bottom"></div> 
						<div class="row-fluid">
							<div class="span8">
							</div>
							<div class="span4 center">
								<button class="btn btn-block btn-inverse" type="submit">登 录</button>
							</div>
						</div>
					</form>
					<!-- // Form END -->
							
				</div>
				<div class="widget-footer">
					<p class="glyphicons restart"><i></i>Please enter your username and password ...</p>
				</div>
			</div>
			<!-- // Box END -->
			
			<div class="innerT center">
			
				<p>Having troubles? <a href="faq.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default">Get Help</a></p>
			</div>
			
		</div>
		
	</div>
	
</div>
<!-- // Wrapper END -->	



	<!-- JQuery -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	

	

	
	<!-- Bootstrap -->
	<script src="${ctxStatic}/common/bootstrap/js/bootstrap.min.js"></script>
	
	

	


	
	
</body>
</html>