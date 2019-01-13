<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/classify.css">
 <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    
</head>
<body >
	<s:include value="../comment/header.jsp"></s:include>
    <div class="top2">
        <div class="top2-center">
			<img src="img/milk3.png" width="400px" height="50px"/>
        </div>
    </div>
    <div class="lab">
        <div class="lab-center">
            <span>${type}</span>
        </div>
    </div>
    <div class="main">
        <div class="main-center">
        <s:iterator value="books" var="b" status="stu">
            <div class="bom1"><img src="img/${b.imgPath}" alt=""><span class="title"><a href="showone_BookAction?id=${b.id}">${b.name}</a></span>
                <span>${b.author}</span></div>
        </s:iterator>
        
        </div>
    </div>
    <div class="footer">

        </div>
</body>

</html>