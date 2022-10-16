<%@ page import="java.io.IOException" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jdk.dynalink.linker.LinkerServices" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 994914269
  Date: 2022/10/7
  Time: 10:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>priceSum</title>
</head>
<body>
<%!
  public double getPriceSum(List<Double> list){
    double sum = 0D;
    for (Double i: list
         ) {
      sum = sum + i;
    }
    return sum;
  }
%>
<%
  ArrayList<Double> list = new ArrayList<>();
  list.add(10.25);
  list.add(15.14);
  list.add(25.55);

  for (Double i: list
       ) {
    out.println(  i);
  }

  out.println("最终结果"+getPriceSum(list));
%>
</body>
</html>
