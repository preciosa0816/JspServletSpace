package mvc.simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/SimpleController")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
		//2단계, 요청 파악
		//request객체로부터 사용자의 요청을 파악하는 코드
		String type=req.getParameter("type");
		
		//3단계, 요청한 기능 수행
		//사용자 요청에 따라 알맞은 코드
		Object resultObject=null;
		if(type==null||type.equals("greeting")) {
			resultObject="HI";
		}else if(type.equals("date")){
			resultObject=new java.util.Date();
		}else {
			resultObject="Invalid Type";
		}
		//4단계, request나 session에 처리 결과를 저장
		req.setAttribute("result", resultObject);
		
		//5단계, requestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher=req.getRequestDispatcher("/simpleView.jsp");
		dispatcher.forward(req, res);
	}

}
