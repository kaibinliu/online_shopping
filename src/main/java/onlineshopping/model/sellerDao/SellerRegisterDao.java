package onlineshopping.model.sellerDao;

import onlineshopping.model.Util.DBUtil;
import onlineshopping.model.Seller;
import onlineshopping.model.Util.PasswordUtil;
import org.apache.tomcat.util.codec.binary.Base64;

import java.sql.*;

public class SellerRegisterDao {

	public boolean register(Seller seller) {
		Connection con = null;
		try {
			con = DBUtil.getConnection();
			seller.setSPassword(Base64.encodeBase64String(PasswordUtil.encrypt(seller.getSPassword(),"12345678")));
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
