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
    String name =(request.getParameter("name"));
    users u = dao.getuser1(name);
%>
<form action="zhiyuanshenhe.jsp" method="get" id="form" onsubmit="return check()" >
    <input type="hidden" name="id" value="<%=name%>">
    <table >
        <tr>
            <th>职员编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>部门</th>
            <th>手机号码</th>
            <th>家庭住址</th>
            <th>密码</th>
        </tr>

        <tr>
            <td><%=u.getId()%></td>
            <td><%=u.getUserName()%></td>
            <td><%=u.getSex()%></td>
            <td><%=u.getDepartment()%></td>
            <td><%=u.getPhone()%></td>
            <td><%=u.getPosition()%></td>
            <td><%=u.getMima()%></td>
            <td><a href="zhiyuanshenhe``.jsp?name=<%=u.getUserName()%>">通过</a>

        </tr>

    </table>
</form>
</body>
</html>
