package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import guestbook.dao.MessageDao;
import guestbook.model.Message;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class DeleteMessageService {//작성한 메시지를 삭제하는 기능 제공
	private static DeleteMessageService instance= new DeleteMessageService();
	
	public static DeleteMessageService getInstance() {
		return instance;
	}
	private DeleteMessageService(){}
	
	public void deleteMessage(int messageId, String password) {
		Connection conn=null;
		try {
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false); //트랜잭션 시작
			
			MessageDao messageDao = MessageDao.getInstance();
			Message message = messageDao.select(conn, messageId);//삭제할 메시지에 해당하는 Message 객체 구하기 
			if(message==null) {
				throw new MessageNotFoundException("메시지 없음");
			}
			if(!message.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}
			messageDao.delete(conn, messageId);
			conn.commit();
		}catch(SQLException ex) {
			JdbcUtil.rollback(conn);
			throw new ServiceException("삭제 실패:"+ex.getMessage(),ex);
		}catch(InvalidPasswordException | MessageNotFoundException ex) {
			JdbcUtil.rollback(conn);
			throw ex;
		}finally {
			JdbcUtil.close(conn);
		}
		
	}
	
}
