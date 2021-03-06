package jdbc;

import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.apache.commons.pool2.ObjectPool;
import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.commons.dbcp2.BasicDataSourceFactory; 

//@WebServlet("/DBCPInit")
public class DBCPInit extends HttpServlet { //DBCP 초기화 서블릿
	private static final long serialVersionUID = 1L;
	
	public void init() throws ServletException {
		loadJDBCDriver();
		initConnectionPool();
	}
	
	private void loadJDBCDriver() {
		try {
			Class.forName("com.mysql.jdbc.Driver"); //커넥션풀이 내부에서 사용할 JDBC드라이버 로딩
		} catch (ClassNotFoundException ex) {
			throw new RuntimeException("fail to load JDBC Driver",ex);
		}
	}
	private void initConnectionPool() {
		try {
			String jdbcUrl="jdbc:mysql://localhost:3306/guestbook?"+
					"useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
			String username="jsp_db";
			String pw="1234";
			
			ConnectionFactory connFactory= //커넥션 풀이 새로운 커넥션을 생성할 때 사용할 커넥션 팩토리 생성
					new DriverManagerConnectionFactory(jdbcUrl,username,pw);
			
			PoolableConnectionFactory poolableConnFactory= 
					new PoolableConnectionFactory(connFactory,null);
			poolableConnFactory.setValidationQuery("select 1"); //커넥션을 검사할 때 사용할 쿼리 설정 
			
		
			GenericObjectPoolConfig poolConfig=new GenericObjectPoolConfig();
			poolConfig.setTimeBetweenEvictionRunsMillis(1000L*60L*5L); //유후 커넥션 검사 주기
			poolConfig.setTestWhileIdle(true);//풀에 보관중인 커넥션이 유효한지 검사할지 여부
			poolConfig.setMinIdle(4);//커넥션 최소 개수
			poolConfig.setMaxTotal(50);//커넥션 최대 개수 
			
			GenericObjectPool<PoolableConnection> connectionPool=new GenericObjectPool<>(poolableConnFactory,poolConfig);
			poolableConnFactory.setPool(connectionPool);
			
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver=(PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			driver.registerPool("guestbook", connectionPool);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
