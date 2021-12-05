<%@page import="onlineshopping.model.goodsDao.Repo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="onlineshopping.model.Repository"%>
<%@page import="onlineshopping.model.Goods"%>
<%@ page import="onlineshopping.model.Buyer" %>
<%@ page language="java"  contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" >
    <title>Insert title here</title>
</head>
<body>
<%
    Buyer buyer = (Buyer)session.getAttribute("buyer");
    if(null==buyer){
%>
<p style="text-align:right;">
    <a href="../buyer/BuyerLogin.jsp">登录</a>
    <a href="../buyer/BuyerRegister.jsp">注册</a>
</p>
<%
    }else{
%>
<p style="text-align:right;">
    <a href="../buyer/BuyerPurchaseHistory.jsp?id=<%=buyer.getBId()%>">查看个人购买记录</a>
    <a href="../buyer/quit.jsp">退出登录</a>
</p>
<%
    }
%>

<form action="../../Sousuo" method="post">
    <input type="text" name="ss">
    <input type="submit" value="搜索">
</form>
<header style="width:8cm; height: 1cm; line-height: 1cm; text-align: center; margin-left: auto;margin-right: auto;   background-color: sandybrown;">
    商品列表
</header>
<%
    Repository repo=Repo.repo();
    ArrayList<Goods> glist=repo.getRepo();
    Iterator<Goods> giter =glist.iterator();
    while(giter.hasNext()){
        Goods g1=null;
        g1=giter.next();
%>
<table id="main" border="1" style="width: 8cm;  height: fit-content; margin-left: auto; margin-right: auto;">
    <td><img src=<%=g1.getGPicture() %> width="150" height="100"> </td>
    <td>
        <p> <%=g1.getGName() %></p> <br>
        详细信息:<p> <%=g1.getGDescribe() %></p>
        价格:<%=g1.getGPrice() %>
        库存:<%=g1.getGStock() %>
        <form action="../buyer/userinformation.jsp" method="post">
            <input style="float: right;"type="submit" value="购买"  >
            <input type="hidden" name="id" value=<%=g1.getGId()%>>
        </form>
    </td>
</table>
<% }
%>
</body>
</html>