<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AjaxStar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js-jquery/jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#button_login").click(function(){
				login();
			})
		
		})
		function login(){
			var starname = $("#starname").val();
			var  Careerdata= $("#Careerdata").val();
			$.ajax({
				type:"post",
				url:"login_ajax.jsp",
				dateType:'json',
				data:'starname='+starname+'&Careerdata='+Careerdata,
				success:function(json){
					$('#result').html("starname:"+json.starname+"<br />Careerdata:"+json.Careerdata);
					
				}
			});
		}
		
		
	</script>

  </head>
  
  <body>
  <div id="result" style="width:1000px;height:500px;background-color:yellow; border:1px solid red"></div>
    <form id="foretest" action="" method="post">
    	<p><span>Starname:</span><input type="text" name="starname" id="starname"/></p>
    	<p><span>Careerdata:</span><input type="text" name="Careerdata" id="Careerdata"/></p>
    	<button id="button_login">Ajax</button>
    </form>
  </body>
</html>
