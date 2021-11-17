package onlineshopping.model;

public class Buyer {
	String name;
	String phone;
	public Buyer() {
		this.name="";
		this.phone="";
	}
	public Buyer(String name, String phone) {
		this.name = name;
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
