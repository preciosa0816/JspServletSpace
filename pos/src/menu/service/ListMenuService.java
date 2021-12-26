package menu.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import menu.dao.MenuDao;
//import jdbc.connection.ConnectionProvider;
import menu.model.Menu;

public class ListMenuService {
	private MenuDao menuDao = new MenuDao();
	//private int size=10;
	
	public MenuPage getMenuPage() throws NamingException {
		//Connection conn = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		
		try(Connection conn = ds.getConnection()){
			
			//int total=menuDao.selectCount(conn);//전체 게시글 개수 구하기
			//PageNum에 해당하는 게시글 목록 구하기 
			//articleDao.select() 메서드의 두번쨰 파라미터는 조회할 레코드의 시작행.
			//시작행은 0번을 기준으로 하므로 (pageNum-1)*size를 시작행번호로 사용
			List<Menu> content = menuDao.select(conn);
			return new MenuPage(content); //ArticlePage 객체 리턴 
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
