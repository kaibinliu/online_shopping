package onlineshopping.model.sellerDao;

import onlineshopping.model.DBUtil.DBUtil;
import onlineshopping.model.Seller;

import javax.naming.NamingException;
import java.sql.*;

public class SellerRegisterDao {

	public boolean register(Seller seller) {
		Connection con = null;
		try {
			con = DBUtil.getConnection();
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
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return false;
		}	
	}
}
