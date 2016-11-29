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
						<li class="active">菜单管理</li>
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
								     菜单添加
								    </button>
								</div>
			                   
			                  <table data-toggle="table"
								       data-url="http://localhost:8080/webadmin/menu/list"
								       data-query-params="queryParams"
								       data-pagination="true"
								       data-search="false"
								       data-toolbar="#toolbar"
								       data-height="500">
								    <thead>
								    <tr>
								         <th data-field="id">菜单ID</th>
								         <th data-field="parentId">父菜单ID</th>
								        <th data-field="name">菜单名称</th>
								         <th data-field="href">链接</th>
								         <th data-field="sort">排序</th>
								        <th data-field="isShow">是否显示</th>
								        <shiro:hasPermission name="system:menu:edit">
								              <th data-field="action" data-formatter="actionFormatter" data-events="actionEvents">操作</th>    
								        </shiro:hasPermission>		     		        
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
         <script type="text/javascript">
     	
         </script>
	      <%@ include file="/WEB-INF/page/include/ace-script.jsp"%>
	      <script type="text/javascript">
			  	$("#menuAdd-button").click(function(){
					window.location.href = "${ctx}/menu/menuAdd";
				});
			  	
			  	function actionFormatter(value, row, index) {
			  	    return [
			  	        '<a class="edit ml10" href="javascript:void(0)" title="Edit">',
			  	        '修改',
			  	        '</a>',
			  	        '<a class="remove ml10" href="javascript:void(0)"  title="Remove">',
			  	        '删除',
			  	        '</a>'
			  	    ].join('');
			  	}

			  	window.actionEvents = {
			  	    'click .edit': function (e, value, row, index) {
			  	    	window.location.href = "${ctx}/menu/menuUpdate?id="+row.id;
			  	    },
			  	    'click .remove': function (e, value, row, index) {
			  	       // alert('You click remove icon, row: ' + row.id);
			  	       // console.log(value, row, index);
			  	        
				  	      bootbox.confirm({
					  		    message: "确认要删除该菜单吗？",
					  		    buttons: {
					  		        confirm: {
					  		            label: '确定',
					  		            className: 'btn-success btn-small'
					  		        },
					  		        cancel: {
					  		            label: '取消',
					  		            className: 'btn-danger btn-small'
					  		        }
					  		    },
					  		    callback: function (result) {
					  		        if(result) {
					  		        	window.location.href = "${ctx}/menu/delete?id="+row.id;
					  		        }
					  		    }
					  		});
			  	    }
			  	};
			  	
			
	      </script>
	</body>
</html>
