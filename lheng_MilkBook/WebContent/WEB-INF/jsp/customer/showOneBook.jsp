<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/showOneBook.css">
<link rel="stylesheet" href="css/main.css">
 <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    
</head>
<body >
	<s:include value="../comment/header.jsp"></s:include>
    
    <div class="top2">
        <div class="top2-center">
            <img src="img/milk3.png" alt="">
        </div>
    </div>
    <div class="showbook">
        <div class="showbook-center">
            <div class="showb center-left">
                <img src="img/${book.imgPath}" alt="">
            </div>
            <div class="showb center-mid">
                <div class="book">
                    <table>
                        <tr>
                            <td class="param">书名：</td>
                            <td>${book.name}</td>
                        </tr>
                        <tr>
                            <td class="param">作者：</td>
                            <td>${book.author}</td>
                        </tr>
                        <tr>
                            <td class="param">类型：</td>
                            <td>${book.type}</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            	
                               
                            	<a href="#"><div class="add">加入书架</div></a>
                            	
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="showb center-right">
                <div class="tit">书籍简介</div>
                <div class="info">${book.intor}</div>
            </div>
        </div>
    </div>
    <div class="recommend">
        <div class="recomd-center">
            <div class="recomd-tit">
                同类推荐
            </div>
            <div class="recomd-books">
            <s:iterator value="books" var="b" status="stu">
            	<s:if test="%{#stu.getIndex()<=5}">
            	<div class="bom1"><img src="img/${b.imgPath}" alt=""><span class="title"><a href="showone_BookAction?id=${b.id}">${b.name}</a></span>
                <span>${b.author}</span></div>
                
                </s:if>
        	</s:iterator>
            </div>
        </div>
    </div>
    
<script>
    $('.add').click(function(){
        $(this).css({"background-color":"gray"})
        $(this).html("已填加")
    })
</script>
</body>

</html>