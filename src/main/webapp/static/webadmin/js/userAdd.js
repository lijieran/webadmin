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
	$("#id").focus();
	$("#validateSubmitForm").validate({
		rules: {
			
			no: "required",
			name: "required",
			username: {
				required: true,
				remote: "http://localhost:8080/webadmin/user/checkLoginName",
				minlength: 2
			},
			password: {
				required: true,
				minlength: 5
			},
			confirm_password: {
				required: true,
				minlength: 5,
				equalTo: "#password"
			},
			email: {
				required: true,
				email: true
			}
		},
		messages: {
			id: "请输入你的工号",
			name: "请输入你的用户名",
			username: {
				required: "请输入你的用户名",
				remote: "用户登录名已存在",
				minlength: "请输入一个长度最少是 2 的字符串"
			},
			password: {
				required: "请提供一个密码",
				minlength: "请输入一个长度最少是 5 的字符串"
			},
			confirm_password: {
				required: "请确认一下密码",
				minlength: "请输入一个长度最少是 5 的字符串",
				equalTo: "请输入与上面相同的密码"
			},
			email: "请输入正确格式的电子邮件"
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