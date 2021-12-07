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
    <link rel="stylesheet" href="../../css/goods/soft.css">
</head>
<body>
<div class="top-nav">
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
    <a href="../../index.jsp">返回首页</a>
</div>
<%@include file="Goods_FilterAndSearchBar.jsp"%>
<%
    Repository repo=Repo.repo();
    ArrayList<Goods> glist=repo.getRepo();
    Iterator<Goods> giter =glist.iterator();
    while(giter.hasNext()){
        Goods g1=null;
        g1=giter.next();
%>
<div class="container">
<div class="table" onclick="window.location.href='../../Sousuoid?id=<%=g1.getGId()%>'">
    <div class="content">
        <img src=<%=g1.getGPicture().split(";")[0]%> >
        <p class="name"><%=g1.getGName() %></p>
        <p class="price"><%=g1.getGPrice() %></p>
        <p class="repertory"><%=g1.getGStock() %></p>
    </div>
</div>
</div>
<% }
%>
</body>
</html>