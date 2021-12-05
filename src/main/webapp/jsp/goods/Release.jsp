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
    <link href="../../css/goods/goods.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript">
        var list=[
            ["奶粉","纸尿裤","营养品","辅食","喂养","洗护用品","洗涤用品","玩具"],
            ["面部护理","面膜","彩妆","面露精华","个人护理","护肤套装","香水","洗发护发"],
            ["耳机","手机","电脑","数码照摄","生活电器","音箱","美容个护","剃须刀"],
            ["牛奶饮品","进口饮用","进口休食","进口红酒","方便速食","进口咖啡","懒人早餐","饼干糕点"],
            ["时尚箱包","轻奢腕表","珠宝首饰","运动装备","潮流服装","腰带配饰","时尚鞋靴","精品内衣"],
            ["锅具厨具","生活净水","水杯水壶","家居家纺","衣物洗护","进口机油","办公文具","家居清洁"],
            ["魅力女性","男性健康","减肥运动","关节骨骼","心脑血管","孕婴儿童","元素补充","传统滋补"],
            ["半合成机油","全合成机油","美版机油","欧版机油","小容量","大容量","品牌专用","汽车周边"]
        ];
        function getCategory(){
            var Categoryone=document.form.categoryone;
            var Categorytwo=document.form.categorytwo;
            var sonlist=list[Categoryone.selectedIndex];
            if(Categoryone.options.length==9){
                var sonlist=list[Categoryone.selectedIndex-1];
                Categoryone.removeChild(Categoryone.options[0]);}
            for(var i=0;i<sonlist.length;i++){
                Categorytwo[i]=new Option(sonlist[i],sonlist[i]);
            }
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
<%GoodDao gd=new GoodDao();
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