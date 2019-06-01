<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩管理</title>
</head>
<body>
<table>
    <tr>
        <th>编号</th>
        <th>学号</th>
        <th>平时成绩</th>
        <th>期中成绩</th>
        <th>期末成绩</th>
        <th>实践成绩</th>
        <th>总成绩</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${courses}" var="course" varStatus="i">
        <tr>
            <td>${i.count}</td>
            <td>${course.user.username}</td>
            <td>${course.dailyGrade}</td>
            <td>${course.midGrade}</td>
            <td>${course.finalGrade}</td>
            <td>${course.practiceGrade}</td>
            <td>${course.totalGrade}</td>
            <td><a href="${pageContext.request.contextPath}/grade/update?id=${course.id}">修改</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
