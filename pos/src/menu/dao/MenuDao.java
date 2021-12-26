package menu.dao;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import jdbc.JdbcUtil;
import menu.model.Menu;
import order.model.OrderDetail;
import order.model.OrderedMenu;

public class MenuDao {// article 테이블 데이터 삽입

	public void insert(Connection conn, Menu menu) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {// insert 쿼리를 실행해서 article 테이블에 데이터 삽입. article_no 칼럼은 자동 증가칼럼이므로 Insert 쿼리 실행시
				// 값지정x
			pstmt = conn.prepareStatement("insert into menu values(menu_no_seq.nextval,?,?,?)");
			pstmt.setString(1, menu.getName());
			pstmt.setInt(2, menu.getPrice());
			pstmt.setString(3, menu.getDrinktype());
			pstmt.executeUpdate();

		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}

	}
	
	


	public Menu selectByName(Connection conn, String name) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from menu where name=?");
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			Menu menu = null;
			while (rs.next()) {
				menu = new Menu(rs.getInt("no"), rs.getString("name"), rs.getInt("price"), rs.getString("drinktype"));

			}

			return menu;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	
	public Menu selectByNo(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from menu where no=?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Menu menu = null;
			if (rs.next()) {
				menu = new Menu(rs.getInt("no"), rs.getString("name"), rs.getInt("price"), rs.getString("drinktype"));
			}
			return menu;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);

		}
	}
//
//	private Timestamp toTimestamp(Date date) {
//		return new Timestamp(date.getTime());
//	}
//	
//	public int selectCount(Connection conn)throws SQLException{//article 테이블의 전체레코드 수 리턴
//		Statement stmt=null;
//		ResultSet rs=null;
//		try {
//			stmt=conn.createStatement();
//			rs=stmt.executeQuery("select count(*) from article");
//			if(rs.next()) {
//				return rs.getInt(1);
//			}
//			return 0;
//		}finally {
//			JdbcUtil.close(rs);
//			JdbcUtil.close(stmt);
//		}
//	}

	public List<Menu> select(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {// limit을 사용해 쿼리실행결과 중 일부 레코드만 조회시 사용(첫번쨰 행번호와 읽어올 레코드 개수)
				// 행번호는 0번 기준, 역순정렬
			pstmt = conn.prepareStatement("select * from menu where rownum >=1 and rownum<=15");
			rs = pstmt.executeQuery();
			List<Menu> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertMenu(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}

	private Menu convertMenu(ResultSet rs) throws SQLException {
		return new Menu(rs.getInt("no"), rs.getString("name"), rs.getInt("price"), rs.getString("drinktype"));
	}

//	private Date toDate(Timestamp timestamp) {
//		return new Date(timestamp.getTime());
//	}
//	
	public List<Menu> selectById(Connection conn, String drinktype) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from menu where drinktype=?");
			pstmt.setString(1, drinktype);
			rs = pstmt.executeQuery();
			List<Menu> menu = new ArrayList<>();
			while (rs.next()) {
				menu.add(convertMenu(rs));
			}

			return menu;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

//	public Menu selectForModify(Connection conn, String oldname) throws SQLException{
//		PreparedStatement pstmt=null;
//		ResultSet rs=null;
//		
//		try {
//			pstmt=conn.prepareStatement("select * from menu where name=?");
//			pstmt.setString(1, oldname);
//			rs=pstmt.executeQuery();
//			Menu menu=null;
//			while(rs.next()) {
//				menu=new Menu(rs.getString("name"), rs.getInt("price"), rs.getString("drinktype"));
//				
//			}
//			return menu;			
//		}finally {
//			JdbcUtil.close(rs);
//			JdbcUtil.close(pstmt);
//		}
//	}

//	public void increaseReadCount(Connection conn, int no)throws SQLException{
//		try(PreparedStatement pstmt=conn.prepareStatement("update article set read_cnt=read_cnt+1 where article_no=?")){
//			pstmt.setInt(1, no);
//			pstmt.executeUpdate();
//		}
//	}
//	
	public int update(Connection conn, String name, int price, String type, int no) throws SQLException {
		try (PreparedStatement pstmt = conn
				.prepareStatement("update menu set name=?, price=?, drinktype=? " + "where no=?")) {
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, type);
			pstmt.setInt(4, no);
			return pstmt.executeUpdate();
		}

	}

	public int delete(Connection conn, int no) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("delete from menu where no=?")) {
			pstmt.setInt(1, no);
			return pstmt.executeUpdate();
		}

	}
	
	
}
