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
    String name =request.getParameter("name");
%>
<jsp:useBean id="uti" class="Dao.dao"/>
<%
    String jmima= request.getParameter("jmima");
    String xmima= request.getParameter("xmima");
    String xmima1= request.getParameter("xmima1");
    if(xmima.equals(xmima1)){
        out.print("<script language='javaScript'> alert('新旧密码不一致');</script>");
        response.setHeader("refresh", "0;url=gerenmimaxiugai.jsp");}
    else if (uti.judgemima(name,jmima)){
        uti.mimaxiugai(jmima);
        out.print("<script language='javaScript'> alert('修改成功');</script>");
        response.setHeader("refresh", "0;url=gerenmimaxiugai.jsp");
    }
    else
    {
        out.print("<script language='javaScript'> alert('修改失败');</script>");
        response.setHeader("refresh", "0;url=gerenmimaxiugai.jsp");
    }
%>
</body>
</html>