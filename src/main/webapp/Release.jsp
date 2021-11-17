<%@page import="onlineshopping.model.Seller"%>
<%@page import="onlineshopping.model.goodsDao.GoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线购物商城</title>
    <meta name="keywords" content="商品信息注册"/>
    <meta name="description" content="注册"/>
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
<%GoodDao gd=new GoodDao();
if(gd.showGood()!=null)
	response.sendRedirect("Show.jsp");%>
    <h1>商品信息注册</h1><!--商家注册商品信息-->
    <div class="haomaTitle" id="hmtitle">
        商品信息
    </div>

	<form action="UploadServlet" method="POST" enctype="multipart/form-data">
        <table>
            <tr>
                <td class="tip">商品名称：</td><td> <input type="text" name="sname"/></td>
            </tr>
            <tr>
                <td class="tip">商品图片：</td><td> <input type="file" name="img" accept="image/*" multiple="multiple"></td>
            </tr>
            <tr>
                <td class="tip">商品价格：</td><td> <input type="text" name="sprice"/></td>
            </tr>
            <tr>
                <td class="tip">商品简介：</td><td> <textarea name="sintruction" cols="50" rows="10" style="resize:none;"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" class="btnSubmit"><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form><br/><br/>
    <a href="Show.jsp">返回</a>
<%} %>
</body>
</html>