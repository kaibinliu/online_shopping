package onlineshopping.model.buyerDao;

import onlineshopping.model.Buyer;
import onlineshopping.model.DBUtil.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BuyerRegisterDao {

	public boolean register(Buyer buyer) {

		try {
			Connection con = null;
			con = DBUtil.getConnection();
			String insertSQL = "insert into buyer(BUsername,BPassword,BPhone,BAddress) values(?,?,?,?)";
			String querySQL = "select * from buyer where BUsername=?";
			java.sql.PreparedStatement pre = con.prepareStatement(querySQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pre.setString(1, buyer.getBUsername());
			ResultSet rs = pre.executeQuery();
			rs.last();
			int n = rs.getRow();
			if(n>0) {
				con.close();
				return false;
			}else {
				pre = con.prepareStatement(insertSQL);
				pre.setString(1, buyer.getBUsername());
				pre.setString(2, buyer.getBPassword());
				pre.setString(3, buyer.getBPhone());
				pre.setString(4, buyer.getBAddress());
				int ok = pre.executeUpdate();
				con.close();
				return true;
			}
		} catch (Exception e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
			return false;
		}	
	}
}
