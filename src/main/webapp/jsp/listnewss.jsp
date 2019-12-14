<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html " charset="UTF-8">
    <script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/global.css">
    <title>Title</title>
</head>
<body>

<div class="header_index"></div>


<form action="/addnews" method="post">
    新建公告：<br>
    标题：<input name="title" required><br />
    内容：<textarea required name="content"></textarea><br>
    <button type="submit">添加</button><br>
</form>



</form>
<form action="/deletenews" method="post">
    删除公告：
    <select name="id">
        <c:forEach items="${newss }" var="u">
            <option value="${u.id }">${u.title }</option>
        </c:forEach>
    </select>
    <button type="submit">删除</button><br>
</form>


<form action="/updatenews" method="post">
    更改公告：
    <select name="id">
        <c:forEach items="${newss }" var="u">
            <option value="${u.id }">${u.title }</option>
        </c:forEach>
    </select>
    更改内容：<input name="content" required><br />
    <button type="submit">更新</button><br>
</form>



所有新闻
<table>
    <tr>
        <td>#</td>
        <td>标题</td>
        <td>内容</td>
        <td>时间</td>
    </tr>
    <c:forEach items="${newss }" var="t" varStatus="s">
        <tr>
            <td>${s.count }</td>
            <td><a href="/getnews?id=${t.id }">${t.title }</a></td>
            <td><a href="/getnews?id=${t.id }">${t.content }</a></td>
            <td><fmt:formatDate
                    pattern="yyyy-MM-dd HH:mm"
                    value="${t.inserttime}"/></td>
        </tr>
    </c:forEach>
</table>






<div class="footer_index"></div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="../js/jquery-3.4.1.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script>
    $(".header_index").load("header.html")
    $(".footer_index").load("footer.html")
</script>
</body>
</html>
