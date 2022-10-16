<%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/7
  Time: 18:46
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>change1</title>
</head>
<body>
    <%
        int money = Integer.parseInt(request.getParameter("money"));
        Integer value5 = Integer.valueOf(request.getParameter("value5"));
        int value1 = 0;
        while( money != 0 ){
            value1 ++;
            money = money-1;
        }
    %>

    <jsp:forward page="result.jsp">
        <jsp:param name="money" value="<%=money%>"/>
        <jsp:param name="value5" value="<%=value5%>"/>
        <jsp:param name="value1" value="<%=value1%>"/>
    </jsp:forward>
</body>
</html>
