package menu.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.User;
import menu.service.DeleteMenuRequest;
import menu.service.DeleteMenuService;
import menu.service.MenuData;
import menu.service.MenuNotFoundException;
import menu.service.PermissionDeniedException;
import menu.service.ReadMenuServiceForModify;
import mvc.command.CommandHandler;

public class DeleteMenuHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/deleteMenuForm.jsp";

	private ReadMenuServiceForModify readService = new ReadMenuServiceForModify();
	private DeleteMenuService deleteService = new DeleteMenuService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {// 요청방식이 get이면 processForm실행
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {// 요청방식이 POST이면 processSubmit실행
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) throws IOException, NamingException {// 폼을
																														// 리턴
		try {
			String noVal = req.getParameter("no");
			int no = Integer.parseInt(noVal);
			// 폼에 보여줄 게시글 구하기
			MenuData menuData = readService.getMenu(no);

			User authUser = (User) req.getSession().getAttribute("authUser");// 사용자정보구하기

			if (authUser == null) {
				return null;
			}

			// 폼에 데이터 보여줄 떄 사용할 객체 생성
			DeleteMenuRequest delReq = new DeleteMenuRequest(menuData.getOne().getNo(),
															menuData.getOne().getName(),
															menuData.getOne().getPrice() ,
															menuData.getOne().getDrinktype());
			req.setAttribute("delReq", delReq);
			return FORM_VIEW;

		} catch (MenuNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {// 폼 전송 처리
		User authUser = (User) req.getSession().getAttribute("authUser");// 사용자 정보 구하기
		String noVal = req.getParameter("no");
		int no = Integer.parseInt(noVal);

		// deleteRequest 객체 생성
		DeleteMenuRequest delReq = new DeleteMenuRequest(authUser.getId(),no, req.getParameter("name"));
		req.setAttribute("delReq", delReq);

		// 에러 정보를 담을 맵 객체 생성
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		delReq.validate(errors);
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		try {
			// 게시글 삭제기능 실행.
			deleteService.delete(delReq);
			return "/WEB-INF/view/deleteMenuPage.jsp";
		} catch (MenuNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return "ArticleNotFoundException";
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return "PermissionDeniedException";
		}

	}

}
