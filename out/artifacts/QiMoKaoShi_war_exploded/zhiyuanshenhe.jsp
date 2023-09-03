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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 需导入sql包,user实体包 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>职员审核页面</title>
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
<h2 style="text-align: center;">职员信息</h2>


<jsp:useBean id="util" class="Dao.dao"/>

<br>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    List<users> list = util.readUser();
%>
<%if(list.isEmpty()) {%>
<br>
<br>
<br>
<p style="text-align: center;font-size: xx-large;font-weight: 500;">当前数据库无相关信息</p>
<%}else {%>
<table  id="table">
    <tr>
        <th>姓名</th>
        <th>性别</th>
        <th>手机号码</th>
        <th>家庭住址</th>
    </tr>
    <%for (users u : list) { %>
    <tr>
        <td><a href="zhiyuanshenhe`.jsp?name=<%=u.getUserName() %>"><%=u.getUserName()%></a>
        <td><%=u.getSex()%></td>
        <td><%=u.getPhone()%></td>
        <td><%=u.getPosition()%></td>

    </tr>
    <%}} %>
</table>

</body>
</html>
