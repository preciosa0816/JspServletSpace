package menu.service;

import java.util.Map;

public class DeleteMenuRequest {
	private String userId;
	private String name;
	private Integer price;
	private String drinktype;
	private Integer no;


	public DeleteMenuRequest(String userId, Integer no, String name) {
		super();
		this.userId=userId;
		this.name = name;
		this.no = no;
	}

	public DeleteMenuRequest(Integer no, String name, Integer price, String drinktype) {
		super();
		this.name = name;
		this.price = price;
		this.drinktype = drinktype;
		this.no = no;
	}

	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getDrinktype() {
		return drinktype;
	}

	public void setDrinktype(String drinktype) {
		this.drinktype = drinktype;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}
	
	public void validate(Map<String, Boolean> errors) {
		if(name==null||name.trim().isEmpty()) {
			errors.put("name", Boolean.TRUE);
		}
	}
}
