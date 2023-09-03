<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="util" class="Dao.dao"/>
<%
    String theme =request.getParameter("theme");
    String neirong= request.getParameter("neirong");
    String begin= request.getParameter("begin");
    String end= request.getParameter("end");
    String canhuiren= request.getParameter("canhuiren");
    String people= request.getParameter("people");
    String room=request.getParameter("room");
    if(util.chachonghuiyishi(room)){
        out.print("<script language ='javaScript'> alert('录入会议室重复');window.history.back(-1); </script>");
    }
    else
    {util.input3(theme,neirong,begin,end,canhuiren,people,room);
        out.print("<script language='javaScript'> alert('录入成功');</script>");
        response.setHeader("refresh", "0;url=zhiyuan.jsp");}

%>
</body>
</html>
