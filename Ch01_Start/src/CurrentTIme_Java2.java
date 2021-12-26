
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
//순수자바인 경우 출력: console창
public class CurrentTIme_Java2 {
	
	public String now() {
		Date d = new Date();
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy년 MM월 dd일");
		String str=sdf.format(d);
		return str;
	}
	
	public static void main(String[] args) {
		Calendar c= Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
				int month = c.get(Calendar.MONTH)+1;
				int date = c.get(Calendar.DATE);
		
		System.out.println(year+"년 "+month+"월 "+date+"일");
		
		Date d = new Date();
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy년 MM월 dd일");
		String str=sdf.format(d);
		System.out.println(str);
		
		CurrentTIme_Java2 crt= new CurrentTIme_Java2();
		System.out.println(crt.now());
	}

}
