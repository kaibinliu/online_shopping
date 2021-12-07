package onlineshopping.controller.goods;

import onlineshopping.model.Repository;
import onlineshopping.model.goodsDao.SousuoidDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Sousuoid", value = "/Sousuoid")
public class Sousuoid extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        Repository repo= SousuoidDao.sousuoid(id);
        request.setAttribute("repo",repo);
        request.getSession(true).setAttribute("repo",repo);
        response.sendRedirect("good_details.jsp");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
