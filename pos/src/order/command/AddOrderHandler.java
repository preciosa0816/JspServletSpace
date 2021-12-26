package order.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import member.service.DuplicateIdException;
import mvc.command.CommandHandler;
import order.service.AddOrderService;
import order.service.AddRequest;

public class AddOrderHandler implements CommandHandler {//웹요청처리
	private static final String FORM_VIEW="/WEB-INF/view/screen.jsp";
	private AddOrderService addService = new AddOrderService();
	
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
		AddRequest addreq = new AddRequest();
		addreq.setDrinkname(req.getParameter("name"));
		addreq.setPrice(Integer.parseInt(req.getParameter("price")));
		addreq.setQuantity(Integer.parseInt(req.getParameter("amount")));
		
		Map<String, Boolean> errors = new HashMap<>();// 에러정보를 담을 맵 객체를 생성하고 "errors"속성에 저장
		req.setAttribute("errors", errors);// JSP코드에서 발생한 에러에 따라 알맞은 에러메시지를 보여주기 위함
		
		addreq.validate(errors);//객체유효검사
		if (!errors.isEmpty()) {// errors 맵 객체에 데이터가 존재하면 폼 뷰 경로를 리턴
			return FORM_VIEW;
		}
		try {
			addService.Add(addreq);
			return "/WEB-INF/view/screen.jsp";
		}catch(DuplicateIdException e) { //동일한 메뉴 존재할때
			errors.put("duplicateId", Boolean.TRUE);
			return FORM_VIEW;
		}
		 
	}
	
}
