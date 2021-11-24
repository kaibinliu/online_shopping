package onlineshopping.controller.buyer;

import onlineshopping.model.Purchaser;
import onlineshopping.model.buyerDao.pddao;
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
        String address=request.getParameter("location");
        String count=request.getParameter("purchasequantity");
        u.setName(name);
        u.setPhone(phone);
        u.setId(id);
        u.setAddress(address);
        u.setCount(count);
        if(name!=null&&phone!=null&&address!=null&&pddao.pandaun(u)==0)
        {
            userdao.login(u);
            response.sendRedirect("success.jsp");
        }
        else if(name==null||phone==null||address==null||count==null){
            response.sendRedirect("fail.jsp");
        }
        else if(pddao.pandaun(u)==1){
            response.sendRedirect("account_wrong.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
