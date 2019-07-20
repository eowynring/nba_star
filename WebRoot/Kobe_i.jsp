<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Kobe_i.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js-jquery/jquery.js" type="text/javascript"></script>
	<script src="js-jquery/kobe_i.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css-font-awesome/css/font-awesome.min.css" >
	<link rel="stylesheet" type="text/css" href="css/Kobe_i.css" >
  </head>
  
 <body>
<div>

	<div class="title_img">
		<img src="./picture/kobe_b.jpg" class="logo_img" />
    </div>
    
    <div class="honor_div" id="honor_div">
    	<p class="Career_honor">Career Honor</p>
        <i class="fa fa-trophy" id="fa fa-trophy"></i>
        
        <div class="honor_div_p" id="honor_div_p">
        	<p>5 &nbsp;X&nbsp; CHAMRing</p>
            <p>1 &nbsp;X&nbsp; MVP</p>
            <p>2 &nbsp;X&nbsp; MVP</p>
            <p>4 &nbsp;X&nbsp; AMVP</p>
            <p>4 &nbsp;X&nbsp; AMVP</p>
            <p>2 &nbsp;X&nbsp; Top Scorer</p>
            <p>2 &nbsp;X&nbsp; OG Gold medal</p>
            <p>18 &nbsp;X&nbsp; All Star</p>
        </div>
    </div>
    
    <div class="opp_firend" id="opp_firend">
    	<p class="opp_firend_p" id="opp_firend_p">Opp/Fri</p>
        <img src="./picture/kz.jpg" class="opp_firend_img1" id="opp_firend_img1" />
        <img src="./picture/kj.jpg" class="opp_firend_img2" id="opp_firend_img2" />
    </div>
    <form action="Kobe_iServlet" method="post">
    <div class="input" id="input">
    	<textarea rows="xx" cols="xx" name="textarea"  class="textarea"></textarea>
        <button><span>submit</span></button>
    </div>
    </form>
    
   <div class="div_heart" id="div_heart">
	<div class="heart"></div>
    <span class="heart_div_p">confession</span>
</div>
</div>

</body>
</html>
