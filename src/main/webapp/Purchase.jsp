<%@page import="onlineshopping.model.Seller"%>
<%@page import="java.util.ArrayList"%>
<%@page import="onlineshopping.model.Purchase"%>
<%@page import="onlineshopping.model.purchaseDao.PurchaseDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线购物商城</title>
    <meta name="keywords" content="已售出商品信息管理"/>
    <meta name="description" content="管理"/>
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
		response.sendRedirect("sellerlogin.jsp");
	}else{
%>
    <h1>意向购买人信息</h1><!--已出售商品信息-->
    <div class="haomaTitle" id="hmtitle">
        购买人信息
        <%
        int no=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        if(no==0||name==null)
        	response.sendRedirect("Show.jsp");
       	System.out.println(no+name);
        PurchaseDao pd=new PurchaseDao();
		ArrayList<Purchase> pl=pd.read(no);
		if(pl.isEmpty()==false){
		for(Purchase p:pl) {
		%>
		<table>
            <tr>
                <td class="tip">商品名称：</td><td> <%=name%></td>
            </tr>
            <tr>
                <td class="tip">意向购买人：</td><td> <%=p.getUsername() %></td>
            </tr>
            <tr>
                <td class="tip">电话号码：</td><td> <%=p.getPhone() %></td>
            </tr>
            <tr>
                <td class="tip">日期：</td><td> <%=p.getPDate() %></td>
            </tr>
        </table><br/><br/><%} %>
        <a href="Show.jsp">返回</a><br/>
<%}else {%>
<h1>暂无意向购买人信息！</h1><br/>
<a href="Show.jsp">返回</a><br/>
<%}} %>
</body>
</html>