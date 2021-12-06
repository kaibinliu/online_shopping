package onlineshopping.controller.upload;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import onlineshopping.model.Goods;

@WebServlet(name = "PublicController", value = "/PublicController")
@MultipartConfig(location = "E:\\IDEA2018\\IDEAworkplace\\online_shopping\\src\\main\\webapp\\img\\GDescribe")
public class PublicController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String ima_add="";
        Goods good=new Goods();
        request.setCharacterEncoding("utf-8");
        String basePath = "E:\\IDEA2018\\IDEAworkplace\\online_shopping\\src\\main\\webapp\\img\\GDescribe";
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
                    ima_add+="/img/GDescribe/" + fname;
                    response.setContentType("text/json; charset=utf-8");
                    response.setCharacterEncoding("utf-8");
                    PrintWriter out = response.getWriter();
                    String json = "{ \"location\" : "+"\""+ima_add+"\""+"}";
                    out.println(json);
                }else
                    continue;
            }
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

