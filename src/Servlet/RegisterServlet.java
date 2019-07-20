package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Been.Userbeen;
import Dao.UserDao;

public class RegisterServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//获取表单数据
		String username = request.getParameter("username"); 
		int password =Integer.parseInt(request.getParameter("password")); 
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");		
		int telephone = Integer.parseInt(request.getParameter("telephone")); 
		//new一个实体类的对象
		UserDao udDao = new UserDao();
		Userbeen userbeen = new Userbeen();
		//封装实体类
		userbeen.setUsername(username);
		userbeen.setPassword(password);
		userbeen.setNickname(nickname);
		userbeen.setEmail(email);
		userbeen.setTelephone(telephone);
		boolean b =udDao.insert(userbeen);
		//把注册成功的对象保存在session对象中
		request.getSession().setAttribute("registerUser", userbeen);
		if(b=true){
			response.sendRedirect("/NBAStar/Login.jsp");
		}
		
		out.flush();
		out.close();
	}

}
