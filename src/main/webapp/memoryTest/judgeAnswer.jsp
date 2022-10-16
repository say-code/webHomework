<%@ page import="com.memoryTest.GameFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/15
  Time: 23:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>judgeAnswer</title>
</head>
<body>
    <%
        //校对答案
        String answer = request.getParameter("answer");
        String trueAnswer = GameFactory.getStringBufferIndex().toString();
        System.out.println("ans"+answer);
        System.out.println(trueAnswer);
        if (answer.equals(trueAnswer)){
            out.println("挑战成功");
        }else {
            out.println("挑战失败，少侠请重新来过~");
        }
    %>
    <a href="choiceGrage.jsp">点击返回</a>
</body>
</html>
