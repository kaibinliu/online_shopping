package onlineshopping.controller.goods;

import onlineshopping.model.Repository;
import onlineshopping.model.goodsDao.SousuoDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "Sousuo", value = "/Sousuo")
public class Sousuo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String ss=request.getParameter("ss");
        Repository repo= SousuoDao.sousuo(ss);
        request.setAttribute("repo",repo);
        request.getSession(true).setAttribute("repo",repo);
        response.sendRedirect("jsp/goods/goodslist_sousuo.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
