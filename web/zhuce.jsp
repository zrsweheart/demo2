<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/3
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>职员注册</title>
</head>
<form id="1" action ="zhuce-backstage.jsp" method="get">
    <p style="text-align:center;color:black; font-size:20px">
        <br>
        姓名:
        <label>
            <input type="text" name="UserName"size="3"/>
        </label>
        <br><br>
        性别:
        <label>
            <input type="radio" name="sex" value="男" />
        </label>男
        <label>
            <input type="radio" name="sex" value="女" />
        </label>女
        <br><br>
        部门：
        <label>
            <input type="text" name="Department"size="10"/>
        </label>
        <br><br>
        手机号码:
        <label>
            <input type="text" name="Phone"size="10"/>
        </label>
        <br><br>
        家庭住址:
        <label>
            <input type="text" name="Address"size="10"/>
        </label>
        <br><br>
        密码:
        <label>
            <input type="text" name="mima"size="10"/>
        </label>
        <br><br>
        <input type="submit" value="注册"/>
        <input type="reset" value="重置"/>
    </p>
</form>
</html>
