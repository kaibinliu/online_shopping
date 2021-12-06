package onlineshopping.controller.goods;

import onlineshopping.model.goodsDao.GoodDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "GoodsDescribeServlet", value = "/GoodsDescribeServlet")
public class GoodsDescribeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        System.out.println("这个商品的ID为："+id);
        try {
            String describe = new GoodDao().showDescribe(id);
            System.out.println("读取到的商品描述HTML:\n"+describe);
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
