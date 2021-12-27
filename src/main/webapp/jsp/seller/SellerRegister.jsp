<%@ page contentType="text/html; charset=utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线购物商城</title>
    <meta name="keywords" content="账号注册"/>
    <meta name="description" content="注册"/>
    <link href="../../css/seller/seller.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>商家注册</h1><!--商家注册信息-->
    <div class="haomaTitle" id="hmtitle">
        注册账号
    </div>
    <form action="../../SellerRegisterServlet" mothod="post">
        <table>
            <tr>
                <td class="tip">用户名：</td><td> <input type="text" name="uname"/></td>
            </tr>
            <tr>
                <td class="tip">密码：</td><td> <input type="password" name="pwd"/></td>
            </tr>
            <tr>
                <td colspan="2" class="btnSubmit"><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>
    <a href="SellerLogin.jsp">商家登录</a>
</body>
</html>