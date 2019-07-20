package Fileupload;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID=1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try{
			response.setContentType("text/html;charset=utf-8");
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		File f = new File("E:\\TempFolder");
		if(!f.exists()){
			f.mkdirs();
		}
		factory.setRepository(f);
		ServletFileUpload fileupload = new ServletFileUpload(factory);
		fileupload.setHeaderEncoding("utf-8");
		
			 
			
			List<FileItem> fileitems = fileupload.parseRequest(request);
			
			
		
		PrintWriter writer = response.getWriter();
		for(FileItem fileitem:fileitems){
			if(fileitem.isFormField()){
				String name = fileitem.getFieldName();
				if(name.equals("name")){
					if(!fileitem.getString().equals("")){
						String value = fileitem.getString("utf-8");
						writer.print("uploader:"+value+"<br />");
					}
				}
			}else {
				String filename = fileitem.getName();
				if(filename!=null&&!filename.equals("")){
					writer.print("file name:"+filename+"<br />");
					filename = filename.substring(filename.lastIndexOf("\\")+1);
					filename = UUID.randomUUID().toString()+"_"+filename;
					String webPath = "/upload/";
					String filepath = getServletContext().getRealPath(webPath+filename);
					File file = new File(filepath);
					file.getParentFile().mkdirs();
					file.createNewFile();
					InputStream in = fileitem.getInputStream();
					FileOutputStream out = new FileOutputStream(file);
					byte[] buffer = new byte[1024];
					int len;
					while ((len=in.read(buffer))>0) 
						out.write(buffer,0,len);
						in.close();
						out.close();
						fileitem.delete();
						writer.print("success!!!<br />");
					}
				}
			}
		}catch(Exception e) {
			
			throw new RuntimeException(e);
			
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

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
