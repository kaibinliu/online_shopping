<%--
  Created by IntelliJ IDEA.
  User: HBP
  Date: 2021/12/6
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="onlineshopping.model.goodsDao.Repo" %>
<%@ page import="onlineshopping.model.Repository" %>
<%@ page import="onlineshopping.model.Goods" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../css/goods/goodsdetials.css">
    <style>
        img{
            width: 500px;
            height: 300px;
        }

    </style>
    <script src="../../js/goods/GoodsDetails.js"></script>
</head>
<body>
<header>
    <a href="goodslist.jsp">返回商品浏览界面</a>
    <a href="#" onclick="history.back()">返回上一级页面</a>
</header>
<%
    Repository repo=(Repository)session.getAttribute("repo");
    ArrayList<Goods> glist=repo.getRepo();
    Iterator<Goods> giter =glist.iterator();
    while(giter.hasNext()){
        Goods g1=null;
        g1=giter.next();
        
%>
<div style="border: orange 2px solid">
        <h2>商品详情</h2>
        <div class="box">
            <div class="box-1">
                <ul>

                    <%String[] ls = g1.getGPicture().split(";");
                        for(int i=0;i<ls.length;i++){%>
                    <li><img src="<%=ls[i]%>"></li>
                    <%}%>

                </ul>
            </div>
            <div class="box-2">
                <ul>

                </ul>
            </div>
            <div class="box-3">
                <span class="prev"> < </span>
                <span class="next"> > </span>
            </div>
        </div>
        商品名称:<p> <%=g1.getGName() %></p>
        价格:<%=g1.getGPrice() %>
        库存:<%=g1.getGStock() %>
        <p>商品描述详情:<a href="../../GoodsDescribeServlet?id=<%= g1.getGId()%>">点击查看</a></p>
        <%if(null!=session.getAttribute("buyer")){%>
        <form action="../buyer/userinformation.jsp" method="post">
            <input style="float: right;"type="submit" value="购买"  >
            <input type="hidden" name="id" value=<%=g1.getGId()%>>
        </form>
        <%}else{%><p>要登录后才能购买噢>_<</p><%}%>
<%
    }
%>
</div>
</body>
</html>
