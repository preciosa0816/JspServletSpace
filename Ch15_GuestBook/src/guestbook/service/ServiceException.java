package guestbook.service;
//방명록 예제 도중 서비스 클래스들이 DAO를 실행하는 도중 exception발생시 serviceExceiption발생시키도록 구현
public class ServiceException extends RuntimeException {
	public ServiceException(String message, Exception cause) {
		super(message,cause);
	}
	
	public ServiceException(String message) {
		super(message);
	}
}
