package onlineshopping.model.goodsDao;

import onlineshopping.model.Goods;

import java.sql.*;
import java.util.ArrayList;

public class GoodDao {
	public static final String URL="jdbc:mysql://localhost:3306/onlineshop?useSSL=false&useUnicode=true&characterEncoding=UTF-8";
	public static final String USER="root";
	public static final String PWD="1234";
	
	public void release(Goods good) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="insert into goods(GName,GCategoryone,GCategorytwo,GPrice,GPicture,GDescribe,GStock) values(?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, good.getGName());
			ps.setString(2, good.getGCategoryone());
			ps.setString(3, good.getGCategorytwo());
			ps.setDouble(4, good.getGPrice());
			ps.setString(5, good.getGPicture());
			ps.setString(6, good.getGDescribe());
			ps.setInt(7,good.getGStock());
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

	public ArrayList<Goods> showGoods() throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		ArrayList<Goods> gl=new ArrayList<Goods>();
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="select * from goods where GStock>0";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Goods good=new Goods(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getString(6),rs.getString(7),rs.getInt(8));
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
	
	public ArrayList<Goods> showSoldOut() throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		ArrayList<Goods> gl=new ArrayList<Goods>();
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="select * from goods where GStock=0";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Goods good=new Goods(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getString(6),rs.getString(7),rs.getInt(8));
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
	
	public void changeStock(int id,int num) throws SQLException  {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="update goods set GStock=? where GId=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, num);
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

	public void cutStock(int id,int num) throws SQLException  {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//1.
			Class.forName("com.mysql.jdbc.Driver");
			//2.��������java.sql ��Ҫ��com.mysql��jdbc
			conn=DriverManager.getConnection(URL, USER, PWD);
			//3.sql���
			String sql="select * from goods where GId=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			rs.next();
			int n=rs.getInt("GStock");
			changeStock(id,n-num);
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
