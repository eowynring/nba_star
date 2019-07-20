package Fileupload;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID=1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		String filename = request.getParameter("filename");
		String folder = "/download/";
		response.addHeader("Cntent-Type", "application/octet-stream");
		response.addHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(filename, "utf-8"));
		InputStream in =  getServletContext().getResourceAsStream(folder+filename);
		OutputStream out = response.getOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while((len=in.read(buffer))!=-1){
			out.write(buffer,0,len);
		}
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

		doGet(request, response);
	}

}
