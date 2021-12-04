package onlineshopping.controller.goods;

import onlineshopping.model.goodsDao.GoodDao;
import onlineshopping.model.purchaseDao.PurchaseDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "FailedDeal", value = "/FailedDeal")
public class FailedDeal extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FailedDeal() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int GId=Integer.parseInt(request.getParameter("GId"));
        int BId=Integer.parseInt(request.getParameter("BId"));
        int PCount=Integer.parseInt(request.getParameter("PCount"));
        PurchaseDao pd=new PurchaseDao();
        GoodDao gd=new GoodDao();
        try {
            pd.stateChange("交易失败",BId,GId);
            gd.addStock(GId,PCount);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        response.sendRedirect("Purchase.jsp?id="+GId);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
