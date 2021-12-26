package filter;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class NullParameterFilter implements Filter {

	private String[] parameterNames=null;

	//parameterNames초기화 파라미터의 값을 읽어와 기본값을 저장할 파라미터 목록을 parameterNames필드에 저장. 
	//파라미터 목록은 ','로 구분
	@Override 
	public void init(FilterConfig config) throws ServletException {
		String names=config.getInitParameter("parameterNames");
		StringTokenizer st = new StringTokenizer(names,", ");
		parameterNames=new String[st.countTokens()];
		
		for(int i=0;st.hasMoreTokens();i++) {
			parameterNames[i]=st.nextToken();
		}
	}
	
	//필터작업 수행. 
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		NullParameterRequestWrapper requestWrapper=new NullParameterRequestWrapper((HttpServletRequest)request);
		requestWrapper.checkNull(parameterNames);//기본값으로 빈 문자열을 사용할 목록을 요청래퍼객체에 전달
		
		chain.doFilter(requestWrapper, response);
	}
	
	@Override
	public void destroy() {
	}
}
