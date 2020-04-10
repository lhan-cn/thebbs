<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/23
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">-->
    <title>登录页面</title>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="login_box">
    <div class="login_l_img"><img src="${pageContext.request.contextPath}/img/login-img.png" /></div>
    <div class="login">
        <div class="login_logo">
            <a href="#"><img src="${pageContext.request.contextPath}/img/login_logo.png" /></a>
        </div>
        <div class="login_name">
            <p>游客登录</p>
        </div>
        <form action="${pageContext.request.contextPath}/user/login" method="post">
            <input name="username" type="text" value="用户名" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名'}">
            <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();">密码</span>
            <input name="userpassword" type="password" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};" />
            <input name="gender" type="radio" value="commentuser" checked>用户
            <input name="gender" type="radio" value="manageuser">管理员
            <input value="登录" style="width:100%;" type="submit">
        </form>
    </div>
    <div class="copyright">四川轻化工大学 版权所有©2019-2020 技术支持电话：000-00000000</div>
</div>
</body>

</html>
