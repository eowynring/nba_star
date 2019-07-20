package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;
import org.apache.catalina.servlet4preview.RequestDispatcher;

import Been.Userbeen;
import Dao.UserDao;

public class LoginServlet extends HttpServlet {

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
		doPost(request, response);
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

		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String nickname = request.getParameter("nickname"); 
		int password =Integer.parseInt(request.getParameter("password"));
		UserDao ud=new UserDao();
		Userbeen user=new Userbeen();
		boolean b=ud.userenter(nickname, password);
		if(b==true){
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("nickname", nickname);
			response.sendRedirect("/NBAStar/Stars.jsp");
			

		}else{
			response.sendRedirect("/NBAStar/Stars.jsp");
		}
}
}