<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/24
  Time: 8:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }js/register.js" ></script>
    <title>注册页面</title>
</head>

<body>
<div id="main">
    <div class="login_l_img"><img src="${pageContext.request.contextPath}/img/login-img.png" /></div>
    <div class="rg_layout">
        <div class="login_logo">
            <a href="#"><img src="${pageContext.request.contextPath}/img/login_logo.png" /></a>
        </div>
        <div class="rg_left">
            <p>新用户注册</p>
            <p>USER REGISTER</p>
        </div>

        <div class="rg_center">
            <form action="/user/insert"  method="post" id="form">
                <table border="0" align="center" width="500">
                    <tr>
                        <td class="td_left"><label for="username" >用户名</label></td>
                        <td class="td_right"><input name="username" type="text" placeholder="请输入用户名" id="username">
                            <%--提示用户重名--%>
                            <span id="s_username" class="error"><%--${username_error}--%></span>
                        </td>
                    </tr>

                    <tr>
                        <td class="td_left"><label for="password">密码</label></td>
                        <td class="td_right"><input name="userpassword" type="password" placeholder="请输入6~12位的密码" id="password">
                            <span id="s_password" class="error"></span>
                        </td>
                    </tr>

                    <tr>
                        <td class="td_left"><label for="email">邮箱</label></td>
                        <td class="td_right"><input name="useremail" type="email" placeholder="请输入邮箱" id="email">
                            <span id="s_email" class="error"></span>
                        </td>
                    </tr>

                    <tr>
                        <td class="td_left"><label for="age">年龄</label></td>
                        <td class="td_right"><input name="age" type="number" placeholder="请输入年龄" id="age">
                            <span id="s_age" class="error"></span>
                        </td>
                    </tr>

                    <tr>
                        <td class="td_left"><label for="phone">手机号</label></td>
                        <td class="td_right"><input name="phone"  type="text" placeholder="请输入手机号" id="phone">
                            <span id="s_phone" class="error"></span>
                        </td>
                    </tr>

                    <tr>
                        <td class="td_left"><label>性别</label></td>
                        <td class="td_right"><input name="usergender" type="radio" value="男" checked>男
                            <input name="usergender" type="radio" value="女">女</td>
                    </tr>


                    <%--<tr>
                        <td class="td_left"><label for="checkcode" >验证码</label></td>
                        <td class="td_right"><input name="checkcode" type="text" id="checkcode">
                            <img id="img_check" src="img/yan.png">
                        </td>
                    </tr>--%>

                    <tr>
                        <td colspan="2" align="center"><input type="submit" id="sub_btn" value="注册"> </td>
                    </tr>

                </table>

            </form>

        </div>

        <div class="rg_right">
            <p>已有账号?
                <a href="login.html">立即登录</a>
            </p>

        </div>
    </div>
</div>

</body>

</html>