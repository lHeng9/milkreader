<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    <div class="top">修改书籍</div>
    <div class="main">
        <form action="updateBookAction" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>书名：</td>
                <td>
                    <input type="text" name="name" id="" value=${name } />>
                </td>
            </tr>
            <tr>
                <td>作者：</td>
                <td>
                    <input type="text" name="author" id="" value="<s:property value="author" />">
                </td>
            </tr>
            
            <tr>
                <td>书籍类型：<s:property value="type" /></td>
                <td>
                    <select name="typeid" id="">
                        <option value="0">请选择书籍类型</option>
                        <option value="1">文学</option>
                        <option value="2">流行</option>
                        <option value="3">文化</option>
                        <option value="4">生活</option>
                        <option value="5">经管</option>
                        <option value="6">科技</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>简介：</td>
                <td>
                    <textarea name="intor" id="" cols="30" rows="10" value=<s:property value="intor" />></textarea>
                </td>
            </tr>
            <tr>
                <td>封面：</td>
                <td>
                    <input type="file" name="img" id="">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="提交">
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>

</html>