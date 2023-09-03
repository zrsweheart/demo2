<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除会议室</title>
</head>
<body>
<jsp:useBean id="util" class="Dao.dao"/>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    int id=Integer.parseInt(request.getParameter("id"));
    if(util.deletedata2(id))
    {
        out.print("<script language='javaScript'> alert('删除成功');window.history.back(-1);</script>");
    }
    else
    {
        out.print("<script language ='javaScript'> alert('删除失败');window.history.back(-1); </script>");
    };
%>

</body>
</html>
