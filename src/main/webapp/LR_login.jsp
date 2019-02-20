<%--
  Created by IntelliJ IDEA.
  User: liqiang
  Date: 2019/2/12
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Invest_View_Login_In</title>
    <meta name="author" content="DeathGhost"/>
    <link rel="stylesheet" type="text/css" href="css/LR_register.css"/>
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="js/verificationNumbers.js"></script>
    <script src="js/Particleground.js"></script>
    <script>
        $(document).ready(function () {
            //粒子背景特效
            $('body').particleground({
                dotColor: '#5cbdaa',
                lineColor: '#5cbdaa'
            });
            //验证码
            createCode();
        });
    </script>
</head>
<body>
<dl class="admin_login">
    <dt>
        <strong>用户登录</strong> <em>User_Login</em>
    </dt>
    <dd class="user_icon">
        <input type="text" placeholder="账号" class="login_txtbx"/>
    </dd>
    <dd class="pwd_icon">
        <input type="password" placeholder="密码" class="login_txtbx"/>
    </dd>
    <dd class="val_icon">
        <div class="checkcode">
            <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
            <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">
                对不起，您的浏览器不支持canvas，请下载最新版浏览器!
            </canvas>
        </div>
        <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
    </dd>
    <dd>
        <input class="login_txtbx" type="checkbox" id="brand">
        <label for="brand">
            <span id="rm"><a href="">Remember Me</a></span>
        </label>
        <a id="fp" href="#">Forgot Password?</a>
    </dd>
    <dd>
        <input type="submit" value="立即登陆"/>
    </dd>
    <dd>
        <a href=​"Invest_View_Sign_Up.html">​Don't Have An Account? Create One Now​</a>​
        <a href="Invest_View_Home.html">Back HomePage</a>
    </dd>
    <dd>
        <p>© 2018-2019 lr_v 版权所有</p>
        <p><a href="Invest_View_Home.html">www.InvestView.cn</a></p>
    </dd>
</dl>
</body>
</html>
