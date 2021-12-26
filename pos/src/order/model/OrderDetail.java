package order.model;

public class OrderDetail {
	private int orderid;
	private String drinkname;
	private int quantity;
	private int price;	
	
	
	
	public OrderDetail() {
		super();
	}



	public OrderDetail(String drinkname, int quantity, int price) {
		super();
		this.drinkname = drinkname;
		this.quantity = quantity;
		this.price = price;
	}



	public OrderDetail(int orderid, String drinkname, int quantity, int price) {
		super();
		this.orderid = orderid;
		this.drinkname = drinkname;
		this.quantity = quantity;
		this.price = price;
	}



	public int getOrderid() {
		return orderid;
	}



	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}



	public String getDrinkname() {
		return drinkname;
	}



	public void setDrinkname(String drinkname) {
		this.drinkname = drinkname;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}

	
	
}
