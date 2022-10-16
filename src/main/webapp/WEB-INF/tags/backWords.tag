<%@ tag import="java.util.ArrayList" %>
<%@ tag import="java.util.Arrays" %>
<%@ tag import="java.util.Collections" %>
<%@ tag import="java.util.List" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="message" required="true" %>
<%@ variable name-given="result" scope="AT_END" %>
<%!
    public String getResult(String message){
        List<Character> arrayList = new ArrayList<>();
        for (char point : message.toCharArray()
             ) {
            if ( point>='A' && point<='Z' || point>='a' && point<='z' ){
                arrayList.add(point);
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (char point :arrayList){
            stringBuilder.append(point);
        }
        return stringBuilder.toString();
    }
%>
<%
    if (message != null){
        jspContext.setAttribute("result",getResult(message));
    }else {
        jspContext.setAttribute("result","");
    }

%>