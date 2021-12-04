package onlineshopping.controller.buyer;

import onlineshopping.model.Buyer;
import onlineshopping.model.buyerDao.BuyerLoginDao;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "BuyerLoginServlet", value = "/BuyerLoginServlet")
public class BuyerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void init(ServletConfig config) throws ServletException{
        super.init(config);

    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String BUsername = request.getParameter("BUsername");
        String BPassword = request.getParameter("BPassword");
        Buyer buyer = new Buyer();
        buyer.setBUsername(BUsername);
        buyer.setBPassword(BPassword);
        BuyerLoginDao buyerLD = new BuyerLoginDao();
        boolean a = buyerLD.Login(buyer);
        if(a) {
            HttpSession session = request.getSession(true);
            session.setAttribute("buyer", buyer);
            response.sendRedirect("jsp/goods/goodlist.jsp");
        }else {
            response.sendRedirect("jsp/buyer/BuyerLogin_fail.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
