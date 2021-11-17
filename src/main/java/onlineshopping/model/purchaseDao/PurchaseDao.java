package onlineshopping.model.purchaseDao;

import onlineshopping.model.Purchase;

import java.sql.*;
import java.util.ArrayList;

public class PurchaseDao {
	public static final String URL="jdbc:mysql://localhost:3306/onlineshopping?useSSL=false&useUnicode=true&characterEncoding=UTF-8";
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
			String sql="select * from purchase where GNo=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, GNo);
			rs=ps.executeQuery();
			while(rs.next()) {
				Purchase p=new Purchase(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getString(4));
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
}

