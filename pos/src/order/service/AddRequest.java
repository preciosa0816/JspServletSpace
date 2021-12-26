package order.service;

import java.util.Map;

public class AddRequest {// 메뉴추가에 필요한 데이터
	private String drinkname;
	private int quantity;
	private int price;	

	public AddRequest() {
		super();
	}

	
	public AddRequest(String drinkname, int quantity, int price) {
		super();
		this.drinkname = drinkname;
		this.quantity = quantity;
		this.price = price;
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

	public void validate(Map<String, Boolean> errors) {// 데이터 유효검사
		checkEmpty(errors, drinkname, "drinkname");
		checkNumEmpty(errors, price, "price");
		checkNumEmpty(errors, quantity, "quantity");
	}
	
	private void checkEmpty(Map<String , Boolean> errors, String value, String fieldName) {
		if(value==null||value.isEmpty())
		errors.put(fieldName, Boolean.TRUE);
	}
	private void checkNumEmpty(Map<String , Boolean> errors, Integer value, String fieldName) {
		if(value==null)
			errors.put(fieldName, Boolean.TRUE);
	}
}
