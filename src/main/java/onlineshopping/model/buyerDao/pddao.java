package onlineshopping.model.buyerDao;

import onlineshopping.model.DBUtil.DBUtil;
import onlineshopping.model.Purchaser;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

public class pddao {
    public static int pandaun(Purchaser u) {
        int acount=0;
        int error=0;
        try {
            Connection conn = null;
            conn = DBUtil.getConnection();
            Statement state = null;
            ResultSet rs = null;
            state = conn.createStatement();
            String cs="select * from goods where GId='"+u.getId()+"'";
            rs=state.executeQuery(cs);

            if(rs.next()){
                acount=rs.getInt(8);
            }
            conn.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
 if (Integer.parseInt(u.getCount())>acount) {
     error = 1;
 }
        return error;
    }

}
