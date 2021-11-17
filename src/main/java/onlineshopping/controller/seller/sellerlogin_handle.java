package onlineshopping.controller.seller;

import onlineshopping.model.Seller;
import onlineshopping.model.sellerDao.SellerLoginDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "sellerlogin_handle", value = "/sellerlogin_handle")
public class sellerlogin_handle extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void init(ServletConfig config) throws ServletException{
        super.init(config);

    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellerlogin_handle() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        Seller seller = new Seller(uname,pwd);
        SellerLoginDao sellerLD = new SellerLoginDao();
        boolean a = sellerLD.Login(seller);
        if(a) {
            HttpSession session = request.getSession(true);
            session.setAttribute("seller", seller);
            RequestDispatcher dispatcher=request.getRequestDispatcher("Show.jsp");
            dispatcher.forward(request,response);
        }else {
            RequestDispatcher dispatcher=request.getRequestDispatcher("sellerlogin_fail.jsp");
            dispatcher.forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
