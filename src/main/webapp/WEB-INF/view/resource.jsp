<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<html>
  <head>
    <meta content="text/html;charset=UTF-8" />
    <title>在线资源</title>
    <link
    rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
  />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/resource.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
  </head>
  <body>
    <table id="resource">
      <tr class="tr_head">
        <th><input type="checkbox" name="all" id="all" value="0" /></th>
        <th>名称</th>
        <th>大小</th>
        <th>操作</th>
      </tr>
      <tr>
        <td>
          <input type="checkbox" name="choose" id="resource1" value="1" />
        </td>
        <td>12</td>
        <td>12.1M</td>
        <td>
          <input type="button" id="upload" value="上传" />
          <input type="button" id="download" value="下载" />
          <input type="button" id="delete" value="删除" />
        </td>
      </tr>
      <tr>
        <td>
          <input type="checkbox" name="choose" id="resource2" value="2" />
        </td>
        <td>哈哈</td>
        <td>32.2kb</td>
        <td>
          <input type="button" id="upload" value="上传" />
          <input type="button" id="download" value="下载" />
          <input type="button" id="delete" value="删除" />
        </td>
      </tr>
      <tr>
        <td>
          <input type="checkbox" name="choose" id="resource3" value="3" />
        </td>
        <td>嗯</td>
        <td>123.1mb</td>
        <td>
          <input type="button" id="upload" value="上传" />
          <input type="button" id="download" value="下载" />
          <input type="button" id="delete" value="删除" />
        </td>
      </tr>
    </table>

    <script src="${pageContext.request.contextPath}/js/resource.js"></script>
  </body>
</html>
