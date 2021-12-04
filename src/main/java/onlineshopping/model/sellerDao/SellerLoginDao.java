package onlineshopping.model.sellerDao;

import onlineshopping.model.Util.DBUtil;
import onlineshopping.model.Seller;
import onlineshopping.model.Util.PasswordUtil;
import org.apache.tomcat.util.codec.binary.Base64;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SellerLoginDao {

	public boolean Login(Seller seller) {

		try {
			Connection con = null;
			con = DBUtil.getConnection();
			String querySQL = "select * from seller where SUsername=?";
			PreparedStatement pre = con.prepareStatement(querySQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pre.setString(1, seller.getSUsername());
			ResultSet rs = pre.executeQuery();
			rs.last();
			int n = rs.getRow();
			rs.first();
			String str1 = rs.getString(3);
			System.out.println("读取密文为："+str1);
			byte[] str2 = Base64.decodeBase64(str1);
			String password = new String(PasswordUtil.decrypt(str2,"12345678"));
			System.out.println("解密密文为："+password);
			if(n<=0 || seller.getSUsername().length()==0 || seller.getSPassword().length()==0 || !password.equals(seller.getSPassword())) {
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
