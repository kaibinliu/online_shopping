package onlineshopping.model.buyerDao;

import onlineshopping.model.Buyer;
import onlineshopping.model.DBUtil.DBUtil;
import onlineshopping.model.Purchaser;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class userdao {
 public static void login(Purchaser u) {
	 
	 try {
		    Connection conn = null;
			conn = DBUtil.getConnection();
			Statement  state=null;
			ResultSet rs=null;
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			state =conn.createStatement();
			 String cskucun="select * from goods where GId='"+u.getId()+"'";
			 rs=state.executeQuery(cskucun);
			 int acount=0;
			 if(rs.next()){
			 acount=rs.getInt(8);
			 }
			String csid="select * from buyer where BUsername='"+u.getName()+"'";
			rs=state.executeQuery(csid);
			int id=0;
			if(rs.next()){
				id=rs.getInt(1);
			}
			String sql="insert into  purchase (BId,GId,BPhone,PDate,PCount,PAddress,PState) values ("+id+","+u.getId()+",'"+u.getPhone()+"','"+df.format(new Date())+"',"+u.getCount()+",'"+u.getAddress()+"','"+"交易中"+"')";
			state.executeUpdate(sql);
			int acount1=acount-Integer.parseInt(u.getCount());
			String sql1="update goods set GStock="+acount1+" where GId='"+u.getId()+"' ";
		    state.executeUpdate(sql1);
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
			}
 }
	public ArrayList<Buyer> readInfo() throws SQLException {
		Connection conn = null;
		Statement  state=null;
		ResultSet rs=null;
		ArrayList<Buyer> bl=new ArrayList<Buyer>();
		try {

			conn = DBUtil.getConnection();
			state =conn.createStatement();
			String sql="select BId,BUsername,BPhone,BAddress from buyer";
			rs=state.executeQuery(sql);
			while(rs.next()) {
				Buyer b=new Buyer(rs.getInt(1),rs.getString(2),null,rs.getString(3),rs.getString(4));
				bl.add(b);
			}
			return bl;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(null!=rs)
				rs.close();
			if(null!=conn)
				conn.close();
		}
		return null;
	}
}
