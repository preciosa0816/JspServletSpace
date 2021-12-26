

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL Mapping 방식1 : Annotation 방식 (현재개발방식)
@WebServlet("/login1/login_anno")
public class LoginServlet_anno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginServlet_anno() {
        super();
        // TODO Auto-generated constructor stub
    }

//login?id=abcd&pw=1234
   //HttpServletRequest::클라이언트 요청 저장 
   //HttpServletRequest::실행된 결과값 저장(클라이언트에 보낼 용도) ex)login.html
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청
		String id=request.getParameter("id"); //abcd
		String pw=request.getParameter("pw"); //1234
		
		//응답
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out= response.getWriter();
		out.println("ID = "+id+"<br>");
		out.println("PW = "+pw+"<br>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response); //get과 post의 내용이 같은 경우
	}

}
