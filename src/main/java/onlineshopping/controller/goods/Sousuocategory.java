package onlineshopping.controller.goods;

import onlineshopping.model.Repository;
import onlineshopping.model.goodsDao.SousuocategoryDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Sousuocategory", value = "/Sousuocategory")
public class Sousuocategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String leibie=request.getParameter("goodleibie");
        System.out.println(leibie);
        Repository repo= SousuocategoryDao.sousuoleibie(leibie);
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