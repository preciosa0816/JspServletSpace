package util;

import java.text.DecimalFormat;
//주소 참고 : https://jakarta.apache.org/site/downloads/index.html
//http://archive.apache.org/dist/jakarta/taglibs/standard/binaries/ 
//, jakarta-taglibs-standard-1.1.2.zip  다운   - 압축풀고 tld폴더를 WEB-INF안에 넣기 
public class FormatUtil {
	public static String number(long number, String pattern) {
		DecimalFormat format = new DecimalFormat(pattern);
		
		return format.format(number); 
	}
}
