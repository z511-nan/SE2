<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html " charset="UTF-8">
    <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/global.css">
    <title>Title</title>
</head>
<body>




<div class="home_top d-none d-sm-block" id="head1">
    <div class="container">
        <div class="row float-right mr-3" id="head_nav">
            <a href="index.jsp" role="button">LOGIN</a>
        </div>
    </div>
</div>
<!-- home_top end! -->
<div class="home_nav" id="home_nav">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><img src="../media/logo.png" alt="软件工程"></a>
            <div class="collapse navbar-collapse"  id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto home_top_nav">
                    <li class="nav-item active"><a class="nav-link" href="index.jsp">首页</a></li>
                    <li class="nav-item"><a class="nav-link" href="../html/introduce.html">专业介绍</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="../html/laboratory.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">实验室</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="../html/Shi%20BigData.html"><i class="fa fa-chevron-right"></i> 大数据</a>
                            <a class="dropdown-item" href="../html/Shi%20Internet%20of%20things.html"><i class="fa fa-chevron-right"></i> 物联网</a>
                            <a class="dropdown-item" href="../html/Shi%20Embedded%20type.html"><i class="fa fa-chevron-right"></i> 嵌入式</a>
                            <a class="dropdown-item" href="../html/Shi%20ios.html"><i class="fa fa-chevron-right"></i> iOS</a>
                            <a class="dropdown-item" href="../html/Shi%20android.html"><i class="fa fa-chevron-right"></i> Android</a>
                            <a class="dropdown-item" href="../html/Shi%20Intellgence.html"><i class="fa fa-chevron-right"></i> 人工智能</a>
                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="../html/Teachers.html">教师团队</a></li>
                    <li class="nav-item"><a class="nav-link" href="../html/Employment%20Guide.html">就业指南</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<!-- hoem_nav end! -->


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






<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                <header class="d-block font-weight-normal">联系我们</header>
                <address class="d-inline-flex"><span>黑龙江省哈尔滨市香坊区和兴路26号东北林业大学，成栋楼9,10#</span></address>
                <address class="d-inline-flex"><span>xxx@edu.nefu.cn</span></address>
            </div>
        </div>

        <div class="fooer_copy">
            <ul>
                <li><a href="#">首页</a></li>
                <li>Copyright &copy; 2019  web</li>
            </ul>
        </div>
    </div>
</footer>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="../js/jquery-3.4.1.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>
