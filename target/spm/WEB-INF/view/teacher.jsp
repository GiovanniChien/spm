<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师</title>
    <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    />
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/teacher.css"
    />
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<div class="teacher-box">
    <div class="teacher-class">
        <div class="pic">
            <img src="${pageContext.request.contextPath}/image/class_small.jpg" alt="小课程图片"/>
            <div class="name">软件项目课程管理</div>
        </div>
    </div>
    <div class="teacher-profile">
        <div class="teacher-message"><i class="far fa-envelope"></i></div>
        <div class="teacher-icon"><i class="far fa-user"></i></div>
        <div class="teacher-name">${loginResult.username}</div>
    </div>
    <div class="teacher-menu">
        <ul>
            <li class="first"><a href="#" id="course">选课管理</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/course/list" id="confirm">选课名单</a></li>
                    <li><a href="${pageContext.request.contextPath}/course/confirmList" id="setting">确认选课</a></li>
                </ul>
            </li>
            <li><a href="${pageContext.request.contextPath}/resource/show" id="resource">资源管理</a></li>
            <li class="last"><a href="${pageContext.request.contextPath}/grade/show" id="score">成绩管理</a>
                <ul class="sublast">
                    <li><a href="${pageContext.request.contextPath}/grade/show_import" id="import">成绩导入</a></li>
                    <li><a href="#" id="analyse">成绩分析</a></li>
                    <li><a href="${pageContext.request.contextPath}/grade/notice_list" id="report">成绩通知</a></li>
                </ul>
            </li>
            <li><a href="${pageContext.request.contextPath}/message/message_board?page=1" id="message_board">留言板</a></li>
        </ul>
    </div>
    <iframe src="${pageContext.request.contextPath}/class/class_info" id="teacher-main">
    </iframe>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/teacher.js"></script>
</body>
</html>
