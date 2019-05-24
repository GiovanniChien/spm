<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta content="text/html;charset=utf-8" />
    <title>学生</title>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/student.css"
    />
    <script
      type="text/javascript"
      src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"
    ></script>
  </head>
  <body>
    <div class="student-box">
      <div class="student-class">
        <div class="pic">
          <img src="${pageContext.request.contextPath}/image/class_small.jpg" alt="小课程图片" />
          <div class="name">软件项目课程管理</div>
        </div>
      </div>
      <div class="student-profile">
        <div class="student-message"><i class="far fa-envelope"></i></div>
        <div class="student-icon"><i class="far fa-user"></i></div>
        <div class="student-name">${loginResult.username}</div>
      </div>
      <div class="student-menu">
        <ul>
          <li class="first">
            <a href="#" id="info">课程信息</a>
            <ul>
              <li><a href="${pageContext.request.contextPath}/class/class_content" id="content">课程内容</a></li>
              <li><a href="${pageContext.request.contextPath}/class/class_practice" id="practice">课程实践</a></li>
              <li><a href="${pageContext.request.contextPath}/class/class_team" id="team">教学团队</a></li>
            </ul>
          </li>
          <li><a href="${pageContext.request.contextPath}/student/test" id="test">网上测试</a></li>
          <li><a href="${pageContext.request.contextPath}/resource/show" id="resource">资源下载</a></li>
          <li><a href="${pageContext.request.contextPath}/class/class_work" id="work">行业信息</a></li>
          <li><a href="${pageContext.request.contextPath}/class/class_contact" id="contact">联系我们</a></li>
        </ul>
      </div>
      <iframe src="${pageContext.request.contextPath}/class/class_info" id="student-main">
      </iframe>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/student.js"></script>
  </body>
</html>
