<%@ page import="Bean.room" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>职员浏览会议室</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 需导入sql包,user实体包 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>浏览会议室页面</title>
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
<h2 style="text-align: center;">会议室信息</h2>


<jsp:useBean id="util" class="Dao.dao"/>

<br>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");

    List<room> list = util.readRoomk();
%>
<%if(list.isEmpty()) {%>
<br>
<br>
<br>
<p style="text-align: center;font-size: xx-large;font-weight: 500;">当前数据库无相关信息</p>
<%}else {%>
<table  id="table">
    <tr>
        <th>会议室编号</th>
        <th>会议室名称</th>
        <th>会议室地址</th>
        <th>可用状态</th>
        <th>目前状态</th>
        <th>容纳人数</th>
    </tr>
    <%for (room r : list) { %>
    <tr>
        <td><%=r.getMeetroomId()%></td>
        <td><%=r.getMeetroomName()%></td>
        <td><%=r.getAddress()%></td>
        <td><%=r.getReadyState()%></td>
        <td><%=r.getStatus()%></td>
        <td><%=r.getCapacity()%></td>

    </tr>
    <%}} %>
</table>

</body>
</html>