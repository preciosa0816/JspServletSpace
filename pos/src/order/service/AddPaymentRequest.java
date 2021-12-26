package order.service;

import java.util.Map;

public class AddPaymentRequest {// 메뉴추가에 필요한 데이터
	private int totalsale; //총 매출액
	private int discount; //할인액
	private int revenue; //받을 금액
	private int check; //받은 금액
	private int change; //거스름돈 
	
	
	public AddPaymentRequest() {
		super();
	}

	public AddPaymentRequest(int totalsale, int discount, int revenue, int check, int change) {
		super();
		this.totalsale = totalsale;
		this.discount = discount;
		this.revenue = revenue;
		this.check = check;
		this.change = change;
	}
	
	public int getTotalsale() {
		return totalsale;
	}
	public void setTotalsale(int totalsale) {
		this.totalsale = totalsale;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getRevenue() {
		return revenue;
	}
	public void setRevenue(int revenue) {
		this.revenue = revenue;
	}
	public int getCheck() {
		return check;
	}
	public void setCheck(int check) {
		this.check = check;
	}
	public int getChange() {
		return change;
	}
	public void setChange(int change) {
		this.change = change;
	}
	public void validate(Map<String, Boolean> errors) {// 데이터 유효검사
		checkNumEmpty(errors, totalsale, "totalsale");
		checkNumEmpty(errors, discount, "discount");
		checkNumEmpty(errors, revenue, "revenue");
		checkNumEmpty(errors, check, "check");
		checkNumEmpty(errors, change, "change");
	}
	
	
	private void checkNumEmpty(Map<String , Boolean> errors, Integer value, String fieldName) {
		if(value==null)
			errors.put(fieldName, Boolean.TRUE);
	}
}
