package onlineshopping.model;

public class Purchaser {
	private String name;
	private String phone;
	private String id;
	private String count;
	private String address;
	public Purchaser() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Purchaser(String name, String phone, String id, String count, String address) {
		super();
		this.name = name;
		this.phone = phone;
		this.id = id;
		this.count = count;
		this.address = address;
	}




}
