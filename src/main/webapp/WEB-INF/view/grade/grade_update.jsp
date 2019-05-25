<%--
  Created by IntelliJ IDEA.
  User: Giovanni-Ch'ien
  Date: 2019/5/25
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩更新</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/${jumpUrl}">
        <input type="hidden" value="${course.id}" name="id">
        <table border="1">
            <tr>
                <th colspan="2">成绩更新</th>
            </tr>
            <tr>
                <td>学号</td>
                <td>${course.user.username}</td>
            </tr>
            <tr>
                <td>平时成绩</td>
                <td><input type="text" value="${course.dailyGrade}" name="dailyGrade"></td>
            </tr>
            <tr>
                <td>期中成绩</td>
                <td><input type="text" value="${course.midGrade}" name="midGrade"></td>
            </tr>
            <tr>
                <td>期末成绩</td>
                <td><input type="text" value="${course.finalGrade}" name="finalGrade"></td>
            </tr>
            <tr>
                <td>实践成绩</td>
                <td><input type="text" value="${course.practiceGrade}" name="practiceGrade"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="提交"></td>
            </tr>
        </table>
    </form>
</body>
</html>
