<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Comm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js-jquery/jquery.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/Comm.css" >
	<script>
	$(document).ready(function(e) {
			$("#div_p1_p").hide();
        	$("#span").hide();
		$(".div_p3_div3").click(function(){
			$(".img").slideToggle("slow");
			$("#span").show();
			
			})
		$(".div_p3_div1").click(function(){
			
			$("#div_p1_p").show();
			
			})
    });
</script>

  </head>
  
 
 
  <body>
	<div class="div_p1"><p class="div_p1_p" id="div_p1_p"> ${com}</p>
	
	</div>
	<div class="div_p2">
	
	</div>
	<div class="div_p3"><span id="span"> THIS IS MY BELIEF</span>
		<div class="div_p3_div1"><p>COMMENT</p></div>
    
    	<div class="div_p3_div3"><p>KB</p></div>
    	<a href="index.jsp"><div class="div_p3_div4"><p>RETURN</p></div></a>
    
		<img src="./picture/kobe.jpg" class="img" />
    	<div class="b"></div>

	</div>	
	</body>
</html>
