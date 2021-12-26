package menu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import menu.service.MenuData;
import menu.service.MenuNotFoundException;
import menu.service.ReadMenuService;
import mvc.command.CommandHandler;

public class DeleteReadMenuHandler implements CommandHandler{

	private ReadMenuService readService = new ReadMenuService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String type = req.getParameter("drinktype");
		//int articleNum=Integer.parseInt(noVal);
		
		try {//readService.getArticle()메서드는 지정한 번호에 해당하는 게시글 데이터가 존재하지 않으면 익셉션 발생
			MenuData menuData = readService.getMenu(type);
			req.setAttribute("menuData", menuData);//articleData에 데이터 저장
			return "WEB-INF/view/deleteMenuPage.jsp";
		}catch(MenuNotFoundException e) {
			req.getServletContext().log("no menu",e);
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
		
	}
	
}
