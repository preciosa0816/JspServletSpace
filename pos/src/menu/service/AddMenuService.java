package menu.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import javax.management.RuntimeErrorException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import jdbc.JdbcUtil;
import member.model.Member;
import member.service.DuplicateIdException;
//import jdbc.connection.ConnectionProvider;
import menu.dao.MenuDao;
import menu.model.Menu;

public class AddMenuService {//게시글 쓰기 기능 
	private MenuDao menuDao=new MenuDao();
	//private ArticleContentDao contentDao=new ArticleContentDao();
	
	public void Add(AddRequest req) throws NamingException {//writeRequest타입의 req 파라미터를이용한 게시글 등록 및 결과로 게시글번호 리턴
		Connection conn=null;
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			conn.setAutoCommit(false);//트랜잭션 시작 
			
			//menu데이터구하기
			Menu menu=menuDao.selectByName(conn, req.getName());
			
			//만들려는 menu에 해당하는 데이터가 이미 존재하면, 트랜잭션을 롤백하고 DuplicatedIdException발생
			if(menu!=null) {
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}
			
			menuDao.insert(conn, new Menu(req.getName(), req.getPrice(), req.getDrinktype()));
			
			conn.commit();
		}catch(SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}catch(RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}finally {
			JdbcUtil.close(conn);
		}
	}
	
}
