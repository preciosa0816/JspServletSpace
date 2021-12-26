
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CurrentTIme_Java {

	public static void main(String[] args) {
		Calendar c= Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
				int month = c.get(Calendar.MONTH);
				int date = c.get(Calendar.DATE);
		
		System.out.println(year+"년 "+month+"월 "+date+"일");
		Date d = new Date();
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy년 MM월 dd일");
		String str=sdf.format(d);
		System.out.println(str);
	}

}
