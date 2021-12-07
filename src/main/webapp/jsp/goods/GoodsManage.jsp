<%@page import="onlineshopping.model.goodsDao.Repo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="onlineshopping.model.Repository"%>
<%@page import="onlineshopping.model.Goods"%>
<%@ page import="onlineshopping.model.Buyer" %>
<%@ page import="onlineshopping.model.goodsDao.GoodsDao" %>
<%@ page import="onlineshopping.model.Seller" %>
<%@ page language="java"  contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" >
    <title>Insert title here</title>
    <link rel="stylesheet" href="../../css/goods/soft.css">
</head>
<body>
<%
    Seller seller=(Seller)session.getAttribute("seller");
    if(null==seller){
        response.sendRedirect("../seller/SellerLogin.jsp");
    }else{
%>
<p style="text-align:right;">
    <a href="Release.jsp">发布商品</a>
    <a href="../buyer/ShowBuyerInfo.jsp">查看注册用户信息</a>
    <a href="SoldOut.jsp">查看历史商品</a>
    <a href="../seller/changepassword.jsp">修改密码</a>
    <a href="../seller/quit.jsp">退出登录</a></p>
<hr/>

<h1 align="center">商品信息管理</h1><!--商家管理商品信息-->
<%@include file="Goods_FilterAndSearchBar.jsp"%>
<%
    request.setCharacterEncoding("utf-8");
    GoodsDao gd=new GoodsDao();
    ArrayList<Goods> gl=gd.showGoods();
    if(gl.isEmpty()==false){
        String[] ima;
        for(Goods good:gl) {
            ima=good.getGPicture().split(";");
%>

<div class="container">
    <div class="table" onclick="window.location.href='Show.jsp?id=<%=good.getGId()%>'">
        <div class="content">
            <img src=<%=good.getGPicture().split(";")[0]%> >
            <p class="name"><%=good.getGName() %></p>
            <p class="price"><%=good.getGPrice() %></p>
            <p class="repertory"><%=good.getGStock() %></p>
        </div>
    </div>
</div>
<%}}else {%>
<h1>商品已售空！</h1>
<%}} %>
</body>
</html>
