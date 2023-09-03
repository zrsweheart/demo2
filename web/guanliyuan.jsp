<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员功能页面</title>
    <style type="text/css">
        .bg {
            background-size:cover;
        }
        *{font-style: "微软雅黑"}

        #table a{text-decoration: none;font-weight: bold;}
        #table a:hover {text-decoration: underline;}
    </style>
</head>
<body class="bg">
<h2 style="text-align: center;">你好！管理员，请选择以下操作</h2>
<br>
<div style="text-align: center;">

    <input type="button" value="新增会议室信息" onclick="location.href='addhuiyishi.jsp'" />
    <br><br>
    <input type="button" value="修改会议室信息" onclick="location.href='xiugaihuiyishi``.jsp'" />
    <br><br>
    <input type="button" value="删除会议室信息" onclick="location.href='shanchuhuiyishi.jsp'" />
    <br><br>
    <input type="button" value="职员审核" onclick="location.href='zhiyuanshenhe.jsp'" />
    <br><br>
    <input type="button" value="浏览会议室信息" onclick="location.href='liulanhuigl.jsp'" />
    <br><br>
    <input type="button" value="查询会议室信息" onclick="location.href='chaxunhuigl.jsp'" />
    <br><br>
    <input type="button" value="会议审核" onclick="location.href='huiyishenhe.jsp'" />
    <br><br>
    <input type="button" value="重置密码" onclick="location.href='chongzhimima.jsp'" />
    <br><br>


</div>
<br>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");

%>

</body>
</html>
