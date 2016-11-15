<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>菜单添加-后台管理系统</title>

<%@ include file="/WEB-INF/page/include/ace-meta.jsp"%>
<link rel="stylesheet" href="${ctxStatic}/webadmin/css/widget-form.css" />

	<link rel="stylesheet" type="text/css" href="${ctxStatic}/common/easyui/themes/default/combo.css">
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/common/easyui/themes/default/combobox.css">
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/common/easyui/themes/default/tree.css">
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/common/easyui/themes/default/textbox.css">
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/common/easyui/themes/default/panel.css">
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/common/easyui/themes/icon.css">
	<script type="text/javascript" src="${ctxStatic}/common/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/common/easyui/jquery.easyui.min.js"></script>
	
<body>
	<%@ include file="/WEB-INF/page/include/ace-topNavbar.jsp"%>

	<div class="main-container container-fluid">
		<a class="menu-toggler" id="menu-toggler" href="#"> <span
			class="menu-text"></span>
		</a>

		<%@ include file="/WEB-INF/page/include/ace-sidebar.jsp"%>

		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="#">首页</a> <span
						class="divider"> <i class="icon-angle-right arrow-icon"></i>
					</span></li>

					<li><a href="#">系统设置</a> <span class="divider"> <i
							class="icon-angle-right arrow-icon"></i>
					</span></li>
					<li class="active">用户添加</li>
				</ul>
				<!--.breadcrumb-->

				<div class="nav-search" id="nav-search">
					<form class="form-search" />
					<span class="input-icon"> <a href="${ctx }/menu/menuAdd">菜单管理</a>
					</span> <span class="input-icon"> <input type="text"
						placeholder="Search ..." class="input-small nav-search-input"
						id="nav-search-input" autocomplete="off" /> <i
						class="icon-search nav-search-icon"></i>

					</span>
					</form>


				</div>
				<!--#nav-search-->
			</div>

			<div class="page-content">
				<div class="row-fluid">
					<div class="span12">
						<!--PAGE CONTENT BEGINS-->

					<!-- 	<div class="alert alert-block alert-success">
							<button type="button" class="close" data-dismiss="alert">
								<i class="icon-remove"></i>
							</button>

							<i class="icon-ok green"></i> Welcome to <strong class="green">
								Ace <small>(v1.1.2)</small>
							</strong> , the lightweight, feature-rich and easy to use admin template.
						</div> -->

						<div class="space-6"></div>


						<!-- Form -->
						<form class="form-horizontal margin-none" id="validateSubmitForm"
							method="get" autocomplete="off" action="${ctx }/user/save">

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
												<label class="control-label" for="id">菜单id</label>
												<div class="controls">
													<input class="span12" id="id" name="id" type="text" />
												</div>
											</div>
											<!-- // Group END -->

											<!-- Group -->
											<div class="control-group">
												<label class="control-label" for="name">上级菜单</label>
												<div class="controls">
													<input class="easyui-combotree" data-options="url:'${ ctxStatic}/tree_data1.json',method:'get'" style="width:100%">
												</div>
											</div>
											<!-- // Group END -->

											<!-- Group -->
											<div class="control-group">
												<label class="control-label" for="username">链接</label>
												<div class="controls">
													<input class="span12" id="username" name="username"
														type="text" />
												</div>
											</div>
											<!-- // Group END -->

										</div>
										<!-- // Column END -->

										<!-- Column -->
										<div class="span6">

											<!-- Group -->
											<div class="control-group">
												<label class="control-label" for="password">排序</label>
												<div class="controls">
													<input class="span12" id="password" name="password"
														type="password" />
												</div>
											</div>
											<!-- // Group END -->

											<!-- Group -->
											<div class="control-group">
												<label class="control-label" for="confirm_password">权限标识</label>
												<div class="controls">
													<input class="span12" id="confirm_password"
														name="confirm_password" type="password" />
												</div>
											</div>
											<!-- // Group END -->

											<!-- Group -->
											<div class="control-group">
												<label class="control-label" for="email">名称</label>
												<div class="controls">
													<input class="span12" id="email" name="email" type="email" />
												</div>
											</div>
											<!-- // Group END -->
										
											
											

										</div>
										<!-- // Column END -->

									</div>
									<!-- // Row END -->
									
									

									<hr class="separator" />
									
				
									



									<!-- Form actions -->
									<div class="form-actions center">
										<button type="submit"
											class="btn btn-icon btn-primary  btn-small">
											<i></i>保存
										</button>
										<button type="button"
											class="btn btn-icon btn-default  btn-small"
											onclick="history.go(-1)">
											<i></i>返回
										</button>
									</div>
									<!-- // Form actions END -->

								</div>
							</div>
							<!-- // Widget END -->

						</form>
						<!-- // Form END -->

						<!--PAGE CONTENT ENDS-->
					</div>
					<!--/.span-->
				</div>
				<!--/.row-fluid-->
				
			
				
			</div>
			<!--/.page-content-->

			<%@ include file="/WEB-INF/page/include/ace-settings.jsp"%><!--/#ace-settings-container-->
			<!--/#ace-settings-container-->
		</div>
		<!--/.main-content-->
	</div>
	<!--/.main-container-->

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-small btn-inverse"> <i
		class="icon-double-angle-up icon-only bigger-110"></i>
	</a>

	<%@ include file="/WEB-INF/page/include/ace-script.jsp"%>

	<!-- jQuery Validate Plugin -->
	<script
		src="${ctxStatic}/common/theme/scripts/plugins/forms/jquery-validation/dist/jquery.validate.min.js"></script>
	<!-- Form Validator Page Demo Script -->
	<script src="${ctxStatic}/webadmin/js/userAdd.js"></script>
</body>
</html>
