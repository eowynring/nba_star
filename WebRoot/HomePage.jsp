<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'HomePage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/HomePage.css" >
	<link rel="stylesheet" type="text/css" href="css-font-awesome/css/font-awesome.min.css" >
	<script src="js-jquery/jquery.js" type="text/javascript"></script>
	<script src="js-jquery/HomePage.js" type="text/javascript"></script>
	<style>
	.footer_register{
		margin-top:-120px;
		margin-left:900px;
		width:100px;
		height:100px;
	}
	.fa-user-circle{
		font-size:100px;
		color:rgba(255,255,255,1);
	}
	
	</style>
	
  </head>
  
  <body class="bg">
<div class="div_bg">
<div class="title">
	<nav>
    	<a><i class="fa fa-home" style="font-size:2em; margin-right:8px;"></i>HOME PAGE</a>
        <a><i class="fa fa-star" style="font-size:2em; margin-right:8px;"></i>SUPER STAR</a>
        <a><i class="fa fa-diamond" style="font-size:2em; margin-right:8px;"></i>RANKING</a>
    </nav>
</div>
<div>
	<P class="div_p1">WELCOME TO NBA</P>
	<p class="div_p2">WHERE AMAZING HAPPENS</p>
    <p class="div_p3" id="div_p3">GET TO KNOW US BETTER</p>
</div>
<div class="div_footer">
	<p class="div_p">i</p>
</div>
<div class="footer_register" id="footer_register" >
	<a href="Register.jsp"><i class="fa fa-user-circle"></a></i>
</div>
</div>
</body>
</html>
