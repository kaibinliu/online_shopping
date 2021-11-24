package onlineshopping.model.goodsDao;


import onlineshopping.model.Goods;
import onlineshopping.model.Repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class Repo {
    static Repository repo= new Repository();
    public static Repository repo(){
        try {
            ArrayList<Goods> goodlist =new ArrayList<Goods>();
            Connection conn=null;
            Statement  state=null;
            ResultSet rs=null;
            Class.forName("com.mysql.jdbc.Driver");
            String jdbc="jdbc:mysql://127.0.0.1:3306/onlineshop?characterEncoding=UTF-8&serverTimezone=UTC";
            conn=DriverManager.getConnection(jdbc, "root", "1234");
            state =conn.createStatement();
            String sql="select * from goods";
            rs=state.executeQuery(sql);
            while(rs.next()) {
                Goods g1=new Goods();
                g1.setGId(rs.getInt(1));
                g1.setGName(rs.getString(2));
                g1.setGPicture(rs.getString(6));
                g1.setGPrice(Double.parseDouble(rs.getString(5)));
                g1.setGDescribe(rs.getString(7));
                g1.setGStock(rs.getInt(8));
                if(g1.getGStock()>0) {
                    goodlist.add(g1);
                }
            }
            repo.setRepo(goodlist);

            conn.close();

        } catch (Exception e) {

        }
        return repo;
    }
}