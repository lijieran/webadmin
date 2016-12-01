<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>菜单添加-后台管理系统</title>

<%@ include file="/WEB-INF/page/include/ace-meta.jsp"%>

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
					<li class="active">菜单添加</li>
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
					<div class="page-header position-relative">
						<h1>
							菜单信息
							
						</h1>
					</div><!--/.page-header-->

					<div class="row-fluid">
						<div class="span12">
							<!--PAGE CONTENT BEGINS-->

							<form class="form-horizontal"  id="validateSubmitForm"
							method="post" autocomplete="off" action="${ctx }/menu/save" />
							
							  <!--   <div class="control-group">
									<label class="control-label" for="id">菜单ID</label>

									<div class="controls">
										<input type="text" id="id" name="id" />
									</div>
								</div> -->
								<div class="control-group">
									<label class="control-label" for="name">名称</label>

									<div class="controls">
										<input type="text" id="name" name="name" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label" for="parentId"">上级菜单</label>

									<div class="controls">
										<input class="easyui-combotree" name="parentId"  value="0" data-options="url:'${ctx}/menu/combotree',method:'get'" >
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="href">链接</label>

									<div class="controls">
										<input type="text" id="href"  name="href"/>
										<span class="help-inline">点击菜单跳转的页面</span>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="permission"  >权限标识</label>

									<div class="controls">
										<input type="text" id="permission"  name="permission" />
										&nbsp; &nbsp;
										<input type="checkbox" id="id-disable-check"  name="isShow"/>
										<label class="lbl help-inline" for="id-disable-check"> 是否显示</label>
									</div>
								</div>

								

								<div class="control-group">
									<label class="control-label" for="sort">排序</label>

									<div class="controls">
										<input type="text" id="sort" name="sort" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label" for="icon">图标</label>

									<div class="controls">
										<input type="text" id="icon" name="icon"  />
									</div>
								</div>


								<div class="form-actions">
									<button class="btn btn-info" type="submit">
										保存
									</button>

									&nbsp; &nbsp; &nbsp;
									<button class="btn" type="reset" onclick="history.go(-1)">
										返回
									</button>
								</div>

								<div class="hr"></div>


							
						

							
							
							</form>

						
						



								
							</div><!--PAGE CONTENT ENDS-->
						</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->

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
	<script src="${ctxStatic}/webadmin/js/menuAdd.js"></script>
</body>
</html>
