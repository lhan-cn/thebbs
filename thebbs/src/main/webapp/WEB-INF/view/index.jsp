<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/23
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css" />
    <title>BBS论坛网页</title>
</head>

<body>
<div id="mian">
    <div class="top">
        <div class="top_left">
            <ul class="nav nav-pills">
                <li role="presentation">
                    <a href="#">论坛中心</a>
                </li>
                <li role="presentation">
                    <a href="#">帮助？</a>
                </li>
            </ul>
        </div>
        <div class="top_center">
            <form class="navbar-form navbar-left">
                    <input type="text" class="form-control" placeholder="Search">
                    <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </div>

        <div class="top_right">
            <ul class="nav nav-pills">
                <li role="presentation">
                    <a href="/register">注册</a>
                </li>
            </ul>
        </div>
    </div>
    <!--论坛首页-->
    <div class="center">
        <div class="center_left">
            <div class="center-topic">
                <ol class="breadcrumb">
                    <li>
                        <a href="main.jsp"  target="my-iframe">推荐</a>
                    </li>
                    <li>
                        <a href="#" target="my-iframe">搞笑段子</a>
                    </li>
                    <li>
                        <a href="#" target="my-iframe">游戏论</a>
                    </li>
                    <li class="active">
                        <a href="#" target="my-iframe">技术专区</a>
                    </li>
                </ol>
            </div>
            <div>
                <iframe name="my-iframe" id="my-iframe" src="${pageContext.request.contextPath}/main.jsp" frameborder="1" width="900px" height="862px" scrolling="no"></iframe>
            </div>

        </div>
        <!--登陆成功后展示的个人名称和头像的中心-->
        <div class="center_right">
            <div class="text-center" style="margin-top:100px ;">

                <c:if test="${not empty UserName}">
                    <p>
                        <img src="${pageContext.request.contextPath}/img/${UserImg}" class="user-profile-picture
                        img-circle" height="130px" width="130px">
                    </p>
                    <p style="font-size: 20px;color: royalblue">
                        <a href="#"><strong>${UserName}</strong></a>
                    </p>

                </c:if>
                <hr>
                <c:if test="${UserName==null}">
                    <a href="/login" class="btn btn-primary" rel="nofollow">
                        请先登录
                    </a>
                </c:if>
                <hr>
                <span class="glyphicon glyphicon-pencil" style="color: green">
                        <a href="/writing" target="my-iframe">创建新的帖子</a>
                    </span>
            </div>

        </div>
    </div>
</div>

</body>

</html>