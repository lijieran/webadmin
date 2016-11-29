/* ==========================================================
 * QuickAdmin v1.3.1
 * form_validator.js
 * 
 * http://www.mosaicpro.biz
 * Copyright MosaicPro
 *
 * Built exclusively for sale @Envato Marketplaces
 * ========================================================== */ 

$.validator.setDefaults(
{
	submitHandler: function() 
	{ 
		loading('正在提交，请稍等...');
		//alert("submitted!"); 
		form.submit();
	},
	showErrors: function(map, list) 
	{
		this.currentElements.parents('label:first, .controls:first').find('.error').remove();
		this.currentElements.parents('.control-group:first').removeClass('error');
		
		$.each(list, function(index, error) 
		{
			var ee = $(error.element);
			var eep = ee.parents('label:first').length ? ee.parents('label:first') : ee.parents('.controls:first');
			
			ee.parents('.control-group:first').addClass('error');
			eep.find('.error').remove();
			eep.append('<p class="error help-block"><span class="label label-important">' + error.message + '</span></p>');
		});
		//refreshScrollers();
	}
});

$(function()
{
	// validate signup form on keyup and submit
	var tree = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
	// 不选择父节点
	tree.setting.check.chkboxType = { "Y" : "ps", "N" : "s" };
	
	$("#id").focus();
	$("#validateSubmitForm").validate({
		rules: {
			id: "required",
			name: "required",
			email: {
				required: true,
			}
		},
		messages: {
			id: "请输入角色编号",
			name: "请输入角色名"
		
		},
		submitHandler: function(form){
			var ids = [], nodes = tree.getCheckedNodes(true);
			for(var i=0; i<nodes.length; i++) {
				ids.push(nodes[i].id);
			}
			$("#menus").val(ids);
			loading('正在提交，请稍等...');
			form.submit();
		}
	});



});