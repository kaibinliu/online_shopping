package onlineshopping.controller.buyer;

import onlineshopping.model.Purchaser;
import onlineshopping.model.buyerDao.userdao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "userinfo", value = "/userinfo")
public class userinfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        Purchaser u=new Purchaser();
        String name=request.getParameter("buyername");
        String phone=request.getParameter("buyerphone");
        u.setName(name);
        u.setPhone(phone);
        u.setId(id);
        userdao.login(u);
        if(name!=null&&phone!=null)
        {
            response.sendRedirect("success.jsp");
        }
        else {
            response.sendRedirect("fail.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
