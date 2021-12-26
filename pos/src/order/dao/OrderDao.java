package order.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import menu.model.Menu;
import order.model.OrderDetail;
import order.service.OrderedMenuData;

public class OrderDao {// article 테이블 데이터 삽입

	public void insertOrder(Connection conn, OrderDetail order) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {// insert 쿼리를 실행해서 article 테이블에 데이터 삽입. article_no 칼럼은 자동 증가칼럼이므로 Insert 쿼리 실행시
				// 값지정x
			pstmt = conn.prepareStatement("insert into orderdetail values(order_no_seq.nextval,?,?,?)");
			pstmt.setString(1, order.getDrinkname());
			pstmt.setInt(2, order.getQuantity());
			pstmt.setInt(3, order.getPrice());
			pstmt.executeUpdate();

		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}

	}

	public OrderDetail selectByMenu(Connection conn, String drinkname) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from orderdetail where drinkname=?");
			pstmt.setString(1, drinkname);
			rs = pstmt.executeQuery();
			OrderDetail order = null;
			while (rs.next()) {
				order = new OrderDetail(rs.getInt("no"),rs.getString("drinkname"), rs.getInt("quantity"), rs.getInt("price"));

			}

			return order;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public int clearOrder(Connection conn) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("delete from orderdetail")) {

			return pstmt.executeUpdate();
		}

	}

	private Menu convertMenu(ResultSet rs) throws SQLException {
		return new Menu(rs.getInt("no"), rs.getString("name"), rs.getInt("price"), rs.getString("drinktype"));
	}
	
	private OrderDetail convertOrderMenu(ResultSet rs) throws SQLException {
		return new OrderDetail(rs.getInt("orderid"), rs.getString("drinkname"), rs.getInt("quantity"), rs.getInt("price"));
	}

	List<Menu> orderedmenu = new ArrayList<>();
	List<OrderDetail> order = new ArrayList<>();

	public List<Menu> selectByNameforOrder(Connection conn, String name) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from menu where name=?");
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				orderedmenu.add(convertMenu(rs));
			}
			
			return orderedmenu;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<OrderDetail> Read(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from orderdetail order by orderid");
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
			order.add(convertOrderMenu(rs));
			}
			return order;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public int delete(Connection conn, int deletenum) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("delete from orderdetail where orderid=?")) {

				pstmt.setInt(1, deletenum);
				return pstmt.executeUpdate();
		
		}

	}
}
