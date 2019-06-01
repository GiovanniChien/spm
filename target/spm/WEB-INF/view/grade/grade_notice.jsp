<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>成绩预警</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<script type="text/javascript">
    $(document).ready(function () {
        var msg = "${msg}";
        if (msg !== "") {
            alert(msg);
        }
    });
</script>
<form method="post" action="${pageContext.request.contextPath}/grade/notice">
    <table>
        <tr>
            <th><input type="checkbox">全选</th>
            <th>编号</th>
            <th>学号</th>
            <th>平时成绩</th>
            <th>期中成绩</th>
            <th>期末成绩</th>
            <th>实践成绩</th>
            <th>总成绩</th>
        </tr>
        <c:forEach items="${courses}" var="course" varStatus="i">
            <tr>
                <td><input type="checkbox" name="selected" value="${course.id}"></td>
                <td>${i.count}</td>
                <td>${course.user.username}</td>
                <td>${course.dailyGrade}</td>
                <td>${course.midGrade}</td>
                <td>${course.finalGrade}</td>
                <td>${course.practiceGrade}</td>
                <td>${course.totalGrade}</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="8"><input type="submit" value="通知"></td>
        </tr>
    </table>
</form>
</body>
</html>
