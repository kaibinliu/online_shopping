package onlineshopping.controller.buyer;

import onlineshopping.model.Buyer;
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
        Buyer u=new Buyer();
        String name=request.getParameter("buyername");
        String phone=request.getParameter("buyerphone");
        u.setBUsername(name);
        u.setBPhone(phone);
        u.setBId(Integer.parseInt(id));
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
