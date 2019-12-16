<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品类型管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">

		var specInfoList;
		var i;
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

			specInfoList = eval(${specInfoList});
			i = ${specsSize};
			if (i != 0) {
				var htmlTr = "";
				$.each(specInfoList, function (index, item) {
					htmlTr = htmlTr + "<tr>" +
							"<td><input name='spec' value='"+item.spec+"' style='border: 1px solid lightgrey;height: 28px;border-radius:5px;' class='input-mini'/></td>'" +
							"<td><input name='item' value='"+item.item+"' style='border: 1px solid lightgrey;height: 28px;border-radius:5px;' class='input-xxlarge'/></td>" +
							"<td><a onclick='delRow(this)' style='cursor: pointer;'>删除</a></td>" +
							"</tr>";
				});
				console.log(htmlTr);
				$("#specinfo").append(htmlTr);
			}
		});

		$("#addRow").live("click", function() {
			if (i == 3) {
				$.jBox.tip("最多只能添加3个规格", '提示');
				return;
			}
			$("#specinfo").append("<tr>" +
					"<td><input name='spec' style='border: 1px solid lightgrey;height: 28px;border-radius:5px;' class='input-mini'/></td>'" +
					"<td><input name='item' style='border: 1px solid lightgrey;height: 28px;border-radius:5px;' class='input-xxlarge'/></td>" +
					"<td><a onclick='delRow(this)' style='cursor: pointer;'>删除</a></td>" +
					"</tr>");
			i++;
		});
		function delRow(obj) {
			$(obj).parents("tr").remove();
			i--;
		}
	</script>
	<style>
		table {border:1px dashed lightgrey;}
		table tr {text-align: center;font-weight: bold;border:1px dashed lightgrey;}
		table tr td {padding-top: 13px;padding-bottom: 10px; border: 1px dashed lightgrey;}
	</style>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/memp/mempProductType/">商品类型列表</a></li>
		<li class="active"><a href="${ctx}/memp/mempProductType/form?id=${mempProductType.id}">商品类型<shiro:hasPermission name="memp:mempProductType:edit">${not empty mempProductType.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="memp:mempProductType:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="mempProductType" action="${ctx}/memp/mempProductType/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">类型：</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="255" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">默认规则：</label>
			<div class="controls">
				<table id="specinfo">
					<tr>
						<td style="width: 20%;">规格</td>
						<td style="width: 65%;">规格项（<font color="red">多项已“|”分割</font>）</td>
						<td style="width: 15%;"><input id="addRow" class="btn" type="button" value="添加"></td>
					</tr>
<%--					<tr>--%>
<%--						<td><form:input path="spec" htmlEscape="false" maxlength="1024" class="input-mini"/></td>--%>
<%--						<td><form:input path="item" htmlEscape="false" maxlength="1024" class="input-xxlarge"/></td>--%>
<%--					</tr>--%>
				</table>
				<br>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="memp:mempProductType:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>