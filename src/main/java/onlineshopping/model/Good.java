package onlineshopping.model;

public class Good {
	private int g_id=0;
	private String g_name;
	private String g_des;
	private String g_img;
	private double g_price;
	private int g_stock=1;
	private String g_state;
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_des() {
		return g_des;
	}
	public void setG_des(String g_des) {
		this.g_des = g_des;
	}
	public String getG_img() {
		return g_img;
	}
	public void setG_img(String g_img) {
		this.g_img = g_img;
	}
	public double getG_price() {
		return g_price;
	}
	public void setG_price(double g_price) {
		this.g_price = g_price;
	}
	public int getG_stock() {
		return g_stock;
	}
	public void setG_stock(int g_stock) {
		this.g_stock = g_stock;
	}
	public String getG_state() {
		return g_state;
	}
	public void setG_state(String g_state) {
		this.g_state = g_state;
	}
	public Good(int g_id, String g_name, String g_des, String g_img, double g_price, int g_stock, String g_state) {
		super();
		this.g_id = g_id;
		this.g_name = g_name;
		this.g_des = g_des;
		this.g_img = g_img;
		this.g_price = g_price;
		this.g_stock = g_stock;
		this.g_state = g_state;
	}
	public Good() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
