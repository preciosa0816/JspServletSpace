package animal_test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ptest/result")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		
		//최종 내용물 출력
		//Title: 성격테스트 
		//좋아하는 동물은?
		//"당신은 (음식)과 (동물)을 좋아하는 성격입니다"
		
		String animal = request.getParameter("animal");
		
		
		String food=request.getSession().getAttribute("food").toString();
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h2>Title:성격테스트</h2>");
		out.println("당신은 "+food+"와(과) "+animal+"을(를) 좋아하는 성격입니다.");
		out.println("</body></html>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
