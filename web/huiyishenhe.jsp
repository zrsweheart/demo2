<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Bean.users" %>
<%@ page import="java.util.List" %>
<%@ page import="Bean.users" %>
<%@ page import="Bean.meeting" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 需导入sql包,user实体包 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>会议审核页面</title>
    <style type="text/css">
        .bg {
            background-image:url(images/bg_2.jpg);
            background-size:cover;
        }
        *{font-style: "微软雅黑"}
        #table{ border-collapse: collapse; margin: auto;text-align: center;}
        #table th{background-color: #fff7d5;border: 1px solid black;}
        #table td{background-color:#cffcd5;border: 1px solid black;padding: 15px;color: #000;}
        #table a{text-decoration: none;font-weight: bold;}
        #table a:hover {text-decoration: underline;}
    </style>
</head>
<body class="bg">
<h2 style="text-align: center;">会议信息</h2>


<jsp:useBean id="util" class="Dao.dao"/>

<br>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    List<meeting> list = util.readMeeting();
%>
<%if(list.isEmpty()) {%>
<br>
<br>
<br>
<p style="text-align: center;font-size: xx-large;font-weight: 500;">当前数据库无相关信息</p>
<%}else {%>
<table  id="table">
    <tr>
        <th>会议主题</th>

    </tr>
    <%for (meeting m : list) { %>
    <tr>
        <td><a href="huiyishenhe`.jsp?name=<%=m.getMeetingName() %>"><%=m.getMeetingName()%></a>


    </tr>
    <%}} %>
</table>

</body>
</html>
