<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>首页-后台管理系统</title>

	    <%@ include file="/WEB-INF/page/include/ace-meta.jsp"%>
</head>
	<body>
		 <%@ include file="/WEB-INF/page/include/ace-topNavbar.jsp"%>

		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

	      <%@ include file="/WEB-INF/page/include/ace-sidebar.jsp"%>
			
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a href="#">首页</a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>

						<li>
							<a href="#">系统设置</a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>
						<li class="active">用户管理</li>
					</ul><!--.breadcrumb-->

					<div class="nav-search" id="nav-search">
						<form class="form-search" />
						  
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="input-small nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="icon-search nav-search-icon"></i>
								
							</span>
						</form>
						
						
					</div><!--#nav-search-->
				</div>

				<div class="page-content">
					<div class="row-fluid">
						<div class="span12">
							<!--PAGE CONTENT BEGINS-->
							
							  <div>
							   <div id="toolbar" class="btn-group right">
								    <button type="button" class="btn btn-primary btn-small "  id="menuAdd-button">
								     用户添加
								    </button>
								</div>
			                   <table data-toggle="table"
								       data-url="http://localhost:8080/webadmin/user/list"
								       data-query-params="queryParams"
								       data-pagination="true"
								       data-search="false"
								       data-toolbar="#toolbar"
								       data-height="500">
								    <thead>
								    <tr>
								        <th data-field="id">工号</th>
								        <th data-field="username">用户名</th>
								         <th data-field="password">密码</th>
								        <th data-field="name">真实姓名</th>	       		        
								    </tr>
								    </thead>
								</table>
			              </div>

							<!--PAGE CONTENT ENDS-->
						</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->

				<%@ include file="/WEB-INF/page/include/ace-settings.jsp"%><!--/#ace-settings-container-->
			</div><!--/.main-content-->
		</div><!--/.main-container-->

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only bigger-110"></i>
		</a>

	      <%@ include file="/WEB-INF/page/include/ace-script.jsp"%>
	      <script type="text/javascript">
			  	$("#menuAdd-button").click(function(){
					window.location.href = "${ctx}/user/userAdd";
				});
	      </script>
	</body>
</html>
