package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/servlet1/sport")
public class sport_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		Enumeration<String> enu = request.getParameterNames();
		
		//name을 sport,sex로 둘경우
		//String[] values = request.getParameterValues("sport");
		//for (String i : values) {
		//out.println("좋아하는 운동: "+i+"<br>");
		//}
		//String sex = request.getParameter("sex")
		//out.println("성별: "+sex+"<br>");
		//=>while 문 대신 sport 는 for문 사용 성별은 그냥 출력
		
		while (enu.hasMoreElements()) {
			String name = enu.nextElement();
			String[] values = request.getParameterValues(name);
			for (String i : values) {
				out.println(name+" : "+i+"<br>");
			}

		}

		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
