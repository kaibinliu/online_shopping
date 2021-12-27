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
    <link href="../../css/goods/goods.css" rel="stylesheet" type="text/css" />
    <script language="javascript">
        function success(GId,BId){
            window.location.href="../../SuccessDeal?GId="+GId+"&BId="+BId;
        }
        function fail(GId,BId,PCount){
            window.location.href="../../FailedDeal?GId="+GId+"&BId="+BId+"&PCount="+PCount;
        }
    </script>
</head>
<body>
<%
	Seller seller=(Seller)session.getAttribute("seller");
	if(null==seller){
		response.sendRedirect("../seller/SellerLogin.jsp");
	}else{
%>
    <h1>订单信息</h1><!--已出售商品信息-->
    <div class="haomaTitle" id="hmtitle">
        订单信息
        <%
        int no=Integer.parseInt(request.getParameter("id"));
        if(no==0)
        	response.sendRedirect("../goods/Show.jsp");
        PurchaseDao pd=new PurchaseDao();
		ArrayList<Purchase> pl=pd.read(no);
		if(pl.isEmpty()==false){
		for(Purchase p:pl) {
		%>
		<table>
            <tr>
                <td class="tip">客户：</td><td> <%=p.getBUsername() %></td>
            </tr>
            <tr>
                <td class="tip">商品ID：</td><td> <%=p.getGId()%></td>
            </tr>
            <tr>
                <td class="tip">商品名称：</td><td> <%=p.getGName()%></td>
            </tr>
            <tr>
                <td class="tip">购买数量：</td><td> <%=p.getPCount() %></td>
            </tr>
            <tr>
                <td class="tip">交易地址：</td><td> <%=p.getPAddress() %></td>
            </tr>
            <tr>
                <td class="tip">电话号码：</td><td> <%=p.getBPhone() %></td>
            </tr>
            <tr>
                <td class="tip">下单日期：</td><td> <%=p.getPDate() %></td>
            </tr>
            <tr>
                <td class="tip">交易地址：</td><td> <%=p.getPAddress() %></td>
            </tr>
            <tr>
                <td class="tip">操作：</td><td><button onclick="success(<%=p.getGId()%>,<%=p.getBId()%>)">交易成功</button></td><td><button onclick="fail(<%=p.getGId()%>,<%=p.getBId()%>,<%=p.getPCount()%>)">交易失败</button></td>
            </tr>
        </table><br/><br/><%} %>
        <a href="#" onclick="history.back()">返回上一级页面</a><br/>
<%}else {%>
<h1>暂无意向购买人信息！</h1><br/>
<a href="#" onclick="history.back()">返回</a><br/>
<%}} %>
</body>
</html>