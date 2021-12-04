package onlineshopping.model.sellerDao;

import onlineshopping.model.Util.DBUtil;
import onlineshopping.model.SetPassword;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class HandlePasswordBean{
	 public boolean change(SetPassword set) {
		  Connection con; 
	      PreparedStatement sql; 
	      try{
			    con = DBUtil.getConnection();
	        	String change="update seller set SPassword=?";
	        	sql=con.prepareStatement(change);
	            sql.setString(1, set.getPassword());
	            int m=sql.executeUpdate();
	        	return true;
	      }
	      catch(Exception exp){
	        	exp.printStackTrace();
	        	return false;
	        }
	 }
}
