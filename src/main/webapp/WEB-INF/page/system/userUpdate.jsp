<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>菜单添加-后台管理系统</title>

<%@ include file="/WEB-INF/page/include/ace-meta.jsp"%>

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
			
				<div class="page-header position-relative">
						<h1>
							用户信息
							
						</h1>
					</div><!--/.page-header-->
			
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
							method="post" autocomplete="off" action="${ctx }/user/update">

							     <div class="control-group">
									<label class="control-label" for="id">用户ID</label>

									<div class="controls">
										<input type="text" id="id" name="id"  value="${entity.id }"  readonly=true/>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="username">账号</label>

									<div class="controls">
										<input type="text" id="username" name="username"  value="${entity.username }" readonly=true/>
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label" for="name">姓名</label>

									<div class="controls">
										<input type="text" id="name" name="name"  value="${entity.name }"/>
									</div>
								</div>
								
				

							
										<div class="control-group">
											<label class="control-label">角色</label>

											<div class="controls">
											    
											    <c:forEach items="${roles }" var="entity">
											       <label class="checked-label">
														<input name="roles" type="checkbox"  value="${entity.value }"  <c:if test="${entity.checked }">checked</c:if> />
														<span class="lbl">${entity.name }</span>
												   </label>
											    </c:forEach>
												

												<!-- <label class="checked-label ">
													<input name="form-field-checkbox" type="checkbox" />
													<span class="lbl"> choice 2</span>
												</label>

												<label>
													<input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox" />
													<span class="lbl"> choice 3</span>
												</label>

												<label>
													<input name="form-field-checkbox" type="checkbox" />
													<span class="lbl"> disabled</span>
												</label> -->
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
</body>
</html>
