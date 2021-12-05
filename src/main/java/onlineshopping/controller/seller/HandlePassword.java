package onlineshopping.controller.seller;

import onlineshopping.model.Seller;
import onlineshopping.model.sellerDao.HandlePasswordBean;
import onlineshopping.model.SetPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HandlePassword", value = "/HandlePassword")
public class HandlePassword extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {

        super.init(config);
    }
    public String handleString(String s)
    {
        try{ byte bb[]=s.getBytes("UTF-8");
            s=new String(bb);
        }
        catch(Exception ee){}
        return s;
    }
    @Override
    public  void  doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        this.doPost(request,response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        String password = request.getParameter("password").trim();
        String again_password=request.getParameter("again_password").trim();
        HttpSession session = request.getSession(true);
        Seller seller = (Seller)session.getAttribute("seller");
        String username = seller.getSUsername();
        SetPassword set = new SetPassword(username,password, again_password);
        HandlePasswordBean hp=new HandlePasswordBean();


        //传入参数
        if(!password.equals(again_password)){
            RequestDispatcher dispatcher=request.getRequestDispatcher("jsp/seller/change_fail.jsp");
            dispatcher.forward(request,response);
            return;
        }

        boolean boo=password.length()>0;

        if(password.equals(again_password)){
            boolean a = hp.change(set);
            RequestDispatcher dispatcher=request.getRequestDispatcher("jsp/seller/change_sucess.jsp");//转发
            dispatcher.forward(request,response);
        }

        else{

            RequestDispatcher dispatcher=request.getRequestDispatcher("jsp/seller/change_fail.jsp");
            dispatcher.forward(request,response);

            return;
        }
    }
}
