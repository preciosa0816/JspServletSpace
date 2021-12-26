
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContextFile")
public class ContextFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String resourcePath = "/message/notice.txt";

		InputStreamReader is = new InputStreamReader(getServletContext().getResourceAsStream(resourcePath), "UTF-8");
		/* getServletContext()= jsp인 application과 같은 의미로 쓰임 */
		BufferedReader br = new BufferedReader(is);

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		String str = br.readLine();
		while (str != null) {
			out.print(str + "<br>");
			str =br.readLine();
		}
		br.close();
		out.println("</body></html>");

	}

}
