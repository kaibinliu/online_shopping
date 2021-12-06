package onlineshopping.controller.goods;

import onlineshopping.model.Goods;
import onlineshopping.model.goodsDao.GoodDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collection;
import java.util.UUID;

@WebServlet(name = "UploadServlet", value = "/UploadServlet")
@MultipartConfig(location = "E:\\IDEA2018\\IDEAworkplace\\online_shopping\\src\\main\\webapp\\img\\GPicture")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Ϊ������������
        String ima_add="";
        Goods good=new Goods();
        request.setCharacterEncoding("utf-8");
        String basePath = "E:\\IDEA2018\\IDEAworkplace\\online_shopping\\src\\main\\webapp\\img\\GPicture";
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
                    ima_add+="/img/GPicture/" + fname+";";
                }else
                    continue;
            }
        }
        try {
            good.setGName(request.getParameter("sname"));
            good.setGDescribe(request.getParameter("sintruction"));
            good.setGPicture(ima_add);
            good.setGCategoryone(request.getParameter("categoryone"));
            good.setGCategorytwo(request.getParameter("categorytwo"));
            good.setGStock(Integer.parseInt(request.getParameter("stock")));
            good.setGPrice(Double.parseDouble(request.getParameter("sprice")));
            GoodDao gd=new GoodDao();
            gd.release(good);
        } catch (Exception e) {
            request.getRequestDispatcher("jsp/goods/Release.jsp").forward(request, response);
            e.printStackTrace();
        }
        response.sendRedirect("jsp/goods/Show.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
