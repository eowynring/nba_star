<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Stars.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js-jquery/jquery.js" type="text/javascript"></script>
	<script src="js-jquery/Stars.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/Stars.css" >
	<link rel="stylesheet" type="text/css" href="css-font-awesome/css/font-awesome.min.css" >
	

  </head>
  
  <body  class="bg">
<div class="div_bg">
		<div>
			<p style="font-size:40px;color:white;margion-top:-30px; position:absolute; margin-left:1600px;">welcom:${nickname}</p>
		</div>

	<div class="div_jordan">
    	<img src="./picture/Stars/jordan.jpg" />
        <i class="fa fa-cube" id="jordan1" style="display:block;margin-top:-120px; color: rgba(0,255,0,1); margin-left:30px; font-size:50px;"></i>
        <i class="fa fa-info" id="jordan2" style="display:block;margin-top:-48px; color: rgba(0,255,0,1); margin-left:140px; font-size:50px;"></i>
    </div>
    <div class="div_kobe">
    	<img src="./picture/Stars/kb.jpg" />
         <i class="fa fa-cube" id="kobe1" style=" display:block;margin-top:-90px; color: rgba(0,255,0,1); margin-left:40px; font-size:30px;"></i>
        <a href="Kobe_homepage.jsp"><i class="fa fa-info" id="kobe2" style=" display:block;margin-top:-30px; color: rgba(0,255,0,1); margin-left:100px; font-size:30px;"></i></a>
    </div>
    <div class="div_james">
    	<img src="./picture/Stars/james.jpg" />
         <i class="fa fa-cube"  id="james1" style=" display:block;margin-top:-150px; color: rgba(0,255,0,1); margin-left:40px; font-size:50px;"></i>
        <i class="fa fa-info" id="james2" style=" display:block;margin-top:-48px; color: rgba(0,255,0,1); margin-left:170px; font-size:50px;"></i>
    </div>
    <div class="div_yao">
    	<img src="./picture/Stars/yao.jpg" />
         <i class="fa fa-cube" id="yao1" style=" display:block;margin-top:-75px; color: rgba(0,255,0,1); margin-left:20px; font-size:30px;"></i>
        <i class="fa fa-info" id="yao2" style=" display:block;margin-top:-30px; color: rgba(0,255,0,1); margin-left:80px; font-size:30px;"></i>
    </div>
    <div class="div_paul">
    	<img src="./picture/Stars/paul.jpg" />
         <i class="fa fa-cube" id="paul1" style=" display:block;margin-top:-120px; color: rgba(0,255,0,1); margin-left:30px; font-size:50px;"></i>
        <i class="fa fa-info" id="paul2" style=" display:block;margin-top:-48px; color: rgba(0,255,0,1); margin-left:140px; font-size:50px;"></i>
    </div>
    <div class="div_irving">
    	<img src="./picture/Stars/irving.jpg" />
         <i class="fa fa-cube" id="irving1" style=" display:block;margin-top:-120px; color: rgba(0,255,0,1); margin-left:30px; font-size:50px;"></i>
        <i class="fa fa-info" id="irving2" style=" display:block;margin-top:-48px; color: rgba(0,255,0,1); margin-left:140px; font-size:50px;"></i>
    </div>
    <div class="div_Oneal">
    	<img src="./picture/Stars/Oneal.jpg" />
         <i class="fa fa-cube" id="Oneal1" style=" display:block;margin-top:-160px; color: rgba(0,255,0,1); margin-left:45px; font-size:60px;"></i>
        <i class="fa fa-info" id="Oneal2" style=" display:block;margin-top:-60px; color: rgba(0,255,0,1); margin-left:180px; font-size:60px;"></i>
    </div>
    <div class="div_siji">
    	<img src="./picture/Stars/siji.jpg" />
         <i class="fa fa-cube" id="siji1" style=" display:block;margin-top:-100px; color: rgba(0,255,0,1); margin-left:25px; font-size:45px;"></i>
        <i class="fa fa-info" id="siji2" style=" display:block;margin-top:-48px; color: rgba(0,255,0,1); margin-left:120px; font-size:45px;"></i>
    </div>
    <div class="footer1">
    	 <button><img src="./picture/png/collect.png" class="img" /></button>
   	</div>
</div>
</body>
</html>
