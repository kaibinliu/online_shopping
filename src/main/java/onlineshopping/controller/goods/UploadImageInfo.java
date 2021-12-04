package onlineshopping.controller.goods;

import onlineshopping.model.Goods;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collection;
import java.util.UUID;

@WebServlet(name = "UploadImageInfo", value = "/UploadImageInfo")
@MultipartConfig(location = "E:\\IDEA2018\\IDEAworkplace\\online_shopping\\src\\main\\webapp\\img")
public class UploadImageInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Ϊ������������
        String ima_add="";
        Goods good=new Goods();
        request.setCharacterEncoding("utf-8");
        String basePath = "E:\\IDEA2018\\IDEAworkplace\\online_shopping\\src\\main\\webapp\\img";
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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
