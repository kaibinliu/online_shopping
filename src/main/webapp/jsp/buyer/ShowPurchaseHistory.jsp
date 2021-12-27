<%@ page import="onlineshopping.model.Seller" %>
<%@ page import="onlineshopping.model.purchaseDao.PurchaseDao" %>
<%@ page import="onlineshopping.model.Purchase" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 13553
  Date: 2021/11/20
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线购物商城</title>
    <meta name="keywords" content="客户购买记录"/>
    <meta name="description" content="客户购买历史"/>
    <link href="../../css/buyer/buyer.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
    Seller seller=(Seller)session.getAttribute("seller");
    if(null==seller){
        response.sendRedirect("../seller/SellerLogin.jsp");
    }else{
%>
<h1>注册客户购买历史</h1><!--注册客户信息-->
<div class="haomaTitle" id="hmtitle">
    客户购买历史
        <%
        int id=Integer.parseInt(request.getParameter("id"));
        if(id==0)
        	response.sendRedirect("../goods/GoodsManage.jsp");
        PurchaseDao pd=new PurchaseDao();
		ArrayList<Purchase> pl=pd.readHistory(id);
		if(pl.isEmpty()==false){
		for(Purchase p:pl) {
		%>
    <table>
        <tr>
            <td class="tip">商品ID：</td><td> <%=p.getGId()%></td>
        </tr>
        <tr>
            <td class="tip">商品名称：</td><td> <%=p.getGName()%></td>
        </tr>
        <tr>
            <td class="tip">客户用户名：</td><td> <%=p.getBUsername() %></td>
        </tr>
        <tr>
            <td class="tip">电话号码：</td><td> <%=p.getBPhone() %></td>
        </tr>
        <tr>
            <td class="tip">购买日期：</td><td> <%=p.getPDate() %></td>
        </tr>
        <tr>
            <td class="tip">购买数量：</td><td> <%=p.getPCount() %></td>
        </tr>
        <tr>
            <td class="tip">交易地址：</td><td> <%=p.getPAddress() %></td>
        </tr>
        <tr>
            <td class="tip">订单状态：</td><td> <%=p.getPState() %></td>
        </tr>
    </table><br/><br/><%} %>
    <a href="#" onclick="history.back()">返回</a><br/>
        <%}else {%>
    <h1>该用户暂无购买历史！</h1><br/>
    <a href="#" onclick="history.back()">返回</a><br/>
        <%}} %>
</body>
</html>
