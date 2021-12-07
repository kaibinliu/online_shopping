package onlineshopping.controller.buyer;

import onlineshopping.model.Buyer;
import onlineshopping.model.buyerDao.BuyerRegisterDao;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
            response.sendRedirect("jsp/buyer/BuyerRegister_success.jsp");
        }else {
            response.sendRedirect("jsp/buyer/BuyerRegister_fail.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
