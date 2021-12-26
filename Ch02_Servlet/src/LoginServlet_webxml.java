
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL Mapping 방식1 : Annotation 방식 (현재개발방식)
//URL Mapping 방식2 : web.xml (기존의 개발방식)
//@WebServlet("/login_webxml") //=>web.xml방식으로 대체
public class LoginServlet_webxml extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청
		String id = request.getParameter("id"); // abcd
		String pw = request.getParameter("pw"); // 1234

		// 응답
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("ID = " + id + "<br>");
		out.println("PW = " + pw + "<br>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
