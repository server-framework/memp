<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>微信用户管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/memp/mempUserWeixinInfo/">微信用户列表</a></li>
		<li class="active"><a href="${ctx}/memp/mempUserWeixinInfo/form?id=${mempUserWeixinInfo.id}">微信用户<shiro:hasPermission name="memp:mempUserWeixinInfo:edit">${not empty mempUserWeixinInfo.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="memp:mempUserWeixinInfo:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="mempUserWeixinInfo" action="${ctx}/memp/mempUserWeixinInfo/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">用户id：</label>
			<div class="controls">
				<sys:treeselect id="user" name="user.id" value="${mempUserWeixinInfo.user.id}" labelName="user.name" labelValue="${mempUserWeixinInfo.user.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">应用id：</label>
			<div class="controls">
				<form:input path="appId" htmlEscape="false" maxlength="128" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">微信对应第三方应用的唯一标识：</label>
			<div class="controls">
				<form:input path="openId" htmlEscape="false" maxlength="128" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">统一开发平台的id：</label>
			<div class="controls">
				<form:input path="unionId" htmlEscape="false" maxlength="128" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">设备id：</label>
			<div class="controls">
				<form:input path="deviceId" htmlEscape="false" maxlength="512" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">微信用户信息：</label>
			<div class="controls">
				<form:input path="userInfo" htmlEscape="false" maxlength="2048" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="memp:mempUserWeixinInfo:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>