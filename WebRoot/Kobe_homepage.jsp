<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Kobe_homepage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/Kobe_homepage.css" >
	<script src="js-jquery/jquery.min.js" type="text/javascript"></script>
	<script src="js-jquery/kebolunbo.min.js" type="text/javascript"></script>
<style>
	html {
		font-family: 'Open Sans', Helvetica, Arial, sans-serif;
		background-color: #fff;
		font-weight: 300;
		}
	body {
		margin: 0px;
		padding: 0px;
		}
	a, a:visited {
		color: #E54028;
		text-decoration: none;
		}
	a:hover {
		color: #c22d18;
		text-decoration: underline;
		cursor: pointer;
		}
	.footer{
	position:absolute;
	width:100px;
	height:100px;
	border-raudios:50%;
	top:770px;
	background-color:rgba(153,51,204,1);
	left:908px;
	border-radius:50%;
	}
	.footer:hover{
		background-color:rgba(0,0,255,1);
		
	}
	P{
		font-size:30px;
		margin-left:8px;
		margin-top:35px;	
	}
	p:hover{
		color:rgba(255,255,51,1);
	}
	.font{
	color:red;
	}
</style>
<script>
	$(document).ready(function(){
		$('.flicker-example').flicker();
	});
</script>

  </head>
  
  <body>
    <div class="flicker-example" data-block-text="false">
	<ul>
		<li data-background="./picture/play/kb_play1.jpg" style="opacity:0.8;">
			<div class="flick-title">Dear Basketball</div>
			<div class="flick-sub-text">A love so deep I gave you my all.</div>
		</li>
		<li data-background="./picture/play/kb_play2.jpg" style="opacity:0.8;">
			<div class="flick-title">I played through the sweat and hurt</div>
			<div class="flick-sub-text">You gave a six-year-old boy his Laker dream.</div>
		</li>
		<li data-background="./picture/play/kb_play3.jpg" style="opacity:0.8;">
			<div class="flick-title font">My mind can handle the grind</div>
			<div class="flick-sub-text font">But my body knows it is time to say goodbye.</div>
		</li>
	</ul>
	<a href="Kobe_i.jsp"><div class="footer"><p>CONT</p></div></a>
</div>
  </body>
</html>
