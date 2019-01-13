<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
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
<div class="nav">
        <div class="nav-center">
            <div class="center-left">
                <span class="fa fa-home "><a href="main_UserAction">首页</a></span>
                <span class="info">欢迎来到milk~</span>  
            </div>
            <div class="center-right">
            	<s:if test="#session.username==null">
                <span class="fa fa-user ">
                    <a href="loginto_UserAction">你好，请登陆</a>
                    <a class="red" href="#">免费注册</a>
                </span>
                </s:if>
                <s:else>
                	<span class="fa fa-user ">
                    
                    欢迎<a class="" href="#">${session.username}</a>
                    
                </span>
                </s:else>
                <span class="fa fa-align-justify classify"><a href="#">书籍分类</a></span>
                
                
                <span class="fa fa-align-left "><a href="#">我的书架</a></span>
            </div>
        </div>
    </div>
    <div class="hov" style="left:1060px">
        			<div class="title">分类</div>
        			<li> <a href="classify_BookAction?typeid=1">文学</a></li>
        			<li> <a href="classify_BookAction?typeid=2">流行</a></li>
        			<li> <a href="classify_BookAction?typeid=3">文化</a></li>
        			<li> <a href="classify_BookAction?typeid=4">生活</a></li>
       			 	<li> <a href="classify_BookAction?typeid=5">经管</a></li>
       			 	<li> <a href="classify_BookAction?typeid=6">科技</a></li>
    			</div>
    
    
    <script>
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
    </script>
</body>
</html>