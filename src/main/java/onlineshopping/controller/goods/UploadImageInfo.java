//package onlineshopping.controller.goods;
//
//
//
//import org.apache.tomcat.util.http.fileupload.FileItem;
//import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
//import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.File;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet(name = "UploadImageInfo", value = "/UploadImageInfo")
//public class UploadImageInfo extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request,response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        try {
//            // 配置上传参数
//            DiskFileItemFactory factory = new DiskFileItemFactory();
//            ServletFileUpload upload = new ServletFileUpload(factory);
//            // 解析请求的内容提取文件数据
//            @SuppressWarnings("unchecked")
//            List<FileItem> formItems = upload.parseRequest(request);
//
//            // 迭代表单数据
//            for (FileItem item : formItems) {
//                // 处理不在表单中的字段
//                if (!item.isFormField()) {
//                    String fileName = item.getName();
//                    //定义上传文件的存放路径
//                    String path = request.getServletContext().getRealPath("/uploadFiles");
//                    //定义上传文件的完整路径
//                    String filePath = String.format("%s/%s",path,fileName);
//                    File storeFile = new File(filePath);
//                    // 在控制台输出文件的上传路径
//                    System.out.println(filePath);
//                    // 保存文件到硬盘
//                    item.write(storeFile);
//                }
//            }
//        } catch (Exception ex) {
//
//        }
//
//    }
//}
