<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div style="height: 10cm; background-color: skyblue;margin-left: auto;margin-right: auto; width: 8cm ;text-align: center">
    <p>欢迎使用在线商城</p>
    <br><br><br>
    <p>请选择你的身份:</p>
    <form action="goodlist.jsp">
        <input style="width: 2cm; height: 1cm;" type="submit" value="买家">
    </form>
    <br><br><br><br><br>
    <form action="SellerLogin.jsp">
        <input style="width: 2cm; height: 1cm;"  type="submit" value="卖家">
    </form>
</div>
</body>
</html>