package servlet_JspUseBean;
//Servlet
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/PersonalInfoServlet")
//WebSevlet을 제거하고 web.xml에 servlet을 Mapping 하고
//http://localhost:8080/Ch08_Jsp_Usebean/pinfo를 주소창에 입력시
//PersonalInfoServlet을 실행하는 것과 같은 효과를 낸다.
public class PersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PersonalInfo pi = new PersonalInfo();
		pi.setName("hong");
		pi.setGender('m');
		pi.setAge(24);
		
		request.setAttribute("pinfo", pi);
		//forward
		RequestDispatcher d= request.getRequestDispatcher("/CustomerInfoViewer.jsp");
		d.forward(request, response);
	
	}

}
