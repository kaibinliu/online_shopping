package onlineshopping.model.Util;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/*
    获取数据库连接
 */
public class DBUtil {
    public static Connection getConnection() throws NamingException, SQLException {
        Connection conn = null;
        InitialContext ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/mysql");
        conn = ds.getConnection();
        return conn;
    }
}

