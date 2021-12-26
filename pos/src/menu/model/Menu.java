package menu.model;

public class Menu {
	private int no;
	private String name;
	private int price;
	private String drinktype;
	
	public Menu(int no, String name, int price, String drinktype) {
		super();
		this.no=no;
		this.name = name;
		this.price = price;
		this.drinktype = drinktype;
	}
	
	public Menu(String name, int price, String drinktype) {
		super();
		this.name = name;
		this.price = price;
		this.drinktype = drinktype;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDrinktype() {
		return drinktype;
	}
	public void setDrinktype(String drinktype) {
		this.drinktype = drinktype;
	}

	
}
