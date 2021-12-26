package application_attribute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Contex_Get")
public class ContextServlet_Get extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//결과
		//이름:홍길동
		//나이:20
		
		String name=(String) getServletContext().getAttribute("name");
		int age=(int) getServletContext().getAttribute("age");
		
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		out.println("name: "+name+"<br>");
		out.println("age: "+age);
		out.println("</body></html>");
	}

}
