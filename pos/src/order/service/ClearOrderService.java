package order.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import jdbc.JdbcUtil;
import menu.dao.MenuDao;
import menu.model.Menu;
import order.dao.OrderDao;
//import jdbc.connection.ConnectionProvider;
import order.model.OrderDetail;

public class ClearOrderService {//orderdetail
	
	private OrderDao orderDao = new OrderDao();
	

	public void delete() {
		Connection conn = null;
		try {
			// conn=ConnectionProvider.getConnection();
			// conn.setAutoCommit(false);
			// Connection conn = null;
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();

			// 두 DAO의 update()메서드를 이용해 제목과 내용을 수정.
			orderDao.clearOrder(conn);
			conn.commit();

		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);

		} catch (NamingException e) {
			JdbcUtil.rollback(conn);
			// throw e;

		} finally {
			JdbcUtil.close(conn);
		}
	}
	public void deleteOne() {
		Connection conn = null;
		try {
			// conn=ConnectionProvider.getConnection();
			// conn.setAutoCommit(false);
			// Connection conn = null;
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			// 두 DAO의 update()메서드를 이용해 제목과 내용을 수정.
			List<OrderDetail> orderdetail=orderDao.Read(conn);
			int size=orderdetail.size()-1;
			int deletenum = orderdetail.get(size).getOrderid();
			orderDao.delete(conn, deletenum);
			conn.commit();
			
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
			
		} catch (NamingException e) {
			JdbcUtil.rollback(conn);
			// throw e;
			
		} finally {
			JdbcUtil.close(conn);
		}
	}

}
