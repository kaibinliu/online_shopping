<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/12/3
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="tinymce/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="js/upload.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: '#textarea',
            language:'zh_CN',
            plugins: 'image',
            toolbar: 'image',
            images_upload_base_path:'img',
            images_upload_url: '/upload',
        });
    </script>
</head>
<body>
    <form method="post" action="">
        商品描述：<textarea id="textarea"></textarea>
    </form>
</body>
</html>
