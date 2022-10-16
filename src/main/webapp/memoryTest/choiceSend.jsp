<%@ page import="com.memoryTest.GameFactory" %><%--
  Created by IntelliJ IDEA.
  User: sayCode
  Date: 2022/10/14
  Time: 22:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>choiceSend</title>
</head>
<body>
<script src="choiceGrage.js" type="text/javascript"></script>
<form action="./judgeAnswer.jsp" method="post" style="font-size: larger">
    <%--  隐藏的输入框,由于懒,不想用js来发起post请求,此处用来让js输入答案的真实值  --%>
    <input style="display: none" placeholder="none" name="answer" id="answers" value="" />
    <%--    此处用来显示答案, 这样做的另一个好处是防止麻瓜自己把答案复制过来粘贴来作弊    --%>
    <input style="width: 500px; height: 50px;" placeholder="请输入你的答案"   id="inputAnswer"/>
    <input type="submit" value="提交答案">
</form>
<button onclick="clickStart()">★</button>
<button onclick="clickCake()">🎂</button>
<button onclick="clickFlower()">❀</button>
</body>
</html>

