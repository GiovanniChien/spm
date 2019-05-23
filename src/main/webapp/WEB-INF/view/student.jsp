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
          <li>
            <a href="#" id="info">课程信息</a>
            <ul>
              <li><a href="#" id="content">课程内容</a></li>
              <li><a href="#" id="practice">课程实践</a></li>
              <li><a href="#" id="team">教学团队</a></li>
            </ul>
          </li>
          <li><a href="${pageContext.request.contextPath}/student/test" id="test">网上测试</a></li>
          <li><a href="${pageContext.request.contextPath}/resource">资源下载</a></li>
          <li><a href="#" id="work">行业信息</a></li>
          <li><a href="#" id="contact">联系我们</a></li>
        </ul>
      </div>
      <div class="student-main" id="student-main">
        <p>
          &emsp;&emsp;随着信息技术的飞速发展，软件产品的规模也越来越庞大，各软件企业都在积极将软件项目管理引入到开发活动中，对软件项目实行有效的管理。软件项目管理是为了使软件项目能够按照预定的成本、进度、质量顺利完成，而进行分析和管理的活动。另外，进行软件项目管理有利于将个人开发能力转化成企业的开发能力，企业的软件开发能力越高，表明这个企业的软件生产越趋向于成熟，企业越能够稳定发展。特别是在当今的软件项目中，项目管理的质量与软件产品的质量有着直接的对应关系，因此，提高项目管理的能力对于软件组织生产力的提高是极为重要的。
        </p>
        <p>
          &emsp;&emsp;《软件项目管理》是软件工程专业开设的专业课程，以培训更加专业的软件项目管理者为目的，统计表明：97%项目的成功是由有经验的项目经理领导的结果。而且随着我国软件产业规模的不断扩大，保证项目的成功，需要更多高素质的项目管理者。该课程涉及内容广泛、实践性强、新技术新方法多。
          本课程是向软件项目管理的人员传授项目管理的理论、方法以及技巧，让学生可以在短时间内掌握软件项目管理的基本知识和实践能力。讲授了作为一个软件项目经理的主要工作，职责和权利。本课程注重理论与实际的结合，通过实际工作中的案例说明帮助您对所学内容的消化和理解。本课程是一门理论基础与先进实践技术相结合的工程类课程，它涵盖了项目管理的基本概念、软件项目管理理论、软件项目管理方法、软件项目管理工具等多方面的内容。
        </p>
        <p>
          &emsp;&emsp;本课程中，首先通过面授的方式，讲述项目管理基本概念、软件过程概念、软件项目管理经典理论、技术等基础内容以及软件项目工具；其次，选择比较典型的软件企业的项目管理案例，逐步向学生讲述案例的实施过程；最后，课程还安排课内实验和课外实践，课内实验要求学生采用项目管理工具编制项目管理计划；课外实践是根据一个具体项目，应用所学的知识实施项目管理，并采用工具跟踪控制项目。
        </p>
        <p>
          &emsp;&emsp;教学过程中，面授采用教师和学员之间的多向交流的方式，对软件项目中的各种实际问题展开深入的讨论，充分激发学生的思考力，提高学生分析和解决问题的能力，以达到更好的教学效果；项目实践部分以分组的方式进行一个小项目,每组5人左右,每人分担不同的角色，其中选定一个项目经理,由项目经理对项目组中的成员分配角色，包括需求管理角色，设计角色，开发角色，质量管理角色等，然后设定不同的职责，让学生熟悉团队开发的基本模式，协同开发。由项目经理组织项目计划的编制和跟踪管理。
        </p>
        <p>
          &emsp;&emsp;教学过程中除了面授的主讲教师，还有助理教师负责实践环节。教学需要多媒体教室一间，用于面授教学和案例演示；具备软件管理工具的机器，如：Microsoft
          project和Rational Portfolio Manager。
        </p>
      </div>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/student.js"></script>
  </body>
</html>
