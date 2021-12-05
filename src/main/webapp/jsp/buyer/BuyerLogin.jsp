<%@ page contentType="text/html; charset=utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线购物商城</title>
    <meta name="keywords" content="账号登录"/>
    <meta name="description" content="登录"/>
    <link href="../../css/buyer/buyer.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>买家登录</h1><!--商家登录信息-->
    <div class="haomaTitle" id="hmtitle">
        登录账号
    </div>
    <form action="../../BuyerLoginServlet" mothod="post">
        <table>
            <tr>
                <td class="tip">用户名：</td><td> <input type="text" name="BUsername"/></td>
            </tr>
            <tr>
                <td class="tip">密码：</td><td> <input type="password" name="BPassword"/></td>
            </tr>
            <tr>
                <td colspan="2" class="btnSubmit"><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>
    <a href="BuyerRegister.jsp">买家注册</a>&nbsp;<a href="../../index.jsp">返回首页</a>
</body>
</html>