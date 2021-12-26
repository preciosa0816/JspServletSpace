package url_pattern_extend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
//http://localhost:8080/Ch02_Servlet/*.do =>ETest
//주의:다른 servlet에서 (/*)설정이 있으면 그 servlet이 열린다.
//http://localhost:8080/Ch02_Servlet/test/a.nhn	=>GTest
//http://localhost:8080/Ch02_Servlet/xyz/a.do =>E
//http://localhost:8080/Ch02_Servlet/xyz.nhn =>G
//=> "*.do"맨 끝 부분이 ".do" 인것을 리턴
public class ETestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ETestServlet");
	}

}
