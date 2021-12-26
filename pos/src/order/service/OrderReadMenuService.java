package order.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

//import jdbc.connection.ConnectionProvider;
import menu.dao.MenuDao;
import menu.model.Menu;
import menu.service.MenuNotFoundException;
import order.dao.OrderDao;

public class OrderReadMenuService {
	//private MenuDao menuDao = new MenuDao();
	private OrderDao orderDao=new OrderDao();

	public OrderedMenuData getMenu(String name) throws NamingException {
		//Connection conn = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		
		try (Connection conn = ds.getConnection()) {
			//article 테이블에서 지정한 번호의 Article객체 구하기 
			List<Menu> menu = orderDao.selectByNameforOrder(conn, name);
			//Menu menu= menuDao.
			if (menu == null) {//게시글 데이터 존재x
				throw new MenuNotFoundException();
			}
			
			return new OrderedMenuData(menu);//ArticleData 객체 리턴 
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
