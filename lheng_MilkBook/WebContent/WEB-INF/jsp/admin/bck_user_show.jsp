<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="css/bck_user_show.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
 	
</head>
<body>
    <div class="top">用户列表</div>
    <table class="main">
        <tr>
            <th>id</th>
            <th>头像</th>
            <th>用户名</th>
            <th>密码</th>
            <th>用户的书架</th>
            <th>操作</th>
        </tr>
        
        <s:iterator value="users" var="u" status="stu">
        	<tr>
        		<td>${stu.getIndex()+1}</td>
        		<td><img src="${u.img}" alt=""></td>
        		<td>${u.name}</td>
        		<td>${u.psw}</td>
        		<td><a href="">书架</a></td>
        		<td>
        			<a href="" class="fa fa-wrench">
        			<a href="" class="fa fa-remove">
        		</td>
        	</tr>
        </s:iterator>
        
    </table>
</body>

</html>