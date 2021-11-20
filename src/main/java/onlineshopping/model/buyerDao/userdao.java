package onlineshopping.model.buyerDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class userdao {
 public static void login(Purchaser u) {
	 
	 try {
			Connection conn=null;
			Statement  state=null;
			ResultSet rs=null;
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Class.forName("com.mysql.jdbc.Driver");
			String jdbc="jdbc:mysql://127.0.0.1:3306/onlineshopping?characterEncoding=UTF-8&serverTimezone=UTC";
			conn=DriverManager.getConnection(jdbc, "root", "001124");
			state =conn.createStatement();
			String sql="insert into  purchase (PDate,GNo,Username,Phone) values ('"+df.format(new Date())+"',"+u.getId()+",'"+u.getName()+"','"+u.getPhone()+"')";
			state.executeUpdate(sql);
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
			}
	 
	 
	 
	 
	 
 }
}
