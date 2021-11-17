package onlineshopping.model.goodsDao;

import onlineshopping.model.Good1;
import onlineshopping.model.Repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class Repo {
	static Repository repo= new Repository();

	public static Repository repo(){
	try {	
	
	ArrayList<Good1> goodlist =new ArrayList<Good1>();
	Connection conn=null;
	Statement  state=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	String jdbc="jdbc:mysql://127.0.0.1:3306/onlineshopping?characterEncoding=UTF-8&serverTimezone=UTC";
	conn=DriverManager.getConnection(jdbc, "root", "001124");
	state =conn.createStatement();
	String sql="select * from good";
	rs=state.executeQuery(sql);	
	while(rs.next()) {
	Good1 g1=new Good1();
	g1.setGNo(rs.getInt(1));
	g1.setGName(rs.getString(2)); 
	g1.setGPicture(rs.getString(4));
	g1.setGPrice(Double.parseDouble(rs.getString(5)));
	g1.setGDescribe(rs.getString(3));
	g1.setGState(rs.getString(7));
	goodlist.add(g1);
	}
	repo.setRepo(goodlist);
	
	conn.close();
	
	} catch (Exception e) {
		
	 	}
	return repo;
	}
}
