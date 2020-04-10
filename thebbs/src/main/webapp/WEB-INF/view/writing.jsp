<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/9
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0  user-scalable=no maximum-scale=1.0, user-scalable=no">
        <!--width 属性控制设备的宽度。假设您的网站将被带有不同屏幕分辨率的设备浏览，那么将它设置为 device-width 可以确保它能正确呈现在不同设备上。
    initial-scale=1.0 确保网页加载时，以 1:1 的比例呈现，不会有任何的缩放。
    在移动设备浏览器上，通过为 viewport meta 标签添加 user-scalable=no 可以禁用其缩放（zooming）功能。
    通常情况下，maximum-scale=1.0 与 user-scalable=no 一起使用。这样禁用缩放功能后，用户只能滚动屏幕，就能让您的网站看上去更像原生应用的感觉。
    注意，这种方式我们并不推荐所有网站使用，还是要看您自己的情况而定！-->
        <title>论坛-用户主页</title>
        <link rel="stylesheet" href="//apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
        <script src="//apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="//apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    </head>
    <style>
        .search-location {
            top: 4px;
            margin-left: 12px;
        }

        .main-nav-location {
            margin-left: 12px;
        }

        .line {
            border-bottom: 1px solid greenyellow;
        }

        body {
            margin-top: 70px;
            background-color: beige;
        }

        .box {
            background-color: #ffffff;
            border-radius: 3px;
            border-bottom: 1px solid darkgray;
        }

        .cell {
            background: #ffffff;
            padding: 10px;
            font-size: 18px;
            text-align: left;
            line-height: 120%;
            border-bottom: 1px solid gray;
        }

        .title_container {
            width: 100%;
            border: none;
            resize: none;
            background-color:bisque;
            padding: 10px;
            font-family: 'Helvetica Neue', 'Hiragino Sans GB', 'Microsoft Yahei', sans-serif;
            margin: 0;
            box-sizing: border-box;
            outline: none;
        }
    </style>
</head>

<body>

<div class="container" id="content">
    <div class="row">
        <div class="col-md-9">
            <div class="box">
                <form role="form" method="post" action="/article/new">
                    <div class="cell">主题标题</div>
                    <div class="cell" style="padding: 0px">
                        <textarea class="title_container" rows="1" maxlength="120" id="article_title" name="articleTitle" placeholder="请输入主题的标题"></textarea>
                    </div>
                    <div class="cell">
                        帖子正文
                    </div>
                    <div class="cell" style="padding: 0px">
                        <textarea class="title_container" rows="12" maxlength="20000" id="article_content" name="articleContent" autofocus="autofocus" style="background-color: #ffffff;"></textarea>
                    </div>

                    <div class="cell" style="border-top: 1px solid gray;padding: 15px">
                        <!--选择发表那个主题的比如搞笑 技术-->
                        <div class="cell" style="border-top: 1px solid gray;padding: 15px">
                            <select class="form-control" style="width: 20%;" name="blockId">
                                <option value="jok"> 搞笑段子</option>
                                <option value="game"> 游戏论</option>
                                <option value="skill"> 技术专区</option>
                            </select>
                        </div>
                    </div>
                    <div class="cell" style="padding: 15px">
                        <button class="btn btn-default" type="submit">
                            <span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp;发布帖子</button>
                        <button class="btn btn-default" type="reset">
                            <span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;撤销</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

</body>
<html/>
