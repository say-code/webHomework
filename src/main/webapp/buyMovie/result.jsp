<%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/7
  Time: 18:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
  <%
    String value5 = request.getParameter("value5");
    String value1 = request.getParameter("value1");
  %>
  <a href="20210830-032147121.mp4">点击此处播放视频</a>
  <p>返还的5元张数为：<%=value5%></p>
  <p>返还的1元张数为：<%=value1%></p>
</body>
</html>
