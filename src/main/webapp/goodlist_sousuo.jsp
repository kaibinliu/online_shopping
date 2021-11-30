<%--
  Created by IntelliJ IDEA.
  User: HBP
  Date: 2021/11/24
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="onlineshopping.model.goodsDao.Repo" %>
<%@ page import="onlineshopping.model.Repository" %>
<%@ page import="onlineshopping.model.Goods" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: HBP
  Date: 2021/11/21
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form action="Sousuo" method="post">
  <input type="text" name="ss">
  <input type="submit" value="搜索">
</form>
<header style="width:8cm; height: 1cm; line-height: 1cm; text-align: center; margin-left: auto;margin-right: auto;   background-color: sandybrown;">
  <a href="goodlist.jsp">返回首页</a>
  商品列表
</header>
<%
  Repository repo=(Repository)session.getAttribute("repo");
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
    <form action="userinformation.jsp" method="post">
      <input style="float: right;"type="submit" value="购买"  >
      <input type="hidden" name="id" value=<%=g1.getGId()%>>
    </form>
  </td>
</table>
<%
  }
%>
</body>
</html>
