package order.model;

import java.util.Date;

public class OrderedMenu {
	
	private String staff;
	private OrderDetail detail; //주문 내역(메뉴) 받아오기
	private Payment total; // 계산부분(가격) 가져오기
	private String paytype;
	private Date ordertime;
	
	public OrderedMenu(String staff, OrderDetail detail, Payment total, String paytype, Date ordertime) {
		super();
		this.staff = staff;
		this.detail = detail;
		this.total = total;
		this.paytype = paytype;
		this.ordertime = ordertime;
	}

	public String getStaff() {
		return staff;
	}
	
	public void setStaff(String staff) {
		this.staff = staff;
	}
	
	public OrderDetail getDetail() {
		return detail;
	}
	
	public void setDetail(OrderDetail detail) {
		this.detail = detail;
	}
	
	public Payment getTotal() {
		return total;
	}
	
	public void setTotal(Payment total) {
		this.total = total;
	}
	
	public String getPaytype() {
		return paytype;
	}
	
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	
	public Date getOrdertime() {
		return ordertime;
	}
	
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	
	
	
	
}
