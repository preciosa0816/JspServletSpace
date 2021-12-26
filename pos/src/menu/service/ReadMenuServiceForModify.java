package menu.service;

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

public class ReadMenuServiceForModify {
	private MenuDao menuDao = new MenuDao();
	//private ArticleContentDao contentDao = new ArticleContentDao();

	public MenuData getMenu(int no) throws NamingException {
		//Connection conn = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		
		try (Connection conn = ds.getConnection()) {
			//article 테이블에서 지정한 번호의 Article객체 구하기 
			Menu menu = menuDao.selectByNo(conn, no);
			//Menu menu= menuDao.
			if (menu == null) {//게시글 데이터 존재x
				throw new MenuNotFoundException();
			}

			return new MenuData(menu);//ArticleData 객체 리턴 
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
