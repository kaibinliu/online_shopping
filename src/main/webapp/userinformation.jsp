<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div style="height: 12cm; background-color: skyblue;margin-left: auto;margin-right: auto; width: 8cm ;text-align: center">
    <p>用户信息填写</p> <br>
    <%  int id= Integer.parseInt(request.getParameter("id"));%>
    <form action="userinfo" method="post">
        请输入姓名:<input type="text" name="buyername"><br>
        <br><br>
        请输入电话:<input type="text" name="buyerphone"><br> //数量地址
        <br><br>
        请输入购买数量:<input type="text" name="purchasequantity"><br>
        <br><br>
        请输入地址:<input type="text" name="location"><br>
        <br><br>
        <input style=" width: 2cm; height: 1cm;" type="submit" value="提交">
        <input type="hidden" name="id" value=<%=id %>>
</div>
</form>
</body>
</html>