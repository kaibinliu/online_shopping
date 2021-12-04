<%@ page contentType="text/html; charset=utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线购物商城</title>
    <meta name="keywords" content="账号注册"/>
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
    <h1>买家注册</h1><!--买注册信息-->
    <div class="haomaTitle" id="hmtitle">
        注册账号
    </div>
    <form action="../../BuyerRegisterServlet" mothod="post">
        <table>
            <tr>
                <td class="tip">用户名：</td><td> <input type="text" name="BUsername"/></td>
            </tr>
            <tr>
                <td class="tip">密码：</td><td> <input type="password" name="BPassword"/></td>
            </tr>
            <tr>
                <td class="tip">电话：</td><td> <input type="text" name="BPhone"/></td>
            </tr>
            <tr>
                <td class="tip">默认地址：</td><td> <input type="text" name="BAddress"/></td>
            </tr>
          
            <tr>
                <td colspan="2" class="btnSubmit"><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>
    <a href="BuyerLogin.jsp">买家登录</a>
</body>
</html>