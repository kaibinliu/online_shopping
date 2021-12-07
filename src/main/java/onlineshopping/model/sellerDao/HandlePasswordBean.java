package onlineshopping.model.sellerDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class HandlePasswordBean{
	 String uri="jdbc:mysql://127.0.0.1:3306/onlineshop?"+"user=root&password=1234&characterEncoding=UTF-8";
	 public boolean change(SetPassword set) {
		  try {  Class.forName("com.mysql.jdbc.Driver");
	      }
	      catch(Exception e){} 
		  Connection con; 
	      PreparedStatement sql; 
	      try{
	        	con=DriverManager.getConnection(uri);
	        	String change="update seller set SPassword=?";
	        	sql=con.prepareStatement(change);
	            sql.setString(1, set.getPassword());
	            int m=sql.executeUpdate();
	        	return true;
	      }
	      catch(SQLException exp){
	        	exp.printStackTrace();
	        	return false;
	        }
	 }
}
