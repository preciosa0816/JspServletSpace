//Servlet:서버에서 수행되는  Web자바
//MVC Model1 : Client의 요청을 직접 servlet이 받을 경우
//			   get방식인 경우 :doGet()
//			   post방식인 경우: dePost()

import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/now") //여기 적힌대로 주소가 됨.(보안유지에 탁월)
public class now extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Client가 method="get"방식으로 요청한 경우 받는 메소드
	protected void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,java.io.IOException{
		resp.setContentType("text/html"); //client브라우저에 전달할 내용작성
		resp.setCharacterEncoding("UTF-8");
		
		
		Date date = new Date();
		String Test=date.toString();
		
		
		PrintWriter out=resp.getWriter();
		out.write("<html><head><title>CurrentTime(Servlet)</title></head>");
		out.write("<body><H3>서블릿 생성 현재 시간: ");
		
		
		out.write(Test); 
		
		
		out.write("</H3></body></html>");
		out.close();
	}
	
	protected void doPost(HttpServletRequest req,
	          HttpServletResponse resp)
	               throws ServletException,
	                      java.io.IOException{
		resp.setContentType("text/html"); //client브라우저에 전달할 내용작성
		resp.setCharacterEncoding("UTF-8");
		
		
		Date date = new Date();
		String Test=date.toString();
		
		
		PrintWriter out=resp.getWriter();
		out.write("<html><head><title>CurrentTime(Servlet)</title></head>");
		out.write("<body><H3>서블릿 생성 현재 시간: ");
		
		
		out.write(Test); 
		
		
		out.write("</H3></body></html>");
		out.close();
	}
	
	
}




















