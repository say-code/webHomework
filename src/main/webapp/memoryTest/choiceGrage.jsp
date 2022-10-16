<%@ page import="com.memoryTest.GameFactory" %><%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/14
  Time: 17:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>choiceGrage</title>
    <link>
</head>
<body>
    <%-- 此文件用来设定难度--%>

    <%
        //尝试获取method，如果没有，则提示用户选择method
        String method = request.getParameter("method");
        if(method==null){
    %>
    <%--  向自己发起带参请求，参为method  --%>
    <form action="" method="get">
        <p>请选择你的难度等级：</p>
        <button onclick="" value="1" name="method">简单</button>
        <button onclick="" value="2" name="method">普通</button>
        <button onclick="" value="3" name="method">困难</button>
        <button onclick="" value="4" name="method">羊了个羊</button>
    </form>
    <%
        //若含有参数，由于GameFactory的目的创建一个MethodConfig的单例，来保证前后得到的答案相同，此时难度改变，需要重置单例
        }else {
            GameFactory.refresh();
            GameFactory.setMethod(Integer.parseInt(method));
    %>
        <%--  显示答案  --%>
        <p><%=GameFactory.getStringBuffer()%></p>
        <p >你共有<span id="time"><%=GameFactory.getTime()%></span>s的时间去记住他！</p>
        <%--  通过js控制跳转  --%>
        <script type="text/javascript">
            function timeSet(){
                location.href="choiceSend.jsp"
            }
            window.onload=function (){
                setTimeout(timeSet,<%=GameFactory.getTime()*1000%>)

            }


        </script>
    <%
        }
    %>
</body>
</html>
