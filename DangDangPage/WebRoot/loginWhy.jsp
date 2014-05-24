<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.dd.index.Bookdo"%>
<%@page import="com.dd.index.Userdo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginWhy.jsp' starting page</title>
    
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
   //设置编码格式，utf-8
   		request.setCharacterEncoding("utf-8");
   		String email = request.getParameter("email");
   		String password = request.getParameter("password");
   		//Userdo调用User model操作数据库
   		boolean b = Userdo.isUser(email,password);
   		if(b){
   			session.setAttribute("name",email);
   			response.sendRedirect("main.jsp");
   		}
   		else{
   			response.sendRedirect("loginForm.jsp");
   		}
    %>
  </body>
</html>
