package filter;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class XSLTResponseWrapper extends HttpServletResponseWrapper {

	private ResponseBufferWriter buffer=null;
	
	public XSLTResponseWrapper(HttpServletResponse response) {
		super(response);
		buffer=new ResponseBufferWriter();
	}
	
	@Override //출력 스트림에 데이터 출력
	public PrintWriter getWriter() throws java.io.IOException{
		return buffer;
	}
	
	@Override//jsp/servlet에서 설정한 content type을 무시하고 필터에서 새롭게 콘텐트 타입을 지정하기위함
	public void setContentType(String contentType) {
		//do nothing
	}
	
	public String getBufferedString() {//버퍼에 저장된 내용을 구해 리턴
		return buffer.toString();
	}
	
	

}
