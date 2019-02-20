<%--
  Created by IntelliJ IDEA.
  User: liqiang
  Date: 2019/1/30
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LR_register</title>
    <%--<meta name="author" content="DeathGhost" />--%>
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
        <strong>用户注册</strong>
        <em>User_Sign</em>
    </dt>
    <dd class="user_icon">
        <input type="text" style="width: 450px!important;height: 46px!important;" placeholder="请输入账号" class="login_txtbx"/>
    </dd>
    <dd class="pwd_icon">
        <input style="width: 450px!important;height: 46px!important;" type="password" placeholder="请输入密码" class="login_txtbx"/>
    </dd>
    <dd class="eml_icon">
        <input type="text" placeholder="请输入邮箱" class="login_txtbx">
    </dd>
    <dd class="val_icon">
        <div class="checkcode">
            <input  type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
            <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
        </div>
        <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
    </dd>
    <dd>
        <input id="tzlg" type="submit" value="已拥有账号登录" class="submit_btn">
        <input type="submit" value="立即注册" style="width:251px !important; position: relative;" class="submit_btn"/>
    </dd>
    <dd style="padding-top: 10px !important;">
        <input style="width: 15px!important; height: 15px!important;" class="login_txtbx" type="checkbox" id="brand"><a
            href=​"Invest_View_Sign_Up.html" style="margin-left: 10px !important;">​Welcome Join Invest_View.Vip</a>​
        <a href="Invest_View_Home.html" style="margin-left: 135px !important;">Back HomePage</a>
    </dd>
    <dd>
        <p>© 2018-2019 LR 版权所有</p>
        <p><a href="Invest_View_Home.html">www.InvestView.cn</a></p>
    </dd>
</dl>
</body>
</html>
