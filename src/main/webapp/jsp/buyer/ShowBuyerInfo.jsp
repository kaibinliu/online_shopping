<%@ page import="onlineshopping.model.Seller" %>
<%@ page import="onlineshopping.model.buyerDao.userdao" %>
<%@ page import="onlineshopping.model.Buyer" %>
<%@ page import="onlineshopping.model.Goods" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: 13553
  Date: 2021/11/20
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>在线购物商城</title>
<meta name="keywords" content="客户信息"/>
<meta name="description" content="客户"/>
<style type="text/css">
    .haomaTitle
    {
        width: 604px;
        height: 30px;
        line-height: 25px;
        font-size: 18px;
        border-bottom: 1px #ddd solid;
    }
    .tip
    {
        text-align: right;
    }
    .btnSubmit
    {
        text-align: center;
    }
</style>
</head>
<body>
<%
    Seller seller=(Seller)session.getAttribute("seller");
    if(null==seller){
        response.sendRedirect("../seller/SellerLogin.jsp");
    }else{
%>
<h1>注册客户信息</h1><!--注册客户信息-->
<div class="haomaTitle" id="hmtitle">
    客户信息
</div>
<%
    request.setCharacterEncoding("utf-8");
    userdao ud=new userdao();
    ArrayList<Buyer> ul=ud.readInfo();
    if(ul.isEmpty()==false){%>

<table>
    <tr>
        <th >用户名</th>
        <th >默认电话</th>
        <th >默认交易地址</th>
        <th >操作</th>
    </tr>
<%for(Buyer buyer:ul) {
%>
    <tr>
        <td><%=buyer.getBUsername()%></td>
        <td><%=buyer.getBPhone()%></td>
        <td><%=buyer.getBAddress()%></td>
        <td><a href="ShowPurchaseHistory.jsp?id=<%=buyer.getBId()%>">查看购买历史</a></td>
    </tr>
    <%} %>
</table><hr/>
<a href="../goods/Show.jsp">返回</a><br/>
<%}else {%>
<h1>暂无注册用户！</h1><br/>
<a href="../goods/Show.jsp">返回</a><br/>
<%}} %>
</body>
</html>
