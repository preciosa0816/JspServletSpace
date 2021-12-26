package servletInit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name= "InitParmAnnoServlet",
			urlPatterns= {"/InitParmAnno"},
			initParams= {@WebInitParam(name = "dirPath", value = "c:\\test"),
						@WebInitParam(name = "username", value = "system")}
			)
public class InitParmAnnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
		

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//console : 전역변수 
		String dirPath = getInitParameter("dirPath");
		String username = getInitParameter("username");
		
		System.out.println("Directory path: "+dirPath);
		System.out.println("ID value: "+username);
		
		//console: application 변수
		String driver=getServletContext().getInitParameter("driver");		
		String path=getServletContext().getInitParameter("savePath");	
		
		System.out.println("Driver name: "+driver);
		System.out.println("Save Path: "+path);
		
		//web
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("Directory path: "+dirPath+"<br>");
		out.println("ID value: "+username+"<br>");
		out.println("Driver name: "+driver+"<br>");
		out.println("Save Path: "+path+"<br>");
		out.println("</body></html>");
		
		
	}

}
