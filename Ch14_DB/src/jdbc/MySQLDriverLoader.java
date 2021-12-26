package jdbc;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;


//@WebServlet("/MySQLDriverLoader")
public class MySQLDriverLoader extends HttpServlet {
	private static final long serialVersionUID = 1L;
//웹어플리케이션 구동씨 JDBC 드라이버를 한번만 로딩하면 이후로 계속 사용가능함.
	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException ex) {
			throw new ServletException(ex);
		}
		
	}

}
