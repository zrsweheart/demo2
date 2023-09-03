<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/3
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Bean.*" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.dao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>会议预约管理系统</title>
    <style type="text/css">
        *{font-style: "微软雅黑"}

        #table th{background-color: #fff7d5;border: 1px solid black;}
        #table td{background-color: #cfecfc;border: 1px solid black;padding: 15px;color: #000;}
        #table a{text-decoration: none;font-weight: bold;}
        #table a:hover {text-decoration: underline;}
    </style>
</head>
<body>

<form  method="get"  action="houtai.jsp"  class="form-login">
    <h2 style="text-align: center;">会议预约管理系统</h2>
    <br>
    <div style="text-align: center;">
        <tr>
            <td>身份：

                <select name="profession">
                    <option value="1">会议管理员</option>
                    <option value="2" selected>职员</option><br>
                </select>
            </td>
        </tr>
        <div style="text-align: center;">
        <tr><td>
            用户名:<input type="text" name="username"><br></tr>

        <tr><td>
            密码:<input pattern="[a-zA-Z0-9]{6,12}" type="password" name="password"></td> </tr>
    </div>

    <tr>
        <td colspan="2"><div align="center">
            <input type="submit" value="登录"></div></td> </tr>
            <input type="button" value="注册" onclick="location.href='zhuce.jsp'" />
    </div>
</form>
</div>
</body>
</html>
