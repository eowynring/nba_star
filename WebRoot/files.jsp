<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'files.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		td{
		border:2px solid black;
		cellpadding:0;
		 cellspacing:0
		}	
		input{
		width:250px;
		height:50px;
		background-color:rgba(153,51,255,1);
		border:1px; 
		font-size:20px;
		}
		tr{
		font-size:40px;}
	</style>
  </head>
  
  <body>
  <p style="text-align:center;font-size:40px;margin-top:80px;">UPLOAD</p>
  <a href="Download.jsp"><p style="text-align:center;font-size:20px;margin-top:20px;">download</p></a>
    <form action="UploadServlet" method="post" enctype="multipart/form-data">
    	<table width="800px" height="400" border="1" style="text-align:center; margin-left:550px;margin-top:50px; background-color:rgba(153,51,255,0.4);">
    		<tr>
    			<td>uploader</td>
    			<td><input type="text" name = "name" style="text-align:center;"/></td>
    		</tr>
    		<tr>
    			<td>upload file</td>
    			<td><input type="file" name = "myfile" /></td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="submit" value="UPLOAD" /></td>
    		</tr>
    		
    	</table>
    	
    	
    </form>
  </body>
</html>
