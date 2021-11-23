package onlineshopping.model.purchaseDao;

import onlineshopping.model.Purchase;

import java.sql.*;
import java.util.ArrayList;

public class PurchaseDao {
	public static final String URL="jdbc:mysql://localhost:3306/onlinesp?useSSL=false&useUnicode=true&characterEncoding=UTF-8";
	public static final String USER="root";
	public static final String PWD="001124";
	
	public ArrayList<Purchase> read(int GNo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		ArrayList<Purchase> pl=new ArrayList<Purchase>();
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="select purchase.BId,purchase.GId,goods.GName,buyer.BUsername,purchase.BPhone,purchase.PDate,purchase.PCount,purchase.PAddress,purchase.PState from purchase,goods,buyer where purchase.GId=? and purchase.PState='交易中' and buyer.BId=Purchase.BId and goods.GId=purchase.GId";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, GNo);
			rs=ps.executeQuery();
			while(rs.next()) {
				Purchase p=new Purchase(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getDate(6),rs.getInt(7),rs.getString(8),rs.getString(9));
				pl.add(p);
			}
			return pl;
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e);
		}finally {
			if(null!=rs) 
				rs.close();
			if(null!=ps) 
				ps.close();
			if(null!=conn) 
				conn.close();		
		}
		return null;
	}

	public ArrayList<Purchase> readHistory(int BId) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		ArrayList<Purchase> pl=new ArrayList<Purchase>();
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="select purchase.BId,purchase.GId,goods.GName,buyer.BUsername,purchase.BPhone,purchase.PDate,purchase.PCount,purchase.PAddress,purchase.PState from purchase,goods,buyer where purchase.BId=? and buyer.BId=Purchase.BId and goods.GId=purchase.GId";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, BId);
			rs=ps.executeQuery();
			while(rs.next()) {
				Purchase p=new Purchase(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getDate(6),rs.getInt(7),rs.getString(8),rs.getString(9));
				pl.add(p);
			}
			return pl;
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e);
		}finally {
			if(null!=rs)
				rs.close();
			if(null!=ps)
				ps.close();
			if(null!=conn)
				conn.close();
		}
		return null;
	}

	public void stateChange(String s,int Bid,int Gid) throws SQLException  {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="update purchase set PState=? where GId=? and BId=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, s);
			ps.setInt(2, Gid);
			ps.setInt(3, Bid);
			ps.executeUpdate();
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e);
		}finally {
			if(null!=rs)
				rs.close();
			if(null!=ps)
				ps.close();
			if(null!=conn)
				conn.close();
		}
	}
}

