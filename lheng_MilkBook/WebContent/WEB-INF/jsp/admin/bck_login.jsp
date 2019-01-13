<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
  <link rel="stylesheet" href="css/bck_login.css">

</head>
<body>
	 <form action="login_AdminAction" method="post" class="main">
        
        <img class="bgc" src="img/adminlogin.jpg" alt="">
        <div class="box">
            <span class="title">AdminLogin</span>
            <div class="text text1">
                <input class="txt" type="text" name="name" placeholder="用户名">
                <span class="fa fa-user"></span>
            </div>
            <div class="text text2">
                <input class="txt" type="password" name="psw" placeholder="密&nbsp&nbsp&nbsp&nbsp码">
                <span class="fa fa-lock"></span>
            </div>

            <input class="text text3" type="submit" value="Login">
        </div>
    </form>
</body>
</html>