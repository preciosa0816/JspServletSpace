package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CartDeleteCookie")
public class CartdeleteCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		out.println("장바구니가 비워졌습니다. "+"<br>");
		out.println("<a href=cookie.html>상품 선택 페이지</a><br>");
	
		out.println("</body></html>");
		
		
		Cookie[] c = request.getCookies();
		if(c!=null&&c.length>0){
			for(int i =0; i<c.length; i++){
				if(c[i].getName().startsWith("product")){
					String name=c[i].getName();
					Cookie cookie = new Cookie(name,"");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
		
				}
			}
		}
		
		
//		 Cookie [] cookies = request.getCookies();
//		 if( cookies != null ){
//			 for (Cookie c : cookies) {
//				  c.setMaxAge(1);
//				  response.addCookie(c);
//			  }
//		 }else{
//			 out.print("장바구니<br>");
//		 }
		
		
	}

}
