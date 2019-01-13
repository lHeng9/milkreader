<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
 <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    
</head>
<body>
    <s:include value="../comment/header.jsp"></s:include>
    <div class="search">
        <div class="search-center">
            <img src="img/milk1.png" alt="">
            <div class="srch">
                <input type="text" name="name">
                <div class="btn">搜索</div>
            </div>
        </div>
    </div>
    <div class="top">
        <div class="main">
            <div class="wrap">
                <div class='left but'><
                </div>
                <div class='right but'>>
                </div>
                <ul>
                    <li><img src="img/1.jpg" alt=""></li>
                    <li><img src="img/2.jpg" alt=""></li>
                    <li><img src="img/3.jpg" alt=""></li>
                    <li><img src="img/4.jpg" alt=""></li>
                </ul>
                <div class="point" style="display:none;">
                    <ul>
                        <li class='on'></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>

    <div class="bom">
        <div class="bom-center">
            <div class="center-top">
                <span>新书推荐</span>
            </div>
            <div class="center-bom">
                <div class="bom1">
                    <img src="img/海胆.jpg" alt="">
                    <span class="title"> <a href="showone_BookAction?id=1">海胆</a></span>
                    <span>雷晓宇</span>
                </div>
                <div class="bom1"><img src="img/我们都是宇宙中的微尘.jpg" alt=""><span class="title"><a href="showone_BookAction?id=23">我们都是宇宙</a></span>
                    <span>雷晓宇</span></div>
                <div class="bom1"><img src="img/进击的智人.jpg" alt=""><span class="title"><a href="showone_BookAction?id=4">进击的智人</a></span>
                    <span>李银河</span></div>
                <div class="bom1"><img src="img/奈飞文化手册.jpg" alt=""><span class="title"><a href="showone_BookAction?id=5">奈飞文化手册</a></span>
                    <span>河森堡</span></div>
                <div class="bom1"><img src="img/企鹅欧洲史·追逐荣耀.jpg" alt=""><span class="title"><a href="showone_BookAction?id=24">企鹅欧洲史</a></span>
                    <span>[美] 帕蒂·麦考德</span></div>
                <div class="bom1"><img src="img/蜜蜂与远雷.jpg" alt=""><span class="title"><a href="showone_BookAction?id=9">蜜蜂与远雷</a></span>
                    <span>[英]蒂莫西·布莱宁</span></div>
                <div class="bom1"><img src="img/作家和出版人.jpg" alt=""><span class="title"><a href="showone_BookAction?id=25">作家和出版人</a></span>
                    <span>[英]扎迪·史密斯</span></div>
                <div class="bom1"><img src="img/摇摆时光.jpg" alt=""><span class="title"><a href="showone_BookAction?id=26">摇摆时光</a></span>
                    <span>肖索未</span></div>
                <div class="bom1"><img src="img/激昂的幻梦.jpg" alt=""><span class="title"><a href="showone_BookAction?id=14">激昂的幻光</a></span>
                    <span>[法] 安东尼·帕耶</span></div>
                <div class="bom1"><img src="img/神奇动物：格林德沃之罪.jpg" alt=""><span class="title"><a href="showone_BookAction?id=27">神奇动物</a></span>
                    <span>[美]理查德·德威</span></div>
                <div class="bom1"><img src="img/世界观.jpg" alt=""><span class="title"><a href="showone_BookAction?id=28">世界观</a></span>
                    <span>[英] J·K·罗琳</span></div>
                <div class="bom1"><img src="img/度外.jpg" alt=""><span class="title"><a href="showone_BookAction?id=12">度外</a></span>
                    <span>李静睿</span></div>
                <div class="bom1"><img src="img/清单.jpg" alt=""><span class="title"><a href="showone_BookAction?id=29">清单</a></span>
                    <span>[法] 法比安·努</span></div>
                <div class="bom1"><img src="img/鲤。时间胶囊.jpg" alt=""><span class="title"><a href="showone_BookAction?id=30">鲤.时间胶囊</a></span>
                    <span>[美]托马斯·林奇</span></div>
                <div class="bom1"><img src="img/欲望与尊严.jpg" alt=""><span class="title"><a href="showone_BookAction?id=8">欲望与尊严</a></span>
                    <span>[日]东野圭吾</span></div>
                <div class="bom1"><img src="img/长路.jpg" alt=""><span class="title"><a href="showone_BookAction?id=7">长路</a></span>
                    <span>[美] 科马克·麦卡锡</span></div>
            </div>
        </div>
    </div>
    <div class="footer">

    </div>

    <script>
        //操作分类
        $(".classify").hover(function(){
            $(".hov").slideDown("show")
            $(this).css({"background-color":"white"})
        },function(){
            $(".hov").css({"display":"none"})
            $(this).css({"background-color":"#E3E4E5"})
        })
        $(".hov").hover(function(){
            $(".hov").css({"display":"block"})
            $(".classify").css({"background-color":"white"})
        },function(){
            $(".hov").slideUp("show")
            $(".classify").css({"background-color":"#E3E4E5"})
        })
        var wrap = document.getElementsByClassName('wrap')[0]
        var img = wrap.getElementsByTagName('img')
        var ul = document.getElementsByTagName('ul')[0]
        var ball = document.getElementsByClassName('on')[0]
        var right = document.getElementsByClassName('right')[0]
        var left = document.getElementsByClassName('left')[0]
        var point = document.getElementsByClassName('point')[0]
        var pli = point.getElementsByTagName('li')
        var index = 0
        const len = img.length
        const imgwidth = 1230
        let tt = new Date()
        const ballstep = 40
        //点击下方小球
        for (var i = 1; i <= len; i++) {
            (function (j) {
                pli[j].onclick = function () {
                    index = j - 1
                    //小球运动
                    animation(ball, { left: index * ballstep })
                    //图片运动   
                    console.log(index)
                    animation(ul, { left: -index * imgwidth })
                }
            })(i)
        }
        //右按钮
        right.onclick = function () {
            var timer = (new Date() - tt)
            tt = new Date();
            if (timer < 500) return
            index++
            if (index > 3) index = 0
            //小球运动
            animation(ball, { left: index * ballstep })
            //图片运动   
            console.log(index)
            animation(ul, { left: -index * imgwidth })
        }
        //左按钮
        left.onclick = function () {
            var timer = (new Date() - tt)
            tt = new Date();
            if (timer < 500) return
            index--
            if (index < 0) index = len - 1
            //小球运动
            animation(ball, { left: index * ballstep })
            //图片运动   
            console.log(index)
            animation(ul, { left: -index * imgwidth })

        }
        //自动轮播
        var timer = null
        wrap.onmouseleave = function () {
            clearInterval(timer)
            timer = setInterval(function () {
                index++
                if (index > 3) index = 0
                //小球运动
                animation(ball, { left: index * ballstep })
                //图片运动   
                console.log(index)
                animation(ul, { left: -index * imgwidth })

            }, 2000)
        }
        wrap.onmouseenter = function () {
            clearInterval(timer)

        }
        //运动框架
        function animation(ele, obj = {}, time = 500) {
            var start = {}
            var end = {}
            var change = {}
            var starttime = new Date()
            var em = 'px'
            for (var prop in obj) {
                start[prop] = parseFloat(getstyle(ele)[prop])
                end[prop] = parseFloat(obj[prop])
                change[prop] = end[prop] - start[prop]
            }
            // console.log(start)
            // console.log(end)
            console.log(change)
            fun();
            function fun() {
                var t = (new Date() - starttime) / time

                if (t >= 1) {
                    t = 1;
                } else {
                    requestAnimationFrame(fun)
                }

                for (var prop in obj) {
                    var value = start[prop] + change[prop] * t
                    if (prop.toLowerCase() === 'opacity') {
                        em = ''
                    }
                    ele.style[prop] = value + em
                }
            }
        }

        function getstyle(ele) {
            return ele.currentStyle || window.getComputedStyle(ele)
        }
    </script>

</body>

</html>