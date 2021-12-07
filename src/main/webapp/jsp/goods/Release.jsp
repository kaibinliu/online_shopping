<%@page import="onlineshopping.model.Seller"%>
<%@page import="onlineshopping.model.goodsDao.GoodsDao"%>
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
    <link href="../../css/goods/goods.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../tinymce/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="../../js/goods/GoodsRelease.js"></script>
</head>
<body>
<%
	Seller seller=(Seller)session.getAttribute("seller");
	if(null==seller){
		response.sendRedirect("../seller/SellerLogin.jsp");
	}else{
%>
<%
    GoodsDao gd=new GoodsDao();
%>
    <h1>商品信息注册</h1><!--商家注册商品信息-->
    <div class="haomaTitle" id="hmtitle">
        商品信息
    </div>

	<form name="form" action="../../UploadServlet" method="POST" enctype="multipart/form-data">
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
                <td class="tip">商品库存：</td><td> <input type="text" name="stock"/></td>
            </tr>
            <tr>
                <td class="tip">商品类别：</td>
                <td><SELECT NAME="categoryone" onChange="getCategory()">
                    <OPTION VALUE="请选择">请选择</OPTION>
                    <OPTION VALUE="母婴">母婴 </OPTION>
                    <OPTION VALUE="美妆">美妆 </OPTION>
                    <OPTION VALUE="数码">数码 </OPTION>
                    <OPTION VALUE="美食">美食 </OPTION>
                    <OPTION VALUE="时尚">时尚 </OPTION>
                    <OPTION VALUE="家居">家居 </OPTION>
                    <OPTION VALUE="健康">健康 </OPTION>
                    <OPTION VALUE="车品">车品 </OPTION>
                </SELECT>
                    <SELECT NAME="categorytwo">
                </SELECT></td>
            </tr>
            <tr>
                <td class="tip">商品简介：</td><td> <textarea name="sintruction" id="textarea"></textarea></td>
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