<%@page import="basic.LoginBean"%>
<%@page import="basic.productInfo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
배열 항목을 출력하는 EL식<br>
홍길동 1,2,3를 배열에 저장후 저장된 배열을 전송하기
<%
	//(1)배열 항목을 출력하는 EL식
	String[] name={"홍길동1","홍길동2","홍길동3"};
	request.setAttribute("name", name);
	
	//(2)List 객체의 항목을 출력하는 EL
	ArrayList<String> fruit= new ArrayList<>(); //LIST로 하면 오류남.
	fruit.add(0, "딸기");
	fruit.add(1,"오렌지");
	fruit.add(2,"복숭아");
	request.setAttribute("fruit", fruit);
	
	//(3)Map객체의 항목을 출력하는 EL
	//홍길동1, 서울
	//홍길동2, 부산
	//홍길동3, 광주
	//Map<String, String> location= new Map();
	HashMap<String, String> location = new HashMap<>();
	location.put("홍길동1", "서울");
	location.put("홍길동2", "부산");
	location.put("홍길동3", "광주");
	request.setAttribute("location", location);
	
	//(4) javabean의 property를 가져와서 출력하는 방법
	productInfo p = new productInfo();
	p.setName("초코케이크3호");
	String product=p.getName();
	p.setValue(20000);
	int price = p.getValue();
	request.setAttribute("product", product);
	request.setAttribute("price", price);
	request.setAttribute("p", p);
	
	//(5)set & get
	LoginBean a1 = new LoginBean();
	//aaa 1234
	a1.setUserid("aaaa");
	a1.setPassword("1234");
	//bbb 2222 
	LoginBean b1 = new LoginBean();
	b1.setUserid("bbbb");
	b1.setPassword("2222");
	
	ArrayList<LoginBean> login= new ArrayList<>(); //LIST로 하면 오류남.
	login.add(a1);
	login.add(b1);

	request.setAttribute("login", login);
	
	RequestDispatcher d = request.getRequestDispatcher("winnersResult.jsp");
	d.forward(request, response);
%>
</body>
</html>