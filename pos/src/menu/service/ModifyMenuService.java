package menu.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import jdbc.JdbcUtil;
//import jdbc.connection.ConnectionProvider;
import menu.dao.MenuDao;
import menu.model.Menu;

public class ModifyMenuService {
	private MenuDao menuDao= new MenuDao();
	
	public void modify(ModifyMenuRequest modReq){
		Connection conn=null;
		
		try {
			//Connection conn = null;
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			//게시글 번호에 해당하는 Article 객체를 구하고 게시글이 존재하지 않으면 익셉션 발생 
			Menu menu = menuDao.selectByNo(conn, modReq.getNo());
			if(menu==null) {
				throw new MenuNotFoundException();
			}
			
			
			//두 DAO의 update()메서드를 이용해 제목과 내용을 수정.
			menuDao.update(conn, modReq.getName(), modReq.getPrice(),
					modReq.getDrinktype(), modReq.getNo());
			conn.commit();
			
		}catch(SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
			
		}catch(PermissionDeniedException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}catch(NamingException e) {
			JdbcUtil.rollback(conn);
			//throw e;
			e.getMessage();
			
		}finally {
			JdbcUtil.close(conn);
		}
	}
	
}
