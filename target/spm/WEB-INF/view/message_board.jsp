<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言板</title>
</head>
<body>
<h1>留言板</h1>
<hr>
<c:forEach items="${msgList}" var="msg">
    <p>${msg.content}</p>
    <p>${msg.user.username}&nbsp;&nbsp;&nbsp;&nbsp;${msg.time}</p>
    <hr>
</c:forEach>
<a href="${pageContext.request.contextPath}/message/message_board?page=1"><<</a>&nbsp;&nbsp;
<c:forEach var="i" begin="1" end="${page.pages}">
    <a href="${pageContext.request.contextPath}/message/message_board?page=${i}">${i}</a>&nbsp;&nbsp;
</c:forEach>
<a href="${pageContext.request.contextPath}/message/message_board?page=${page.pages}">>></a>
<hr>
<form method="post" action="${pageContext.request.contextPath}/message/leave">
    <textarea name="content" rows="5" cols="25"></textarea><br>
    <input type="submit" value="留言">
</form>
</body>
</html>
