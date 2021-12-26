package application;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletContext_Applicaiton")
public class ServletContext_Applicaiton extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//결과
		//Driver name: oracle.jdbc.diver.OracleDriver
		//Save Path: D:\\Oracle
		
		//console
		String driver=getServletContext().getInitParameter("driver");		
		String path=getServletContext().getInitParameter("savePath");	
		
		System.out.println("Driver name: "+driver);
		System.out.println("Save Path: "+path);
		
		//web
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		out.println("Driver name: "+driver+"<br>");
		out.println("Save Path: "+path);
		out.println("</body></html>");
		
	}

}
