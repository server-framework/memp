<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>配置管理</title>
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
		<li class="active"><a href="${ctx}/memp/mempSetting/form?id=${mempSetting.id}">配置管理</a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="mempSetting" action="${ctx}/memp/mempSetting/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
		<div class="control-group">
			<label class="control-label">一级分销比例：</label>
			<div class="controls">
				<form:input path="commission1" htmlEscape="false" class="input-small required number"/> %
				<span class="help-inline"><font color="red">*</font> </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="">二级分销比例：</label>
                <form:input path="commission2" htmlEscape="false" class="input-small required number"/> %
                <span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">乐币兑换比例：</label>
			<div class="controls">
				<form:input path="coinRate" htmlEscape="false" class="input-small required number"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
        <div class="control-group">
            <label class="control-label">最小提现乐币：</label>
            <div class="controls">
                <form:input path="minCash" htmlEscape="false" class="input-small required digits"/>
                <span class="help-inline"><font color="red">*</font> </span>
            </div>
        </div>
		<div class="control-group">
			<label class="control-label">分期数对应的利率：</label>
			<div class="controls">
				<table style="border:1px dashed lightgrey;">
					<tr style="text-align: center;font-weight: bold;"><td>1期</td><td>2期</td><td>3期</td><td>4期</td><td>5期</td><td>6期</td></tr>
					<tr>
						<td>&nbsp;<form:input path="r.r1" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r2" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r3" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r4" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r5" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r6" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
					</tr>
					<tr style="text-align: center;font-weight: bold;"><td>7期</td><td>8期</td><td>9期</td><td>10期</td><td>11期</td><td>12期</td></tr>
					<tr>
						<td>&nbsp;<form:input path="r.r7" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r8" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r9" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r10" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r11" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
						<td><form:input path="r.r12" htmlEscape="false" maxlength="4" class="input-mini required number"/><span class="help-inline"><font color="red">*</font> </span></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>
		</div>
	</form:form>
</body>
</html>