<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>商品分类管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            //$("#name").focus();
            $("#inputForm").validate({
                submitHandler: function (form) {
                    loading('正在提交，请稍等...');
                    form.submit();
                },
                errorContainer: "#messageBox",
                errorPlacement: function (error, element) {
                    $("#messageBox").text("输入有误，请先更正。");
                    if (element.is(":checkbox") || element.is(":radio") || element.parent().is(".input-append")) {
                        error.appendTo(element.parent().parent());
                    } else {
                        error.insertAfter(element);
                    }
                }
            });
            $("#d1").hide();
            $("#d2").hide();
            $("#d3").hide();
            var parentId = "${mempProductCategory.parentId}";
            if (parentId == "0") {
                $("#d1").hide();
                $("#d2").hide();
                $("#d3").hide();
                $("#d0").show();
            } else if (parentId != "undefined" && parentId != ""){
                $("#d1").show();
                $("#d2").show();
                $("#d3").show();
                $("#d0").hide();
            }
        });

        function parentChange(obj) {
            if (obj.value == "0") {
                $("#d1").hide();
                $("#d2").hide();
                $("#d3").hide();
                $("#d0").show();
            } else {
                $("#d1").show();
                $("#d2").show();
                $("#d3").show();
                $("#d0").hide();
            }
        }
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/memp/mempProductCategory/">商品分类列表</a></li>
    <li class="active"><a
            href="${ctx}/memp/mempProductCategory/form?id=${mempProductCategory.id}">商品分类<shiro:hasPermission
            name="memp:mempProductCategory:edit">${not empty mempProductCategory.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission
            name="memp:mempProductCategory:edit">查看</shiro:lacksPermission></a></li>
</ul>
<br/>
<form:form id="inputForm" modelAttribute="mempProductCategory" action="${ctx}/memp/mempProductCategory/save"
           method="post" class="form-horizontal">
<form:hidden path="id"/>
<sys:message content="${message}"/>
<div class="control-group">
    <div class="control-group">
        <label class="control-label">父类：</label>
        <div class="controls">
            <form:select path="parentId" class="input-xlarge" onchange="parentChange(this)">
                <form:option value="0" label="无父类"/>
                <c:forEach items="${parents}" var="item">
                    <form:option label="${item.name}" value="${item.id}"/>
                </c:forEach>
            </form:select>
        </div>
    </div>
    <div class="control-group" id="d0">
        <label class="control-label">商品大类：</label>
        <div class="controls">
            <form:select path="categoryType" class="input-xlarge">
                <form:option value="0" label="请选择"/>
                <form:options items="${fns:getDictList('product_category_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
            <span class="help-inline"><font color="red">一级时必填</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">分类名称：</label>
        <div class="controls">
            <form:input path="name" htmlEscape="false" maxlength="255" class="input-xlarge required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group" id="d1">
        <label class="control-label">商品类型：</label>
        <div class="controls">
            <form:select path="typeId" class="input-xlarge">
                <form:option value="" label="请选择"/>
                <c:forEach items="${types}" var="item">
                    <form:option label="${item.name}" value="${item.id}"/>
                </c:forEach>
            </form:select>
            <span class="help-inline"><font color="red">二级时必填</font> </span>
        </div>
    </div>
    <div class="control-group" id="d2">
        <label class="control-label">关键字：</label>
        <div class="controls">
            <form:input path="keywords" htmlEscape="false" maxlength="64" class="input-xlarge "/>
        </div>
    </div>
    <div class="control-group" id="d3">
        <label class="control-label">单位：</label>
        <div class="controls">
            <form:input path="unit" htmlEscape="false" maxlength="4" class="input-xlarge "/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">排序：</label>
        <div class="controls">
            <form:input path="sortNo" htmlEscape="false" maxlength="2" class="input-xlarge digits required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">备注信息：</label>
        <div class="controls">
            <form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
        </div>
    </div>
    <div class="form-actions">
        <shiro:hasPermission name="memp:mempProductCategory:edit"><input id="btnSubmit" class="btn btn-primary"
                                                                         type="submit"
                                                                         value="保 存"/>&nbsp;</shiro:hasPermission>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
    </form:form>
</body>
</html>