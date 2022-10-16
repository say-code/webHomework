<%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/7
  Time: 18:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>change5</title>
</head>
<body>
<%
    int value5 = 0;
    Integer money = Integer.valueOf(request.getParameter("money"));
    while( money - 5 >= 0){
        value5 ++;
        money = money-5;
    }

%>
<jsp:forward page="change1.jsp">
    <jsp:param name="money" value="<%=money%>"/>
    <jsp:param name="value5" value="<%=value5%>"/>
</jsp:forward>
</body>
</html>
