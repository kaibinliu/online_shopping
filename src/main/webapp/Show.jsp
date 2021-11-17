<%@page import="onlineshopping.model.Seller"%>
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
    <meta name="keywords" content="商品信息管理"/>
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
<p style="text-align:right;"><a href="changepassword.jsp">修改密码</a>
<a href="quit.jsp">退出登录</a></p>
<hr/>

    <h1 align="center">商品信息管理</h1><!--商家管理商品信息-->
<% 
request.setCharacterEncoding("utf-8");
	Good good=new Good();
	GoodDao gd=new GoodDao();
	good=gd.showGood();
	if(good!=null){
	String[] ima=good.getG_img().split(";");
%>
    <div align="center" id="hmtitle" >
        商品信息
    </div>
    
		<table align="center">
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
                <td class="tip">商品价格：</td><td width=400> <%=good.getG_price() %></td>
            </tr>
            <tr>
                <td class="tip">商品简介：</td><td width=400> <%=good.getG_des() %></td>
            </tr>
			<tr>
                <td class="tip">商品状态：</td><td width=400> <%=good.getG_state()%>
                <%if(good.getG_state().equals("销售中")||good.getG_state().equals("冻结中")){ %>
                &nbsp;&nbsp;&nbsp;<a href="Purchase.jsp?id=<%=good.getG_id()%>&name=<%=good.getG_name()%>">查看意向购买人信息</a>
                <%}%></td>
            </tr>
            <tr>
            <%if(good.getG_state().equals("销售中")){ %>
                <td class="tip">
                	<form action="Freeze?id=<%=good.getG_id()%>" method="POST" >
                		<td colspan="2" class="btnSubmit"><input type="submit" value="冻结"/></td>
                	</form>
                </td>
                <%}else if(good.getG_state().equals("冻结中")){%>
                </tr>
                <tr>
                </tr>
                <td class="tip">
                	<form action="SuccessDeal?id=<%=good.getG_id()%>" method="POST" >
                		<input type="submit" value="交易成功"/>
                	</form>
                </td>
                <td class="tip">
                	<form action="FailedDeal?id=<%=good.getG_id()%>" method="POST" >
                		<input type="submit" value="交易失败"/>
                	</form>
                </td>
                <%} %>
            </tr>
        </table><br/><br/>
        <a href="SoldOut.jsp">查看历史商品</a>
<%}else {%>
<h1>商品已售空！</h1><br/>
<a href="Release.jsp">发布商品</a><br/>
<a href="SoldOut.jsp">查看历史商品</a>
<%}} %>
</body>
</html>