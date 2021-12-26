package menu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import menu.service.ListMenuService;
import menu.service.MenuPage;
import mvc.command.CommandHandler;

public class SetListMenuHandler implements CommandHandler {//웹 요청 처리

	private ListMenuService listService = new ListMenuService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//String pageNoVal=req.getParameter("pageNo");//pageNo 파라미터 값을 이용해서 읽어올 페이지 번호 구하기
		//int pageNo=1;
		//if(pageNoVal!=null) {
		//	pageNo=Integer.parseInt(pageNoVal);
		//}
		//ListArticleHandler를 이용해서 지정한 페이지 번호에 해당하는 게시글 데이터 구하기
		MenuPage menuPage = listService.getMenuPage();
		req.setAttribute("menuPage", menuPage);
		return "/WEB-INF/view/menuManagement.jsp";
		
	}

}
