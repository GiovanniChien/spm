<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Giovanni-Ch'ien
  Date: 2019/5/24
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选课名单</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="3">选课名单</th>
    </tr>
    <tr>
        <th>编号</th>
        <th>学号</th>
        <th>状态</th>
    </tr>
    <c:forEach items="${courses}" var="course" varStatus="i">
        <tr>
            <td>${i.count}</td>
            <td>${course.user.username}</td>
            <td>已选中</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
