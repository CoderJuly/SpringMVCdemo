<%--
  Created by IntelliJ IDEA.
  User: 11050
  Date: 2016/9/24
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Users</title>
</head>
<body>
<div>
    <h1>SpringMVC 播客管理系统</h1>
    <hr/>
    <h3>所有用户<a href="/admin/user/add" type="button" class="btn btn-primary btn-sm ">添加</a></h3>
    <c:if test="${ empty userlist}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>user表为空,请<a href="/admin/users/add"
                                                                                               type="button"
                                                                                               class="btn btn-primary btn-sm">添加</a>


        </div>


    </c:if>

    <c:if test="${empty userlist}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>ID</th>
                <th>昵称</th>
                <th>姓名</th>
                <th>密码</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${userlist}" var="user">
                <td>${user.id}</td>
                <td>${user.nickname}</td>
                <td>${user.firstname}</td>
                <td>${user.lastname}</td>
                <td>
                    <a href="/admin/users/show/${user.id}" type="button" class="btn btn-sm btn-success">详情</a>
                    <a href="/admin/users/update/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                    <a href="/admin/users/delete/${user.id}" type="button" class="btn btn-sm btn-danger">删除</a>
                </td>
            </c:forEach>
        </table>
    </c:if>
</div>

</body>
</html>
