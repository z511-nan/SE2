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
    <link rel="stylesheet" href="../css/css.css">
    <link rel="stylesheet" href="../css/news.css">
    <title>东北林业大学软件工程专业</title>
</head>
<body>

<div class="header_index"></div>


<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="images/donglin1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="images/donglin2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="images/donglin3.jpg" alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<div class="area clearfix">
    <div style="width: 100%" class="index_a1">
        <div class="about">
            <div class="index_f1">
                <div class="about-title">
                    <span><a href=""><img src="images/more.jpg" width="40" height="14"></a></span>
                    <h3>专业简介 <font color="#f88000">Major</font></h3>
                </div>
            </div>
            <div style="margin-left: 20px" class="index_f2">
                <p style="font-size: 14px"><img src="images/xiaoxun.png" width="132"
                                                height="92" align="left" style="padding-right:10px;">　软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应......</p>
            </div>
        </div>
        <div class="news">

            <div class="index_f1">
                <div class="about-title">
                    <span><a href=""><img src="images/more.jpg" width="40" height="14"></a></span>
                    <h3>新闻公告 <font color="#f88000">News</font></h3>
                </div>
            </div>

            <div id="divCount1">
                <ul class="index_c3">
                    <c:forEach items="${notices}" var="n">
                        <li><span>${n.date}</span><a title=${n.info}href="#"></a> </li>
                    </c:forEach>
                </ul>
            </div>


        </div>
        <div style="width: 247px" class="index_b2">
            <div class="contact">
                <div class="index_f11">
                    <div class="about-title1">
                        <span><a href=""><img src="images/more.jpg" width="40" height="14"></a></span>
                        <h3>相关咨询 <font color="#f88000">Contact</font></h3>
                    </div>
                </div>

                <p class="lxwm" style="font-size: 14px">

                    联系人：张老师<br/>电话：0536-6666666<br/>手机:1388888888<br/>邮编：54455446456<br/>网址：xxxxxxxxxx
                </p>

            </div>
        </div>
    </div>
</div>



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
