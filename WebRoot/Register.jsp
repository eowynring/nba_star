<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/Register.css" >
	<link rel="stylesheet" type="text/css" href="css-font-awesome/css/font-awesome.min.css" >
	<script src="js-jquery/jquery.js" type="text/javascript"></script>
	<script>
	$(document).ready(function(e) {
        
   
	$("#div_footer").hover(
		function(){
		$(this).append($("<span>NO!NO!NO!!!</span>"));
		},
		function(){
			$(this).find("span:last").remove()
			})
		
	});
</script>
  </head>
  
<body  class="bg">
<div class="div_bg">
<div class="bg_div">
	<div><h1 class="div_h1">REGISTER</h1></div>
	<div class="input_div">
    	<form action="RegisterServlet" method="post">
			<input type="text" placeholder="username" name="username" maxlength="10" required  />
    		<input type="password" placeholder="password" name="password" maxlength="12" required/>
    		<input type="text" placeholder="nickname" name="nickname" maxlength="12" required />
    		<input type="email"  placeholder="email" name="email" required />
    		<input type="tel" placeholder="telephone" name="telephone" required   />
        	<button type="submit" class="div_button"><p>REGISTER</p></button>
        	<button class="div_button2"><p>LOGIN</p></button>
        </form>
    </div>
    </div>
</div>
</body>
</html>
