package menu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import menu.service.ListMenuService;
import menu.service.MenuData;
import menu.service.MenuNotFoundException;
import menu.service.MenuPage;
import menu.service.ReadMenuService;
import mvc.command.CommandHandler;
import order.service.AddOrderService;
import order.service.AddRequest;
import order.service.ClearOrderService;
import order.service.OrderReadMenuService;
import order.service.OrderedMenuData;

public class ListMenuHandler implements CommandHandler {// 웹 요청 처리

	private ListMenuService listService = new ListMenuService();

	private ReadMenuService readService = new ReadMenuService();
	private OrderReadMenuService OrderedReadService = new OrderReadMenuService();//
	
	private AddOrderService addService = new AddOrderService();
	
	private ClearOrderService clearService = new ClearOrderService();

	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String name = req.getParameter("name");
		String type = req.getParameter("drinktype");
		String clear = req.getParameter("clear");
		String cancle = req.getParameter("cancle");
		//String discount = req.getParameter("price");

		

		try {// readService.getArticle()메서드는 지정한 번호에 해당하는 게시글 데이터가 존재하지 않으면 익셉션 발생
			//list.do
			MenuPage menuPage = listService.getMenuPage();
			req.setAttribute("menuPage", menuPage);
			
			//read.do
			MenuData menuData = readService.getMenu(type);
			req.setAttribute("menuData", menuData);// menuData에 데이터 저장
			
			//order.do
			OrderedMenuData orderedmenuData = OrderedReadService.getMenu(name);			
			req.setAttribute("orderedMenuData", orderedmenuData);// orderedMenuData에 데이터 저장
			
			//addorder.do
			if(req.getParameter("name")!=null) {
			AddRequest addreq = new AddRequest();
			addreq.setDrinkname(req.getParameter("name"));
			addreq.setPrice(Integer.parseInt(req.getParameter("price")));
			addreq.setQuantity(1);
			addService.Add(addreq);
			}
			if ("true".equals(clear)) {
				orderedmenuData.getMenu().clear();
				
				clearService.delete();

			}
			int size = orderedmenuData.getMenu().size() - 1;
			if ("true".equals(cancle) && size >= 0) {
				orderedmenuData.getMenu().remove(size);
				
				clearService.deleteOne();
				
			}
			return "WEB-INF/view/screen.jsp";
		} catch (MenuNotFoundException e) {
			req.getServletContext().log("no menu", e);
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}

	}

}
