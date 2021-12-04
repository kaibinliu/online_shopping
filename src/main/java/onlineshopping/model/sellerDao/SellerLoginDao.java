package onlineshopping.model.sellerDao;

import onlineshopping.model.DBUtil.DBUtil;
import onlineshopping.model.Seller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SellerLoginDao {

	public boolean Login(Seller seller) {

		try {
			Connection con = null;
			con = DBUtil.getConnection();
			String querySQL = "select * from seller where SUsername=? and SPassword=?";
			PreparedStatement pre = con.prepareStatement(querySQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pre.setString(1, seller.getSUsername());
			pre.setString(2, seller.getSPassword());
			ResultSet rs = pre.executeQuery();
			rs.last();
			int n = rs.getRow();
			if(n<=0 || seller.getSUsername().length()==0 || seller.getSPassword().length()==0) {
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
