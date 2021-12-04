package onlineshopping.model.buyerDao;

import onlineshopping.model.Buyer;
import onlineshopping.model.DBUtil.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BuyerLoginDao {

	public boolean Login(Buyer buyer) {
		try {
			Connection con = null;
			con = DBUtil.getConnection();
			String querySQL = "select * from buyer where BUsername=? and BPassword=?";
			PreparedStatement pre = (PreparedStatement) con.prepareStatement(querySQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pre.setString(1, buyer.getBUsername());
			pre.setString(2, buyer.getBPassword());
			ResultSet rs = pre.executeQuery();
			rs.last();
			int n = rs.getRow();
			if(n<=0 || buyer.getBUsername().length()==0 || buyer.getBPassword().length()==0) {
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
