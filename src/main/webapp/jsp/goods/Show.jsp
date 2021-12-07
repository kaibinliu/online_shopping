<%@page import="onlineshopping.model.Seller"%>
<%@page import="onlineshopping.model.goodsDao.GoodsDao"%>
<%@page import="onlineshopping.model.Goods"%>
<%@ page import="java.util.ArrayList" %>
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
    <link href="../../css/goods/goods.css" rel="stylesheet" type="text/css" />
    <script language="javascript">
        function stockChange(id){
            var num= prompt("修改库存");
            if(num)
                if (parseInt(num)>=0)
                    window.location.href="../../ChangeStockServlet?id="+id+"&num="+num;
                else
                    alert("库存修改失败！库存不可设置为负数.")
            else
                window.location.href="Show.jsp";
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
<p style="text-align:right;">
    <a href="#" onclick="history.back()">返回上一页</a>
    <a href="Release.jsp">发布商品</a>
    <a href="../buyer/ShowBuyerInfo.jsp">查看注册用户信息</a>
    <a href="SoldOut.jsp">查看历史商品</a>
    <a href="../seller/changepassword.jsp">修改密码</a>
    <a href="../seller/quit.jsp">退出登录</a></p>
<hr/>

    <h1 align="center">商品信息管理</h1><!--商家管理商品信息-->
<%
    request.setCharacterEncoding("utf-8");
    GoodsDao gd=new GoodsDao();
    int id = Integer.parseInt(request.getParameter("id"));
    Goods good = gd.ShowGoodsById(id);
    String[] ima = good.getGPicture().split(";");
%>
    
		<table align="center">
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
                <td class="tip">商品价格：</td><td width=400> <%=good.getGPrice() %></td>
            </tr>
            <tr>
                <td class="tip">商品描述：</td><td width=400><a href="../../GoodsDescribeServlet?id=<%=good.getGId()%>">点击查看详情</a></td>
            </tr>
			<tr>
                <td class="tip">商品库存：</td><td width=400> <%=good.getGStock()%>
                &nbsp<a href="../purchase/Purchase.jsp?id=<%=good.getGId()%>&name=<%=good.getGName()%>">查看订单</a></td>
            </tr>
            <tr>
                <td class="tip">操作：</td><td width=400> <button onclick="stockChange(<%=good.getGId()%>)">修改库存</button> </td>
            </tr>
        </table><br/><br/><hr/>
<%}%>

</body>
</html>