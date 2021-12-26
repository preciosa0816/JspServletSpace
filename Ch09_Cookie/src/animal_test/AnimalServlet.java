package animal_test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


//@WebServlet("/animal")
public class AnimalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		
		String food = request.getParameter("FOOD");
		Cookie c = new Cookie("food", food);
		response.addCookie(c);
		
		//request.getSession().setAttribute("f", food);
				
		//좋아하는 동물
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		//form action을 통해 result로 보내기
		out.println("<form action='result'>");
		//input name=animal
		//out.println(food); //food넘어오는 것 확인 
		out.println("<h4>당신이 좋아하는 동물은?</h4><br>");
		out.println("<input type='text' name='animal'>");
		//input type=submit value=submit
		
		
		
		out.println("<input type='submit' name='submit'>");
		out.println("</form>");
		out.println("</body></html>");
		
	
		
	}

}
