<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/14
  Time: 11:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>giveText</title>
</head>
<body>
    <%
        Date date = new Date(System.currentTimeMillis());
    %>

    <computer:calendar date="<%=String.valueOf(date.getTime())%>" />

</body>
</html>
