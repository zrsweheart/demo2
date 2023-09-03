<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>职员功能页面</title>
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
<h2 style="text-align: center;">你好！职员，请选择以下操作</h2>
<br><%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String name = (String) session.getAttribute("name");
%>
<div style="text-align: center;">

    <input type="button" value="查看个人信息" onclick="location.href='chakanzhiyuan.jsp?name=<%=session.getAttribute("name")%>'" />
    <br><br>
    <input type="button" value="浏览会议室信息" onclick="location.href='liulanhuizy.jsp'" />
    <br><br>
    <input type="button" value="查询会议室信息" onclick="location.href='chaxunhuizy.jsp'" />
    <br><br>
    <input type="button" value="会议预约" onclick="location.href='huiyiyuyue.jsp'" />
    <br><br>
    <input type="button" value="参会信息" onclick="location.href='canhuixinxi.jsp'" />
    <br><br>
    <input type="button" value="个人密码修改" onclick="location.href='gerenmimaxiugai.jsp?name=<%=session.getAttribute("name")%>'" />
    <br><br>


</div>
<br>


</body>
</html>