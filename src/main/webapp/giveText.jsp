<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/7
  Time: 20:25
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>giveText</title>
</head>
<body>
<form action="" method="get" name=form>
    <label>
        <input type="text" name="message" />
    </label>
    <input type="submit" name="submit" value="提交">
</form>
<%
    String message = request.getParameter("message");
%>
<computer:backWords message="<%=message%>" />

<p><%=result%></p>
</body>
</html>