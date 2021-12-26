package filter;

import java.util.HashMap;
import java.util.Map;
import java.util.Collections;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class NullParameterRequestWrapper extends HttpServletRequestWrapper {
	private Map<String, String[]> parameterMap = null;

	//request파라미터 정보를 parameterMap에 저장
	public NullParameterRequestWrapper(HttpServletRequest request) {
		super(request);
		parameterMap = new HashMap<String, String[]>(request.getParameterMap());
	}
	
	//검사할 파라미터의 이름 목록을 인자로 전달받고 검사한 후 해당이름의 파라미터가 존재하지 않으면 빈 문자열 저장
	public void checkNull(String[] parameterNames) {
		for (int i = 0; i < parameterNames.length; i++) {
			if (!parameterMap.containsKey(parameterNames[i])) {
				String[] values = new String[] { "" };
				parameterMap.put(parameterNames[i], values);
			}
		}
	}
	
	//파라미터와 관련된 메서드 구현하여 parameterMap에서 파라미터 값 읽어오기 
	@Override
	public String getParameter(String name) {
		String[] values = getParameterValues(name);
		if(values!=null&&values.length>0) 
			return values[0];
		return null;
	}
	
	@Override
	public Map<String,String[]> getParameterMap(){
		return parameterMap;
	}
	
	@Override
	public Enumeration<String> getParameterNames(){
		return Collections.enumeration(parameterMap.keySet());
	}
	
	@Override
	public String[] getParameterValues(String name) {
		return (String[])parameterMap.get(name);
	}
}