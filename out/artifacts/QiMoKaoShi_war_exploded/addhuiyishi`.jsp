<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="util" class="Dao.dao"/>
<%
    String jibie =request.getParameter("jibie");
    String roomid= request.getParameter("jibie")+request.getParameter("number");
    String name= request.getParameter("name");
    String address= request.getParameter("address");
    String keyong= request.getParameter("keyong");
    String muqian= request.getParameter("muqian");
    String num= request.getParameter("num");
    if(util.chachonghuiyishi(roomid)){
        out.print("<script language ='javaScript'> alert('录入会议室重复');window.history.back(-1); </script>");
    }
    else if(util.judgehysnum(jibie,num)){
        out.print("<script language ='javaScript'> alert('容纳人数不符合要求');window.history.back(-1); </script>");
    }
    else
    {util.input2(roomid,name,address,keyong,muqian,num);
    out.print("<script language='javaScript'> alert('录入成功');</script>");
    response.setHeader("refresh", "0;url=guanliyuan.jsp");}

%>
</body>
</html>
