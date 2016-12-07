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
	$("#validateSubmitForm").validate({
		rules: {
			
			name: "required",
			sort: {
				required: true,
				digits:true
			}
		
		},
		messages: {
			name: "请输入部门的名称",
			sort: {
				required: "请输入菜单排序号",
				digits: "请输入一个整数"
			}
		}
	});

	// propose username by combining first- and lastname
	/*$("#username").focus(function() {
		var no = $("#no").val();
		var lastname = $("#lastname").val();
		if(no && lastname && !this.value) {
			this.value = no + "." + lastname;
		}
	});*/


});