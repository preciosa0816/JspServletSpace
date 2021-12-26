package guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


import guestbook.model.Message;
import jdbc.JdbcUtil;

public class MessageDao {//GUESTBOOOK_MESSAGE 테이블에 대한 쿼리 실행
	//싱글톤 : 한개의 서비스 객체를 여러번 사용하는 것과 매번 새로운 서비스 객체를 생성해서 사용하는 것이 기능상 차이가 없다면, 매번 새로운 서비스 객체를 생성하지 않고 한개의 객체를 재사용하도록 구현한 것.
//싱글톤 시작
	private static MessageDao messageDao= new MessageDao();
	public static MessageDao getInstance() {
		return messageDao;
	}
	
	private MessageDao() {}
//싱글톤 종료 - 한객체만 사용하도록 
	
	//insert 쿼리를 이용해서 message 파라미터 데이터를 테이블에 삽입.
	public int insert(Connection conn, Message message) throws SQLException{
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement("insert into guestbook_message values(message_id_seq.nextval,?,?,?)");
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage()); //message_id칼럼의 값은 자동증가이므로 컬럼값 설정 x
			return pstmt.executeUpdate();
		}finally {
			JdbcUtil.close(pstmt);
		}
	}
	
	//칼럼읙 값이 messageId인 레코드 읽어오기 ->레코드 존재시 객체생성. 존재x->null리턴 
	public Message select(Connection conn, int messageId) throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			pstmt=conn.prepareStatement("select * from guestbook_message where message_id=?");
			pstmt.setInt(1, messageId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return makeMessageFromResultSet(rs);
			}else {
				return null;
			}
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	//resultSet에서 데이터를 읽어와 MEssage를 생성.select()메서드와 selectList()메서드에서 사용. 
	private Message makeMessageFromResultSet(ResultSet rs) throws SQLException{
		Message message= new Message();
		message.setId(rs.getInt("message_id"));
		message.setGuestName(rs.getString("guest_name"));
		message.setPassword(rs.getString("password"));
		message.setMessage(rs.getString("message"));
		return message;
	}
	
	//guestbook_message 테이블의 전체 레코드 개수 구하기
	public int selectCount(Connection conn) throws SQLException{
		Statement stmt=null;
		ResultSet rs=null;
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select count(*) from guestbook_message");
			rs.next();
			return rs.getInt(1);
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
		
	}
	
	//데이터조회
	public List<Message> selectList(Connection conn, int firstRow, int endRow) throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			//limit?,? 구문은 지정한 행부터 지정한 개수만큼 행을 가져오는 기능을 제공한다. limit의 시작행번호가 0기반이므로 1을 뺌
			pstmt=conn.prepareStatement("select * from guestbook_message where rownum >=? and rownum<=? order by message_id desc ");
			pstmt.setInt(1, firstRow-1);
			pstmt.setInt(2, endRow-firstRow+1);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				List<Message> messageList=new ArrayList<Message>();
				do {
					messageList.add(makeMessageFromResultSet(rs));
				}while(rs.next());
				return messageList;
			}else {
				return Collections.emptyList();
			}
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	//레코드 삭제 
	public int delete(Connection conn, int messageId) throws SQLException{
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement("delete from guestbook_message where message_id=?");
			pstmt.setInt(1, messageId);
			return pstmt.executeUpdate();
		}finally {
			JdbcUtil.close(pstmt);
		}
		
	}
}


















