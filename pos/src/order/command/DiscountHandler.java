package order.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import member.service.DuplicateIdException;
import menu.service.AddMenuService;
import menu.service.AddRequest;
import mvc.command.CommandHandler;
import order.service.DiscountPage;

public class DiscountHandler implements CommandHandler {//웹요청처리
	private static final String FORM_VIEW="/WEB-INF/view/discountForm.jsp";
	//private AddMenuService addService = new AddMenuService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {// 요청방식이 get이면 processForm실행
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {// 요청방식이 POST이면 processSubmit실행
			return processSubmit(req, res);
		} else {
			res.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {// 폼을 보여주는 뷰 경로 리턴
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {// 폼 전송 처리
		String discount = req.getParameter("discount");
		int disc=Integer.parseInt(discount);
		
		DiscountPage disPer = new DiscountPage();
		disPer.setDiscount(disc);
		req.setAttribute("disPer", disPer);
		
		return "/WEB-INF/view/screen.jsp";
	}
	
}
