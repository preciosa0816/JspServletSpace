package order.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import menu.service.MenuNotFoundException;
import mvc.command.CommandHandler;

import order.service.OrderReadMenuService;
import order.service.OrderedMenuData;

public class OrderReadMenuHandler implements CommandHandler{

	private OrderReadMenuService readService = new OrderReadMenuService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String name = req.getParameter("name");
		//int articleNum=Integer.parseInt(noVal);
		
		try {//readService.getArticle()메서드는 지정한 번호에 해당하는 게시글 데이터가 존재하지 않으면 익셉션 발생
			OrderedMenuData orderedmenuData = readService.getMenu(name);
			req.setAttribute("orderedMenuData", orderedmenuData);//articleData에 데이터 저장
			return "WEB-INF/view/screen.jsp";
		}catch(MenuNotFoundException e) {
			req.getServletContext().log("no menu",e);
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
		
	}
	
}
