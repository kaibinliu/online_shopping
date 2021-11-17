<%@page import="onlineshopping.model.Seller"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="onlineshopping.model.goodsDao.GoodDao"%>
<%@page import="onlineshopping.model.Good"%>
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
    <h1>已出售商品信息</h1><!--已出售商品信息-->
    <div class="haomaTitle" id="hmtitle">
        商品信息
    </div>
		<%
		request.setCharacterEncoding("utf-8");
		GoodDao gd=new GoodDao();
		ArrayList<Good> gl=gd.showSoldOut();
		if(gl.isEmpty()==false){
		String[] ima;
		for(Good good:gl) {
			ima=good.getG_img().split(";");
		%>
		<table>
            <tr>
                <td class="tip">商品名称：</td><td> <%=good.getG_name() %></td>
            </tr>
            <tr>
                <td class="tip">商品图片：</td>
                <td> <% if(good.getG_img().length()!=0){
						for(String i:ima){%>
							<img src=<%=i%> height="200" width="400">
						<%} }%></td>
            </tr>
            <tr>
                <td class="tip">商品价格：</td><td> <%=good.getG_price() %></td>
            </tr>
            <tr>
                <td class="tip">商品简介：</td><td> <%=good.getG_des() %></td>
            </tr>
			<tr>
                <td class="tip">商品状态：</td><td> <%=good.getG_state()%></td>
            </tr>
        </table><br/><br/><hr/><%} %>
        <a href="Show.jsp">返回</a><br/>
<%}else {%>
<h1>不存在已售出商品！</h1><br/>
<a href="Show.jsp">返回</a><br/>
<%}} %>
</body>
</html>