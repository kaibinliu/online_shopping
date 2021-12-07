package onlineshopping.controller.goods;

import onlineshopping.model.goodsDao.GoodDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "GoodsDescribeServlet", value = "/GoodsDescribeServlet")
public class GoodsDescribeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        try {
            String describe = new GoodDao().showDescribe(id);
            request.setAttribute("describe",describe);
            RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/goods/goodsdescribe.jsp");
            dispatcher.forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
