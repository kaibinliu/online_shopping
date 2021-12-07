package onlineshopping.controller.seller;

import onlineshopping.model.Seller;
import onlineshopping.model.sellerDao.SellerLoginDao;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SellerLoginServlet", value = "/SellerLoginServlet")
public class SellerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void init(ServletConfig config) throws ServletException{
        super.init(config);

    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        Seller seller = new Seller();
        seller.setSUsername(uname);
        seller.setSPassword(pwd);
        SellerLoginDao sellerLD = new SellerLoginDao();
        boolean a = sellerLD.Login(seller);
        if(a) {
            HttpSession session = request.getSession(true);
            session.setAttribute("seller", seller);
            response.sendRedirect("jsp/goods/Show.jsp");
        }else {
            response.sendRedirect("jsp/seller/SellerLogin_fail.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
