package menu.service;

import java.util.Map;

public class ModifyMenuRequest {
	private String name;
	private Integer price;
	private String drinktype;
	private Integer no;


	public ModifyMenuRequest(Integer no, String name, Integer price, String drinktype) {
		super();
		this.name = name;
		this.price = price;
		this.drinktype = drinktype;
		this.no = no;
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

	public void validate(Map<String, Boolean> errors) {// 데이터 유효검사
		checkIntEmpty(errors, no, "no");
		checkEmpty(errors, name, "name");
		checkIntEmpty(errors, price, "price");
		checkEmpty(errors, drinktype, "drinktype");
	}

	private void checkEmpty(Map<String, Boolean> errors, String value, String fieldName) {
		if (value == null || value.isEmpty())
			errors.put(fieldName, Boolean.TRUE);
	}

	private void checkIntEmpty(Map<String, Boolean> errors, Integer value, String fieldName) {
		if (value == null)
			errors.put(fieldName, Boolean.TRUE);
	}
}
