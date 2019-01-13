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
        <div class="top">书籍列表</div>
        <table class="main">
            <tr>
                <th>id</th>
                <th>封面</th>
                <th>书名</th>
                <th>作者</th>
                <th>书籍类型</th>
                <th>操作</th>
            </tr>
            
            <s:iterator value="books" var="b" status="stu">
                <tr>
                    <td>${stu.getIndex()+1}</td>
                    <td><img src="img/${b.imgPath}" alt=""></td>
                    <td>${b.name}</td>
                    <td>${b.author}</td>
                    <td>${b.type}</td> 
                    <td>
                        <a href="update_BookAction?id=${b.id}" class="fa fa-wrench">
                        <a href="delete_BookAction?id=${b.id}" class="fa fa-remove">
                    </td>
                </tr>
            </s:iterator>
            
        </table>
        
    </body>
</html>