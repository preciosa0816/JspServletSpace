package servlet_file;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ContextFile")
public class ContextFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String readFile="/WEB-INF/testFile.txt";
		InputStream read=getServletContext().getResourceAsStream(readFile);		
		BufferedReader reader= new BufferedReader(new InputStreamReader(read));
		
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		while(reader.ready()) {
			out.print(reader.readLine()+"<br>");
		}
//		String str=reader.readLine();
//		while(str!=null) {
//			out.println(str+"<br>");
//			str=reader.readLine()
//		}
		reader.close();
		out.println("</body></html>");
	}

}
