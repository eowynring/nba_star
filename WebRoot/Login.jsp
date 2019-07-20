<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/Login.css" >
	<link rel="stylesheet" type="text/css" href="css-font-awesome/css/font-awesome.min.css" >

  </head>
  
 <body class="bg">
	<div class="div_bg">
	<div class="login_div">
    	<form action="/NBAStar/LoginServlet"  method="post">
        	<P class="login_p">login</P>
            <span>nickname</span><input name="nickname"  type="text" id="number" class="login_input" /><br />
         	<span>password</span><input name="password" type="password" id="password" class="login_input"  style="margin-top:50px; margin-left:23px;" /><br />
            <button type="submit" value="1" class="submit" style="margin-top:60px;" /><i class="fa fa-check" style="font-size:2em; color:rgba(255,255,255,1)"></i>
        </form>
    </div>
	</div>
</body>
</html>
