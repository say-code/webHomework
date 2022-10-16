<%@ tag import="java.text.SimpleDateFormat" %>
<%@ tag import="java.util.Date" %>
<%@ tag import="java.util.Calendar" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="date" required="true" %>

<%
    Date _date = new Date(Long.parseLong(date));
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Calendar calendar = Calendar.getInstance();
        calendar.setTime(_date);
    int year = calendar.get(Calendar.YEAR);
    // 获取当前月份
    int month = calendar.get(Calendar.MONTH);
    // 获取当前月第一天（好像是废话）
    int minMonth = calendar.getActualMinimum(Calendar.DATE);
    // 获取当前月最后一天（主要考虑每个月的天数不同）
    int maxMonth = calendar.getActualMaximum(Calendar.DATE);
    int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
    // System.out.println(minMonth);
    // System.out.println(maxMonth);
    String time = simpleDateFormat.format(_date);
        calendar.set(Calendar.DAY_OF_MONTH,0);
    int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
    System.out.println(dayOfWeek);
%>
<table style="text-align: center;border: black 1px solid;  ">
    <td>
         日历
    </td>
    <tr>
        <td>星期一</td>
        <td>星期二</td>
        <td>星期三</td>
        <td>星期四</td>
        <td>星期五</td>
        <td>星期六</td>
        <td>星期日</td>
    </tr>
    <%
            out.println("<tr>");
            for (int i = 1; i<dayOfWeek; i++){
                out.println("<td/>");
            }
            for(int nowday=1; nowday<maxMonth; nowday++){
                if ((nowday+dayOfWeek-2)%7==0){
                    out.println("</tr><tr>");
                }
                if (nowday != dayOfMonth){
                    out.println("<td>"+nowday+"</td>");;
                }else {
                    out.println("<td  style=\"background-color: cornflowerblue\">"+nowday+"</td>");
                }

            }
            out.println("</tr>");
    %>

</table>