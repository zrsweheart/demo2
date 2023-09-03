<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Bean.users" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.dao" %>
<%@ page import="Bean.meeting" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 需导入sql包,user实体包 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Title</title>
</head>
<body>


<jsp:useBean id="util" class="Dao.dao"/>

<br>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String name =(request.getParameter("theme"));
    meeting m = dao.getmeeting1(name);
%>
<form action="huiyishenhe.jsp" method="get" id="form" onsubmit="return check()" >
    <input type="hidden" name="id" value="<%=name%>">
    <table >
        <tr>
            <th>会议主题</th>
            <th>会议内容</th>
            <th>会议开始时间</th>
            <th>会议结束时间</th>
            <th>参会人员</th>
            <th>参会人数</th>
            <th>审核状态</th>
        </tr>

        <tr>
            <td><%=m.getMeetingName()%></td>
            <td><%=m.getMeetingContent()%></td>
            <td><%=m.getMeetingBegin()%></td>
            <td><%=m.getMeetingEnd()%></td>
            <td><%=m.getParticipants()%></td>
            <td><%=m.getAuditStatus()%></td>
            <td><a href="huiyishnehe```.jsp?name=<%=m.getMeetingName()%>">不同意</a>
            <td><a href="huiyishenhe``.jsp?name=<%=m.getMeetingName()%>">同意</a>

        </tr>

    </table>
</form>
</body>
</html>
