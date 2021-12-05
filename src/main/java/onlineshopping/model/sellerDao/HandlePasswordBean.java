package onlineshopping.model.sellerDao;

import onlineshopping.model.Util.DBUtil;
import onlineshopping.model.SetPassword;
import onlineshopping.model.Util.PasswordUtil;
import org.apache.tomcat.util.codec.binary.Base64;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class HandlePasswordBean{
	 public boolean change(SetPassword set) {
		  Connection con; 
	      PreparedStatement sql; 
	      try{
			    con = DBUtil.getConnection();
	        	String change="update seller set SPassword=? where SUsername=?";
	        	sql=con.prepareStatement(change);
				set.setPassword(Base64.encodeBase64String(PasswordUtil.encrypt(set.getPassword(),"12345678")));
	            sql.setString(1, set.getPassword());
				sql.setString(2,set.getUsername());
	            int m=sql.executeUpdate();
	        	return true;
	      }
	      catch(Exception exp){
	        	exp.printStackTrace();
	        	return false;
	        }
	 }
}
