package onlineshopping.model.buyerDao;

import onlineshopping.model.Buyer;
import onlineshopping.model.Purchase;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class userdao {
	public static void login(Buyer u) {

	 try {
			Connection conn=null;
			Statement  state=null;
			ResultSet rs=null;
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Class.forName("com.mysql.jdbc.Driver");
			String jdbc="jdbc:mysql://127.0.0.1:3306/onlineshopping?characterEncoding=UTF-8&serverTimezone=UTC";
			conn=DriverManager.getConnection(jdbc, "root", "root");
			state =conn.createStatement();
			String sql="insert into  purchase (PDate,GNo,Username,Phone) values ('"+df.format(new Date())+"',"+u.getId()+",'"+u.getName()+"','"+u.getPhone()+"')";
			state.executeUpdate(sql);
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
			}





 }
	public ArrayList<Buyer> readInfo() throws SQLException {
		Connection conn=null;
		Statement  state=null;
		ResultSet rs=null;
		ArrayList<Buyer> bl=new ArrayList<Buyer>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String jdbc="jdbc:mysql://127.0.0.1:3306/shop?characterEncoding=UTF-8&serverTimezone=UTC";
			conn=DriverManager.getConnection(jdbc, "root", "root");
			state =conn.createStatement();
			String sql="select BId,BUsername,BPhone,BAddress from buyer";
			rs=state.executeQuery(sql);
			while(rs.next()) {
				Buyer b=new Buyer(rs.getInt(1),rs.getString(2),null,rs.getString(3),rs.getString(4));
				bl.add(b);
			}
			return bl;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(null!=rs)
				rs.close();
			if(null!=conn)
				conn.close();
		}
		return null;
	}
}
