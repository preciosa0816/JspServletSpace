package order.model;

public class Payment {
	
	private int totalsale; //총 매출액
	private int discount; //할인액
	private int revenue; //받을 금액
	private int check; //받은 금액
	private int change; //거스름돈 
	
	
	public Payment(int totalsale, int discount, int revenue, int check, int change) {
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
	
	
}
