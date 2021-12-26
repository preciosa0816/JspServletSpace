
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		// 요청
		String id = request.getParameter("id"); //
		String pw = request.getParameter("pw"); //

		// id=java, pw=java ->맞으면 다른 사이트로 이동
		if (id.equals("java") && pw.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id); //name은 임의적으로 "id"로 작성함 , id(value)값은 저장
			RequestDispatcher d = request.getRequestDispatcher("menu.jsp");
			d.forward(request, response);//menu.jsp에 전달
			
		} else {
			out.println("<script>");
			out.println("alert('No match')");
			out.println("history.back()");
			out.println("</script>");
		}

	}

}
