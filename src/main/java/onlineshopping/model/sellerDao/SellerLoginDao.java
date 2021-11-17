package onlineshopping.model.sellerDao;

import onlineshopping.model.Seller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SellerLoginDao {

	String url = "jdbc:mysql://127.0.0.1:3306/onlineshopping?useSSL=false&serverTimezone=UTC&characterEncoding=utf-8";
	String username="root";
	String password="001124";
	
	public boolean Login(Seller seller) {
		try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    	}catch(Exception e) {}
		try {
			Connection con = DriverManager.getConnection(url,username,password);
			String querySQL = "select * from seller where SUsername=? and SPassword=?";
			PreparedStatement pre = con.prepareStatement(querySQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pre.setString(1, seller.getUname());
			pre.setString(2, seller.getPwd());
			ResultSet rs = pre.executeQuery();
			rs.last();
			int n = rs.getRow();
			if(n<=0 || seller.getUname().length()==0 || seller.getPwd().length()==0) {
				con.close();
				return false;
			}else {
				con.close();
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
