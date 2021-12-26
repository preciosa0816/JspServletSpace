package test;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Servlet Life Cycle

@WebServlet("/Hello")
public class ServletLifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletLifeCycle() {
        //super();
        System.out.println("Constructor");
    }


	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 요청");
	}


	public void destroy() {
		System.out.println("destroy");
	}


//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("Service");
//	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get 방식");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post 방식");
		doGet(request, response);
	}

}
