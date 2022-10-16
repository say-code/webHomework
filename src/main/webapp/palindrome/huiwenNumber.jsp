<%@ page import="java.util.LinkedList" %><%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/14
  Time: 16:32
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>huiwenNumber</title>
</head>
<body>
    <%!
        public boolean ispalindrome(Integer num){
            String numbers = num.toString();
            char[] numberList = numbers.toCharArray();
            StringBuilder stringBuilder = new StringBuilder();
            for (char number : numberList){
                stringBuilder.insert(0,number);
            }
            return stringBuilder.toString().equals(numbers);
        }

        public Integer reNumber(Integer num){
            String numbers = num.toString();
            char[] numberList = numbers.toCharArray();
            StringBuilder stringBuilder = new StringBuilder();
            for (char number : numberList){
                stringBuilder.insert(0,number);
            }
            return Integer.parseInt(stringBuilder.toString());
        }
    %>
    <%
        String number = request.getParameter("number");
        if (number!=null){
            Integer num = Integer.parseInt(number);
            while (!ispalindrome(num)){
                num = num + reNumber(num);
            }
            out.println("<p>最终的回文数为："+num+"</p>");
        }else {
            out.println("参数为空或传参为非整数，请检查！");
        }
    %>

</body>
</html>
