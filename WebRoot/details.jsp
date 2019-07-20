<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="Been.Items"%>
<%@ page import="Dao.ItemsDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'details.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<script type="text/javascript" src="js/lhgcore.js"></script>
    <script type="text/javascript" src="js/lhgdialog.js"></script>
    <script type="text/javascript">
      function selflog_show(id)
      { 
         var num =  document.getElementById("number").value; 
         J.dialog.get({id: 'haoyue_creat',title: 'SUCCESS',width: 500,height:300, link: '<%=path%>/servlet/CartServlet?id='+id+'&num='+num+'&action=add', cover:true});
      }
      function add()
      {
         var num = parseInt(document.getElementById("number").value);
         if(num<100)
         {
            document.getElementById("number").value = ++num;
         }
      }
      function sub()
      {
         var num = parseInt(document.getElementById("number").value);
         if(num>1)
         {
            document.getElementById("number").value = --num;
         }
      }
     
    </script>
	
    <style type="text/css">
	   
	  
	
	  
	button{
		width:200px;
		height:200px;
		border:2px solid rgba(0,0,204,1);
		background-color:rgba(153,51,255,1);
		border-radius:50%;
		margin-top:50px;
		margin-left:200px;
		font-size:30PX;
		color:rgba(255,255,0,1);}
	.table{
		background-color:rgba(153,51,255,0.4);
		
		}
	td{
		color: rgba(0,0,0,1);
		font-size:20px;
		}
	input{
		width:50px;
		height:20px;
		background-color:rgba(153,153,153,1);
		border:2px solid rgba(0,0,204,1);
		border-radius:10px;}
	.table1{
	 border-collapse:collapse;
    border-spacing:0;
    margin:0;
   	margin-left:210px;
    border:1px solid rgba(153,51,255,0.4);
    }



	</style>
  </head>
  
  <body>
    <h1 style="text-align:center;">goods Details</h1>
 
  
    <center>
      <table width="1050" height="660" cellpadding="0" cellspacing="0" border="2" class="table">
        <tr>
          <!-- 商品详情 -->
          <% 
             ItemsDAO itemDao = new ItemsDAO();
             Items item = itemDao.getItemsById(Integer.parseInt(request.getParameter("id")));
             if(item!=null)
             {
          %>
          <td width="70%">
             <table class="table1">
               <tr>
                 <td rowspan="5"><img src="images/<%=item.getPicture()%>" width="400" height="260" /></td>
               </tr>
               <tr>
                 <td><h2 style="text-align:center;"><%=item.getName() %></h2></td> 
               </tr>
               <tr>
                 <td>city:<%=item.getCity()%></td>
               </tr>
               <tr>
                 <td>price:￥<%=item.getPrice() %></td>
               </tr>
               <tr>
                 <td>number:&nbsp;&nbsp;<span id="sub" onclick="sub();">-</span>&nbsp;<input type="text" id="number" name="number" value="1" size="2"/>&nbsp;<span id="add" onclick="add();">+</span></td>
               </tr> 
             </table>
             <div id="cart">
               <a href="javascript:selflog_show(<%=item.getId()%>)"><button>ADD CART</button></a></a><a href="servlet/CartServlet?action=show"><button>CHECK CART</button></a>
             </div>
          </td>
          <% 
            }
          %>
          
          
         
        </tr>
      </table>
    </center>
  </body>
</html>
