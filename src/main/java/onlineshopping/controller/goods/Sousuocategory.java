package onlineshopping.controller.goods;

import onlineshopping.model.Repository;
import onlineshopping.model.goodsDao.SousuocategoryDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        response.sendRedirect("goodlist_sousuo.jsp");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}