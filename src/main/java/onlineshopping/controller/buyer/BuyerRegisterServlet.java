package onlineshopping.controller.buyer;

import onlineshopping.model.Buyer;
import onlineshopping.model.buyerDao.BuyerRegisterDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "BuyerRegisterServlet", value = "/BuyerRegisterServlet")
public class BuyerRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String BUsername=request.getParameter("BUsername");
        String BPassword=request.getParameter("BPassword");
        String BPhone=request.getParameter("BPhone");
        String BAddress=request.getParameter("BAddress");
        Buyer buyer=new Buyer();
        //Buyer buyer = new Buyer(BUsername,BPassword,BPhone,BAddress);
        buyer.setBUsername(BUsername);
        buyer.setBPassword(BPassword);
        buyer.setBPhone(BPhone);
        buyer.setBAddress(BAddress);
        BuyerRegisterDao buyerRD = new BuyerRegisterDao();
        boolean a = buyerRD.register(buyer);
        if(a) {
            RequestDispatcher dispatcher=request.getRequestDispatcher("BuyerRegister_success.jsp");
            dispatcher.forward(request,response);
        }else {
            RequestDispatcher dispatcher=request.getRequestDispatcher("BuyerRegister_fail.jsp");
            dispatcher.forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
