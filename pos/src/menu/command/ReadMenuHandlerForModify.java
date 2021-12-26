package menu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import menu.service.MenuData;
import menu.service.MenuNotFoundException;
import menu.service.ReadMenuService;
import menu.service.ReadMenuServiceForModify;
import mvc.command.CommandHandler;

public class ReadMenuHandlerForModify implements CommandHandler{

	private ReadMenuServiceForModify readService = new ReadMenuServiceForModify();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String type = req.getParameter("no");
		int no=Integer.parseInt(type);
		
		try {//readService.getArticle()메서드는 지정한 번호에 해당하는 게시글 데이터가 존재하지 않으면 익셉션 발생
			MenuData menuData = readService.getMenu(no);
			req.setAttribute("menuData", menuData);//articleData에 데이터 저장
			return "WEB-INF/view/modifyMenuPage.jsp";
		}catch(MenuNotFoundException e) {
			req.getServletContext().log("no menu",e);
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
		
	}
	
}
