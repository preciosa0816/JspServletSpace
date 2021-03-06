package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartSaveCookie")
public class CartSaveCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String car = request.getParameter("car");
		Cookie cookie = new Cookie("test", car); //쿠키의 사이즈를 0이 아니게 만들기 위한 쿠키
		response.addCookie(cookie);
				
		Cookie[] c = request.getCookies();
		Boolean check=false;
		
		if (c != null && c.length > 0) {
		for (int i = 0; i < c.length; i++) {
			if (c[i].getName().equals("product")) {
				check=true;
			}
		}
		int size=c.length;
		if(!check) {
			Cookie ck = new Cookie("product"+size, car);
			response.addCookie(ck);
			}	
		}
		
//		 Cookie [] cookies = request.getCookies();
//		 Cookie c = null;
//		 if(cookies == null || cookies.length == 0){
//			 c = new Cookie("product" , product );
//		 }else{
//			 c = new Cookie("product"+ ( cookies.length+1 ) , product );
//		 }
//		 
//		 // c.setMaxAge(60*60);
//		 response.addCookie(c);
		
		request.setCharacterEncoding("UTF-8"); // get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();
		out.println("<html><body>");

		out.println("Product 추가 " + "<br>");
		out.println("<a href=CartBasketCookie>장바구니보기</a>");
		out.println("</body></html>");

	}

}
