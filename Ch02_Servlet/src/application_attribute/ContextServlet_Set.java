package application_attribute;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Context_Set")
public class ContextServlet_Set extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//ServletContext(Servlet)=application(jsp)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//속성값 설정
		String name="홍길동";
		int age=20;
		getServletContext().setAttribute("name", name);
		getServletContext().setAttribute("age", age);
		
	}

}
