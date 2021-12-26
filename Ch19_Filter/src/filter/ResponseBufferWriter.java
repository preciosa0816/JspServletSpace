package filter;

import java.io.PrintWriter;
import java.io.StringWriter;

public class ResponseBufferWriter extends PrintWriter {
	//print(),println(),write()등의 메서드를 통해 전달된 데이터를 StringWriter에 저장
	public ResponseBufferWriter() {
		super(new StringWriter(4096));
	}
	
	public String toString() {//StringWriter에 저장된 데이터를 String타입으로 변환
		return((StringWriter)super.out).toString();
	}
}
