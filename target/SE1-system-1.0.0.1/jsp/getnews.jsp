<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/13
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html " charset="UTF-8">
    <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/global.css">
    <title>Title</title>


    <style type="text/css">
        #banner {
            margin: 100px 0 0px 190px;
            grid-area: banner;
            position: relative;
            width:1500px;
            height:750px ;
            border: 1px solid #666;
            overflow: hidden;
            border-radius: 40px;

        }

        #banner_list img {
            overflow: hidden;
        }

        #banner_bg {
            position: absolute;
            bottom: 0;
            background-color: #000;
            height: 30px;
            filter: Alpha(Opacity=30);
            opacity: 0.3;
            z-index: 1000;
            cursor: pointer;
            width: 478px;
        }

        #banner_info {
            position: absolute;
            bottom: 0;
            left: 5px;
            height: 22px;
            color: #fff;
            z-index: 1001;
            cursor: pointer
        }

        #banner_text {
            position: absolute;
            width: 120px;
            z-index: 1002;
            right: 3px;
            bottom: 3px;
        }

        #banner ul {
            position: absolute;
            list-style-type: none;
            filter: Alpha(Opacity=80);
            opacity: 0.8;
            z-index: 1002;
            margin: 0;
            padding: 0;
            bottom: 3px;
            right: 5px;
        }

        #banner ul li {
            padding: 0 4px;
            float: left;
            display: block;
            color: #FFF;
            background: #6f4f67;
            cursor: pointer;
            border: 1px solid #333;
        }

        #banner ul li.on {
            background-color: #000;
        }

        #banner_list a {
            position: absolute;
        }


        #footer{
            /*margin: 1000px 0 0 0;*/
        }
    </style>


</head>
<body>
<div class="home_top d-none d-sm-block" id="head1">
    <div class="container">
        <div class="row float-right mr-3" id="head_nav">
            <a href="#" role="button">LOGIN</a>
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
                    <li class="nav-item active"><a class="nav-link" href="#">首页</a></li>
                    <li class="nav-item"><a class="nav-link" href="../html/#">专业介绍</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">实验室</a>
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




<div id="banner">
    <div id="banner_info">

    </div>
    <ul>
        <li class="on">
            1
        </li>
        <li>
            2
        </li>
        <li>
            3
        </li>
        <%--        <li>--%>
        <%--            4--%>
        <%--        </li>--%>
    </ul>
    <div   id="banner_list">
        <a href="#" target="_blank" style="width: 100%;display: block;"><img src="../media/summer.jpg" style="display:block;width: 100%"></a>
        <a href="#" target="_blank" style="width: 100%;display: block;"><img src="../media/autumn.jpg" style="display: block;width: 100%"></a>
        <a href="#" target="_blank" style="width: 100%;display: block;"><img src="../media/winter.jpg" style="display: block;width: 100%"></a>
        <%--        <a href="#" target="_blank" style="width: 100%;display: block;"><img src="../media/spring.jpg" style="display: block;width: 100%"></a>--%>
    </div>
</div>





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





<script type="text/javascript">
    var t = n = 0,
        count;
    $(document).ready(function() {
        // 获取图片标签长度
        count = $("#banner_list a").length;
        // 不是当前显示的图片隐藏
        $("#banner_list a:not(:first-child)").hide();
        // 点击下面的1234按钮，切换图片
        $("#banner li").click(function() {
            var i = $(this).text() - 1;
            n = i;
            if (i >= count) return;
            // 淡入淡出效果
            $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);

            // 响应点击
            $(this).toggleClass("on");

            // 切换按钮的时候让上一个按钮回归原来的样式
            $(this).siblings().removeAttr("class");
        });
        t = setInterval("showAuto()", 4000);
        $("#banner").hover(function() {
                clearInterval(t)
            },
            function() {
                t = setInterval("showAuto()", 4000);
            });
    })
    // 自动轮播
    function showAuto() {
        n = n >= (count - 1) ? 0 : ++n;
        $("#banner li").eq(n).trigger('click');
    }
</script>
