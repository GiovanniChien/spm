<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩导入</title>
</head>
<body>
<script type="text/javascript">
    function checkData() {
        var fileDir = $("file").val();
        var suffix = fileDir.substr(fileDir.lastIndexOf("."));
        if(""===fileDir){
            alert("选择需要导入的Excel文件");
            return false;
        }
        if(".xls"!==suffix&&".xlsx"!==suffix){
            alert("选择Excel格式的文件导入");
            return false;
        }
        return true;
    }
</script>
<form action="${pageContext.request.contextPath}/grade/import" method="post" enctype="multipart/form-data">
    <input id="file" type="file" name="file" accept=".xls,.xlsx">
    <input type="submit" value="导入" onclick="return checkData()">
</form>
<table>
    <tr>
        <th>编号</th>
        <th>学号</th>
        <th>平时成绩</th>
        <th>期中成绩</th>
        <th>期末成绩</th>
        <th>实践成绩</th>
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
            <td><a href="${pageContext.request.contextPath}/grade/update_import?id=${course.id}">修改</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="7">
            <a href="${pageContext.request.contextPath}/grade/submit_import">
                <input type="button" value="确认">
            </a>
        </td>
    </tr>
</table>
</body>
</html>
