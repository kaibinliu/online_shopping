package onlineshopping.model.sellerDao;

import onlineshopping.model.Seller;

import java.sql.*;

public class SellerRegisterDao {
	String url = "jdbc:mysql://127.0.0.1:3306/onlineshop?useSSL=false&serverTimezone=UTC&characterEncoding=utf-8";
	String username="root";
	String password="1234";
	
	public boolean register(Seller seller) {
		try {  Class.forName("com.mysql.cj.jdbc.Driver");
	      }
	      catch(Exception e){}
		try {
			Connection con = DriverManager.getConnection(url,username,password);
			String insertSQL = "insert into seller(SUsername,SPassword) values(?,?)";
			String querySQL = "select * from seller where SUsername=?";
			PreparedStatement pre = con.prepareStatement(querySQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pre.setString(1, seller.getSUsername());
			ResultSet rs = pre.executeQuery();
			rs.last();
			int n = rs.getRow();
			if(n>0) {
				con.close();
				return false;
			}else {
				pre = con.prepareStatement(insertSQL);
				pre.setString(1, seller.getSUsername());
				pre.setString(2, seller.getSPassword());
				int ok = pre.executeUpdate();
				con.close();
				return true;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return false;
		}	
	}
}
