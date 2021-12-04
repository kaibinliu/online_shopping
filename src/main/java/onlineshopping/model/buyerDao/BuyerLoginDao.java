package onlineshopping.model.buyerDao;

import onlineshopping.model.Buyer;
import onlineshopping.model.Util.DBUtil;
import onlineshopping.model.Util.PasswordUtil;
import org.apache.tomcat.util.codec.binary.Base64;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BuyerLoginDao {

	public boolean Login(Buyer buyer) {
		try {
			Connection con = null;
			con = DBUtil.getConnection();
			String querySQL = "select * from buyer where BUsername=?";
			PreparedStatement pre = con.prepareStatement(querySQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pre.setString(1, buyer.getBUsername());
			ResultSet rs = pre.executeQuery();
			rs.last();
			int n = rs.getRow();
			rs.first();
			String str1 = rs.getString(3);
			System.out.println("读取密文为："+str1);
			byte[] str2 = Base64.decodeBase64(str1);
			String password = new String(PasswordUtil.decrypt(str2,"12345678"));
			System.out.println("解密密文为："+password);
			if(n<=0 || buyer.getBUsername().length()==0 || buyer.getBPassword().length()==0 || !password.equals(buyer.getBPassword())) {
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
