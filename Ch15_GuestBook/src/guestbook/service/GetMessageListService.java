package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import guestbook.dao.MessageDao;
import guestbook.model.Message;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class GetMessageListService { //요청한 페이지 번호에 포함된 메시지 묻고 구하기, 방명록에 등록된 메시지 목록 제공
	//싱글톤 시작
	private static GetMessageListService instance=new GetMessageListService();
	
	public static GetMessageListService getInstance() {
		return instance;
	}
	
	private GetMessageListService() {
	}
	//싱글톤 종료
	
	private static final int MESSAGE_COUNT_PER_PAGE=3; //한페이지에 보여줄 메시지 개수를 3으로 지정 
	
	public MessageListView getMessageList(int pageNumber) {
		Connection conn=null;
		int currentPageNumber=pageNumber;
		try {
			conn=ConnectionProvider.getConnection();
			MessageDao messageDao=MessageDao.getInstance();
			
			int messageTotalCount=messageDao.selectCount(conn); //전체 메시지 갯수 구하기 
			
			List<Message> messageList=null;
			int firstRow=0;
			int endRow=0;
			if(messageTotalCount>0) {
				//메시지 개수가 0보다 크면 요청한 페이지에 속하는 메시지의 시작행과 끝 행 구하기
				firstRow=(pageNumber-1)*MESSAGE_COUNT_PER_PAGE+1;
				endRow=firstRow+MESSAGE_COUNT_PER_PAGE-1;
				messageList=messageDao.selectList(conn, firstRow, endRow);
			}else {
				currentPageNumber=0;
				messageList=Collections.emptyList(); //빈 LIST 할당
			}
			//getMessageList를 클래스로 한 getMessageList를 수행시 에러가없을경우 무조건 리턴
			return new MessageListView(messageList, messageTotalCount, currentPageNumber, MESSAGE_COUNT_PER_PAGE, firstRow, endRow);
		}catch(SQLException e) {
			throw new ServiceException("목록 구하기 실패: " +e.getMessage(),e);
		}finally {
			JdbcUtil.close(conn);
		}
	}
}
