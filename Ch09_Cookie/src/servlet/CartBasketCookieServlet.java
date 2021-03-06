package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CartBasketCookie")
public class CartBasketCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //get방식에서 생략가능
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		out.println("장바구니 리스트 "+"<br>");
		Cookie[] c = request.getCookies();
		for(int i=0;i<c.length;i++) {
			if(c[i].getName().startsWith("product")) {
				out.println(c[i].getName()+" : "+c[i].getValue()+"<br>");
			}
		}
		
//		 Cookie [] cookies = request.getCookies();
//		if( cookies != null ){
//			 for (Cookie c : cookies) {
//				out.print(c.getName() + " : " + c.getValue() + "<br>");
//			  } 
//		 }else{
//			 out.print("장바구니 비었음<br>");
//		 }
		
		out.println("<a href=cookie.html>상품 선택 페이지</a><br>");
		out.println("<a href=CartDeleteCookie>장바구니 비우기</a>");
		out.println("</body></html>");
		
		
	}

}
