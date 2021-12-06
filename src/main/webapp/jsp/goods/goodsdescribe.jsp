<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/12/5
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="describe" class="java.lang.String" scope="request"></jsp:useBean>
<%
    System.out.println("页面接收到的HTML为：\n"+describe);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p><a href="#" onclick="history.back()">返回上一页</a></p>
    <div>
        ${describe}
    </div>
</body>
</html>

