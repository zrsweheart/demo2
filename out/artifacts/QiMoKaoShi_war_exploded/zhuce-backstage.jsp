<%@ page contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>处理</title>
</head>

<body>
<jsp:useBean id="util" class="Dao.dao"/>
<%
    String name= request.getParameter("UserName");
    String sex= request.getParameter("sex");
    String bumen=request.getParameter("Department");
    String sjnum= request.getParameter("Phone");
    String home= request.getParameter("Address");
    String mima= request.getParameter("mima");

    if(util.queryEmpty(name,sex,bumen,sjnum,home,mima)){
        out.print("<script language ='javaScript'> alert('输入不能为空,请完成填写');window.history.back(-1); </script>");
    }else if(util.sjhm(sjnum)){
        out.print("<script language ='javaScript'> alert('手机号码需要为11位数字');window.history.back(-1); </script>");
    }else if(util.chachong(sjnum)){
        out.print("<script language ='javaScript'> alert('录入手机号码重复');window.history.back(-1); </script>");
    }else{
        util.input(name,sex,bumen,sjnum,home,mima);
        out.print("<script language='javaScript'> alert('注册成功');</script>");
        response.setHeader("refresh", "0;url=shouye.jsp");
    }
%>
</body>
</html>