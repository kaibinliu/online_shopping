package onlineshopping.controller.seller;


import onlineshopping.model.Seller;
import onlineshopping.model.Util.PasswordUtil;
import onlineshopping.model.sellerDao.SellerRegisterDao;
import org.apache.tomcat.util.codec.binary.Base64;
import sun.security.util.Password;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SellerRegisterServlet", value = "/SellerRegisterServlet")
public class SellerRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerRegisterServlet() {
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
        String SUsername=request.getParameter("uname");
        String SPassword=request.getParameter("pwd");
        Seller seller = new Seller();
        seller.setSUsername(SUsername);
        seller.setSPassword(SPassword);
        SellerRegisterDao sellerRD = new SellerRegisterDao();
        boolean a = sellerRD.register(seller);
        if(a) {
            response.sendRedirect("jsp/seller/SellerRegister_success.jsp");
        }else {
            response.sendRedirect("jsp/seller/SellerRegister_fail.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
