<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.dd.index.Userdo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'registerWhy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
   	request.setCharacterEncoding("utf-8");
   	String email = request.getParameter("email");
   	String nickname = request.getParameter("nickname");
   	String password = request.getParameter("password");
   	//out.print(email + "  " + nickname + "  " + password);
   	Userdo.register(email,nickname,password);
   	out.print("注册成功!");
   	out.print("现在你可以进行登陆");
   	
    %>
    <a href='loginForm.jsp'>登陆跳转</a>
  </body>
</html>
