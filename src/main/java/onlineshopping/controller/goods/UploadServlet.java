package onlineshopping.controller.goods;

import onlineshopping.model.goodsDao.GoodDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collection;
import java.util.UUID;

@WebServlet(name = "UploadServlet", value = "/UploadServlet")
@MultipartConfig(location = "E:\\IDEA2018\\IDEAworkplace2\\onlineshopping\\src\\main\\webapp\\img")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Ϊ������������
        String ima_add="";
        Good good=new Good();
        request.setCharacterEncoding("utf-8");
        String basePath = "E:\\IDEA2018\\IDEAworkplace2\\onlineshopping\\src\\main\\webapp\\img";
        // ��ȡ�����ϴ��ļ���Ϣ����д�������
        Collection<Part> parts = request.getParts();
        for (Part part : parts) {
            if (part.getSize() > 0) {
                String fname = part.getSubmittedFileName();
                // �������һ��uuid��Ϊ�ļ�����
                String uuid = UUID.randomUUID().toString();
                // ��ȡ�ļ���׺
                if(fname!=null) {
                    String suffix = fname.substring(fname.lastIndexOf("."));
                    // ���uuid���ļ���׺��Ϊ�µ��ļ�����
                    fname = uuid + suffix;
                    part.write(basePath + "/"+ fname);
                    ima_add+="/img/" + fname+";";
                }else
                    continue;
            }
        }
        try {
            good.setG_name(request.getParameter("sname"));
            good.setG_des(request.getParameter("sintruction"));
            good.setG_img(ima_add);
            good.setG_price(Double.parseDouble(request.getParameter("sprice")));
            GoodDao gd=new GoodDao();
            gd.release(good);
        } catch (Exception e) {
            request.getRequestDispatcher("Release.jsp").forward(request, response);
            e.printStackTrace();
        }
        response.sendRedirect("Show.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
