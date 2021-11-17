package onlineshopping.model;

public class Seller {
	public String uname;
	public String pwd;
	
	
	public Seller() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Seller(String uname, String pwd) {
		super();
		this.uname = uname;
		this.pwd = pwd;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
