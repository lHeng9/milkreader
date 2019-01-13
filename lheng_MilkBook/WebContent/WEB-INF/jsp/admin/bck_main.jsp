<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
 	<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
  <link rel="stylesheet" href="css/bck_main.css">

</head>
<body>
    <div class="top">
        <div class="title">
            <img class="logo" src="img/milk2.png" alt="">
            后台管理系统
        </div>
        <div class="user"></div>
    </div>
    <div class="left">

        <div class="inform">
            <img class="himg" src="img/长路.jpg" alt="">
            <span class="name">root</span>
        </div>

        <div class="caidan">&nbsp&nbsp菜&nbsp&nbsp单</div>

        <ul>
            <li class="list">
                <span class="fa fa-home"></span>
                <span class="word">首页</span>
            </li>
            <div class="hide"></div>
            <li class="list">
                <span class="fa fa-users"></span>
                <span class="word">用户管理</span>
                <span class="add">+</span>

            </li>
            <div class="hide hide1">
                <li class=" hideli">
                    <a target="frame" href="showuser_AdminAction" class="listA">
                        <span class="fa fa-tag"></span>
                        <span class="word">用户列表</span>
                    </a>
                </li>

            </div>
            <li class="list">

                <span class="fa fa-align-center"></span>
                <span class="word">书籍管理</span>
                <span class="add">+</span>

            </li>
            <div class="hide hide2">
                <li class=" hideli">
                    <a target="frame" href="showbook_AdminAction" class="listA">
                        <span class="fa fa-tag"></span>
                        <span class="word">书籍列表</span>
                    </a>
                </li>
                <li class=" hideli">
                    <a target="frame" href="insertbook_AdminAction" class="listA">
                        <span class="fa fa-tag"></span>
                        <span class="word">添加书籍</span>
                    </a>
                </li>
            </div>
            <li class="list">
                <span class="fa fa-search"></span>
                <span class="word">信息查询</span>
                <span class="add">+</span>

            </li>
            <div class="hide hide3">
                <li class=" hideli">
                    <a target="frame" href="后台-用户-show.html" class="listA">
                        <span class="fa fa-tag"></span>
                        <span class="word">用户信息查询</span>
                    </a>
                </li>
                <li class=" hideli">
                    <a target="frame" href="后台-用户-show.html" class="listA">
                        <span class="fa fa-tag"></span>
                        <span class="word">书籍信息查询</span>
                    </a>
                </li>

            </div>
            <li class="list">
                <span class="fa fa-cog"></span>
                <span class="word">账户管理</span>
                <span class="add">+</span>

            </li>
            <div class="hide hide4">
                <li class="hideli">
                    <a target="frame" href="后台-用户-show.html" class="listA">
                        <span class="fa fa-tag"></span>
                        <span class="word">修改密码</span>
                    </a>
                </li>

            </div>
        </ul>
    </div>
    <div class="right">
        <iframe name="frame" src="" frameborder="0"></iframe>
    </div>

    <script>
        $(() => {
            let num
            $('li').hover(function () {
                $(this).addClass('hovered')
                num = 1
            }, function () {
                $(this).removeClass('hovered')
            })


            $('.list').click(function () {
                if ($(this).next().is(':visible')) {
                    $(this).next().slideUp('show')
                    $(this).children('.add').html('+')
                } else {
                    $('.hide').slideUp('show')
                    $('li').children('.add').html('+')
                    $(this).next().slideDown('show')
                    $(this).children('.add').html('-')
                }
            })
        })

    </script>
</body>

</html>