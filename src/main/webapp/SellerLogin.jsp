<%@ page contentType="text/html; charset=utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线购物商城</title>
    <meta name="keywords" content="账号登录"/>
    <meta name="description" content="登录"/>
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
    <h1>商家登录</h1><!--商家登录信息-->
    <div class="haomaTitle" id="hmtitle">
        登录账号
    </div>
    <form action="SellerLoginServlet" mothod="post">
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
    <a href="SellerRegister.jsp">商家注册</a>
</body>
</html>