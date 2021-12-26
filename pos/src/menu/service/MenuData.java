package menu.service;

import java.util.List;

import auth.service.User;
import menu.model.Menu;
//Ariticle 객체와 ArticleContent 객체를 한 객체에 담기위한 용도
public class MenuData {
	private List<Menu> menu;
	private Menu one;
	//private ArticleContent content;

	public List<Menu> getMenu() {
		return menu;
	}

	public MenuData(List<Menu> menu, Menu one) {
		super();
		this.menu = menu;
		this.one = one;
	}
	
	public MenuData(Menu one) {
		super();
		this.one = one;
	}

	public Menu getOne() {
		return one;
	}

	public void setOne(Menu one) {
		this.one = one;
	}

	public MenuData(List<Menu> menu) {
		//super();
		this.menu = menu;
	}

	
	
	
//	public MenuData(Article article, ArticleContent content) {
//		this.article = article;
//		this.content = content;
//	}
	
//	public String getContent() {
//		return content.getContent();
//	}
//	


	
}
