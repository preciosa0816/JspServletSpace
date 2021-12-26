package url_pattern_directory;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ATest")
//http://localhost:8080/Ch02_Servlet/ATest	=>ATest
//http://localhost:8080/Ch02_Servlet/test 	=>DTest
//http://localhost:8080/Ch02_Servlet/test/BTest =>BTest
//http://localhost:8080/Ch02_Servlet/		=>DTest
//http://localhost:8080/Ch02_Servlet/xxx	=>DTest
public class ATestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ATestServlet");
	
	}

	
}
