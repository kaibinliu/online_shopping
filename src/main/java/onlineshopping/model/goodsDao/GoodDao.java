package onlineshopping.model.goodsDao;

import onlineshopping.model.Good;

import java.sql.*;
import java.util.ArrayList;

public class GoodDao {
	public static final String URL="jdbc:mysql://localhost:3306/onlineshopping?useSSL=false&useUnicode=true&characterEncoding=UTF-8";
	public static final String USER="root";
	public static final String PWD="001124";
	
	public void release(Good good) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="insert into good(GName,GDescribe,GPicture,GPrice) values(?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, good.getG_name());
			ps.setString(2, good.getG_des());
			ps.setString(3, good.getG_img());
			ps.setDouble(4, good.getG_price());
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
	
	public Good showGood() throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="select * from good where GState='销售中' or GState='冻结中'";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				Good good=new Good(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6),rs.getString(7));
				return good;
			}
			else 
				return null;
				
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
	
	public ArrayList<Good> showSoldOut() throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		ArrayList<Good> gl=new ArrayList<Good>();
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="select * from good where GState='已售出'";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Good good=new Good(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6),rs.getString(7));
				gl.add(good);
			}
			return gl;
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
	
	public void stateChange(String s,int id) throws SQLException  {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="update good set GState=? where GNo=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, s);
			ps.setInt(2, id);
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
