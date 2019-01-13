<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="css/login.css">

</head>

<body>
<div class="hover"></div>
    <div class="top">
        <div class="title">
            <img width="100px" height="50px" alt="" src="img/milk2.png">
        </div>
    </div>
    <img src="img/books.jpg" class="bcg" alt="">
    <div class="login">
        <s:fielderror>
            <s:property value="loginerror" />
        </s:fielderror>
        <form action="login_UserAction" method="post">
            <div class="tmp username">
                <span class="fa fa-user"></span>
                <input class="text" type="text" name="name" placeholder="用户名">
            </div>
            <div class="tmp pwd">
                <span class="fa fa-lock"></span>
                <input class="text" type="password" name="psw" placeholder="密码"><br>
            </div>
            <input class="btn" type="submit" value="登&nbsp&nbsp陆">
            <a class="reg" href="insertUser.jsp">注册</a>
        </form>
    </div>
</body>
</html>