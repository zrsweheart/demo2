<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码界面</title>
</head>
<body>
<jsp:useBean id="util" class="Dao.dao"/>

<br>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String name =request.getParameter("name");
%>
<form action="gerenmimaxiugai`.jsp" method="get">
    <table align="center" border="1" width="500">
        <tr>
            <td>旧密码：</td>
            <td>
                <label>
                    <input type="text" name="jmima" />
                </label>
            </td>
        </tr>
        <tr>
            <td>新密码： </td>
            <td>
                <label>
                    <input type="text" name="xmima" />
                </label>
            </td>
        </tr>
        <tr>
            <td>确认新密码： </td>
            <td>
                <label>
                    <input type="text" name="xmima1`" />
                </label>
            </td>
        </tr>


        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提交" />
                <input type="reset" value="重置" />
            </td>
        </tr>
    </table>
</form>

</body>
</html>

