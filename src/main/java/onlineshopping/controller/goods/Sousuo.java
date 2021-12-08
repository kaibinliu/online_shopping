package onlineshopping.controller.goods;

import onlineshopping.model.Repository;
import onlineshopping.model.goodsDao.SousuoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "Sousuo", value = "/Sousuo")
public class Sousuo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String ss=request.getParameter("ss");
        Repository repo= SousuoDao.sousuo(ss);
        request.setAttribute("repo",repo);
        request.getSession(true).setAttribute("repo",repo);
        HttpSession session = request.getSession();
        if(null!=session.getAttribute("buyer") && null==session.getAttribute("seller")){
            response.sendRedirect("jsp/goods/goodslist_sousuo.jsp");
        }else if(null==session.getAttribute("buyer") && null!=session.getAttribute("seller")){
            response.sendRedirect("jsp/goods/GoodsManage_FilterAndSearchResult.jsp");
        }else {
            response.sendRedirect("jsp/goods/goodslist_sousuo.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
