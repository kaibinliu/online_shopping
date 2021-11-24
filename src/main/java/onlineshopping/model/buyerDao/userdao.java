package onlineshopping.model.buyerDao;

import com.sun.org.apache.bcel.internal.generic.Select;
import onlineshopping.model.Purchaser;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class userdao {
 public static void login(Purchaser u) {
	 
	 try {
			Connection conn=null;
			Statement  state=null;
			ResultSet rs=null;
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Class.forName("com.mysql.jdbc.Driver");
			String jdbc="jdbc:mysql://127.0.0.1:3306/onlineshop?characterEncoding=UTF-8&serverTimezone=UTC";
			conn=DriverManager.getConnection(jdbc, "root", "1234");
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
}
