<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>商品分类管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {

        });

        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/memp/mempProductCategory/">商品分类列表</a></li>
    <shiro:hasPermission name="memp:mempProductCategory:edit">
        <li><a href="${ctx}/memp/mempProductCategory/form">商品分类添加</a></li>
    </shiro:hasPermission>
</ul>
<form:form id="searchForm" modelAttribute="mempProductCategory" action="${ctx}/memp/mempProductCategory/" method="post"
           class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <ul class="ul-form">
        <li><label>商品大类：</label>
            <form:select path="categoryType" class="input-xlarge">
                <form:option value="" label="请选择"/>
                <form:options items="${fns:getDictList('product_category_type')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </li>
        <li><label>父类：</label>
            <form:select path="parentId" class="input-xlarge">
                <form:option value="0" label="无父类"/>
                <c:forEach items="${parents}" var="item">
                    <form:option label="${item.name}" value="${item.id}"/>
                </c:forEach>
            </form:select>
        </li>
        <li><label>类型名称：</label>
            <form:input path="name" htmlEscape="false" maxlength="255" class="input-medium"/>
        </li>
        <li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
        <li class="clearfix"></li>
    </ul>
</form:form>
<sys:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>级别</th>
        <th>类型名称</th>
        <th>商品类型</th>
        <th>关键字</th>
        <th>单位</th>
        <th>排序</th>
        <shiro:hasPermission name="memp:mempProductCategory:edit">
            <th>操作</th>
        </shiro:hasPermission>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="mempProductCategory">
        <tr>
            <td>
                    ${mempProductCategory.parentId}
            </td>
            <td>
                    ${mempProductCategory.name}
            </td>
            <td>
                    ${mempProductCategory.typeId}
            </td>
            <td>
                    ${mempProductCategory.keywords}
            </td>
            <td>
                    ${mempProductCategory.unit}
            </td>
            <td>
                    ${mempProductCategory.sortNo}
            </td>
            <shiro:hasPermission name="memp:mempProductCategory:edit">
                <td>
                    <a href="${ctx}/memp/mempProductCategory/form?id=${mempProductCategory.id}">修改</a>
                    <a href="${ctx}/memp/mempProductCategory/delete?id=${mempProductCategory.id}"
                       onclick="return confirmx('确认要删除该商品分类吗？', this.href)">删除</a>
                </td>
            </shiro:hasPermission>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>