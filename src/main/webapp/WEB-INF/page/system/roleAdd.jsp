<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>角色添加-后台管理系统</title>

		<%@ include file="/WEB-INF/page/include/ace-meta.jsp"%>
		<link href="${ctxStatic}/common/jquery-ztree/3.5.12/css/zTreeStyle/zTreeStyle.min.css" rel="stylesheet" type="text/css"/>

		

	</head>
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
					<li class="active">角色添加</li>
				</ul>
				<!--.breadcrumb-->

				<div class="nav-search" id="nav-search">
					<form class="form-search" />
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
							角色信息
							
						</h1>
					</div><!--/.page-header-->

					<div class="row-fluid">
						<div class="span12">
							<!--PAGE CONTENT BEGINS-->

							<form class="form-horizontal"  id="validateSubmitForm"
							method="post" autocomplete="off" action="${ctx }/role/save" />
							
							    <div class="control-group">
									<label class="control-label" for="id">角色ID</label>

									<div class="controls">
										<input type="text" id="id" name="id" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="name">名称</label>

									<div class="controls">
										<input type="text" id="name" name="name" />
									</div>
								</div>
								

								<div class="control-group">
									<label class="control-label" for="href">角色授权</label>

									<div class="controls">
										<input type="hidden" id="menus"  name="menus">
										<div id="treeDemo" class="ztree" style=""></div>
										</input>
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

						
						



								
						</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->
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
	<script src="${ctxStatic}/common/theme/scripts/plugins/forms/jquery-validation/dist/jquery.validate.min.js"></script>
	<!-- Form Validator Page Demo Script -->
	
	<script src="${ctxStatic}/common/jquery-ztree/3.5.12/js/jquery.ztree.all-3.5.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		
		var setting = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =${treelist};
		

	
		
		$(document).ready(function(){
			
		});
	
	</script>
	<script src="${ctxStatic}/webadmin/js/roleAdd.js"></script>
</body>
</html>
