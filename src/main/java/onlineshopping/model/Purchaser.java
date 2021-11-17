package onlineshopping.model;

public class Purchaser {
private String name;
private String phone;
private String id;
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
public Purchaser(String name, String phone, String id) {
	super();
	this.name = name;
	this.phone = phone;
	this.id = id;
}


}
