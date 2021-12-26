package menu.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import jdbc.JdbcUtil;
import menu.dao.MenuDao;
import menu.model.Menu;
//import jdbc.connection.ConnectionProvider;

public class DeleteMenuService {
	private MenuDao menuDao= new MenuDao();
	//private ArticleContentDao contentDao = new ArticleContentDao();
	
	public void delete(DeleteMenuRequest delReq) {
		Connection conn=null;
		try {
			//conn=ConnectionProvider.getConnection();
			//conn.setAutoCommit(false);
		//Connection conn = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
			//게시글 번호에 해당하는 Article 객체를 구하고 게시글이 존재하지 않으면 익셉션 발생 
			Menu menu = menuDao.selectByNo(conn, delReq.getNo());
			
			if(menu==null) {
				throw new MenuNotFoundException();
			}
			if(!canDelete(delReq.getUserId())) {//수정가능검사
				throw new PermissionDeniedException();
			}
			
			//두 DAO의 update()메서드를 이용해 제목과 내용을 수정.
			menuDao.delete(conn, delReq.getNo());
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
			
		}finally {
			JdbcUtil.close(conn);
		}
	}
	//관리자라면 메뉴삭제 가능.
	private boolean canDelete(String modifyingUserId) {
		//return modifyingUserId.equals("admin");
		return "admin".equals(modifyingUserId);
	}
}
