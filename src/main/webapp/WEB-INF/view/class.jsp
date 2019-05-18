<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<div>
    <div>${loginResult.username}
    </div>
    <div>
        <div><img/></div>
        <div>
            <input type="button" id="class-btn" value=${loginResult.courseStatus}/>
        </div>
    </div>
    <div></div>
    <div></div>
</div>
<script src="${pageContext.request.contextPath}/js/class.js"></script>
</body>
</html>
