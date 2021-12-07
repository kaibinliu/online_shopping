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
    <style>
        img{
            width: 200px;
            height: 300px;
        }

    </style>
</head>
<body>
<header>
    <a href="goodlist.jsp">返回</a>
    商品详情
</header>
<%
    Repository repo=(Repository)session.getAttribute("repo");
    ArrayList<Goods> glist=repo.getRepo();
    Iterator<Goods> giter =glist.iterator();
    while(giter.hasNext()){
        Goods g1=null;
        g1=giter.next();
        
%>
        <div id="imgBox">
            <img src="<%=g1.getGPicture().split(";")[0]%>">
        </div>
        商品名称:<p> <%=g1.getGName() %></p>
        价格:<%=g1.getGPrice() %>
        库存:<%=g1.getGStock() %>
        <form action="userinformation.jsp" method="post">
            <input style="float: right;"type="submit" value="购买"  >
            <input type="hidden" name="id" value=<%=g1.getGId()%>>
        </form>
<%
    }
%>
</body>
</html>
