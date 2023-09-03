<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Bean.users" %>
<%@ page import="Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    String name=request.getParameter("name");

%>
<form action="zhiyuanshenhe`.jsp" method="get" id="form" onsubmit="return check()" >

    <%

        users u = dao.getuser(name);
        name = u.getUserName();
        String sex =u.getSex();
        String sjnum=u.getPhone();
        String bumen=u.getDepartment();
        String home =u.getPosition();
        String mima =u.getMima();
        if(util.add(name,sex,bumen,sjnum,home,mima))
        {
            out.print("<script language='javaScript'> alert('处理成功');window.history.back(-2);</script>");
            util.deletedata1(name);

        }
        else
        {
            out.print("<script language ='javaScript'> alert('处理失败');window.history.back(-1); </script>");
        };

    %>

</form>
</body>
</html>

