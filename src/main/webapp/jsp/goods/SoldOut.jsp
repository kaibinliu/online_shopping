<%@page import="onlineshopping.model.Seller"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="onlineshopping.model.goodsDao.GoodDao"%>
<%@page import="onlineshopping.model.Goods"%>
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
        function stockChange(id){
            var num= prompt("修改库存");
            if(num)
                if (parseInt(num)>=0)
                    window.location.href="../../ChangeStockServlet?id="+id+"&num="+num;
                else
                    alert("库存修改失败！库存不可设置为0或负数.")
            else
                window.location.href="SoldOut.jsp";
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
    <h1>已出售商品信息</h1><!--已出售商品信息-->
    <div class="haomaTitle" id="hmtitle">
        商品信息
    </div>
		<%
		request.setCharacterEncoding("utf-8");
		GoodDao gd=new GoodDao();
		ArrayList<Goods> gl=gd.showSoldOut();
		if(gl.isEmpty()==false){
		String[] ima;
		for(Goods good:gl) {
			ima=good.getGPicture().split(";");
		%>
		<table>
            <tr>
                <td class="tip">商品名称：</td><td> <%=good.getGName() %></td>
            </tr>
            <tr>
                <td class="tip">商品图片：</td>
                <td> <% if(good.getGPicture().length()!=0){
						for(String i:ima){%>
							<img src=<%=i%> height="200" width="400">
						<%break;} }%></td>
            </tr>
            <tr>
                <td class="tip">商品价格：</td><td> <%=good.getGPrice() %></td>
            </tr>
            <tr>
                <td class="tip">操作：</td><td width=400> <button onclick="stockChange(<%=good.getGId()%>)">补充库存</button> </td>
            </tr>
        </table><br/><br/><hr/><%} %>
        <a href="Show.jsp">返回</a><br/>
<%}else {%>
<h1>不存在已售出商品！</h1><br/>
<a href="Show.jsp">返回</a><br/>
<%}} %>
</body>
</html>