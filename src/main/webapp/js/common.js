$(document).ready(function() {
//返回顶部
    var pagetop_view = false;
    $(window).on('scroll', function () {
        pagetop_chk();
    });

    function pagetop_chk() {
        var media_width = window.innerWidth;
        var scroll_position = $(window).scrollTop();
        if (scroll_position > 350) {
            if (!pagetop_view) {
                $('#pagetop').addClass('active');
                pagetop_view = true;
            }
        } else {
            if (pagetop_view) {
                $('#pagetop').removeClass('active');
                pagetop_view = false;
            }
        }

    }
    pagetop_chk();
    //菜单小图标变化

    $(".header nav a").hover(function () {
        $(this).children().css("object-position","0px -2px");
    },function () {
        $(this).children().css("object-position","-9px -2px");
    })
    //灰线特效
    var subline;var newVar
    $('.header nav a').hover(
        function () {
            let xVar=$(this).offset().left;
            newVar=xVar
            // window.alert(`${xVar}`);
            $(this).children('.line').css({

                left:newVar+20
            })

            subline=$(this).children('.line').animate({


                width:140
            },200)
        }

    ,function () {
            newVar=newVar-30
            subline.animate({
                width:"0"
            },200)
        })
    //下拉导航
    var vNavWaitSlide,NavWaitSlide;
    $('#nav-base> li').hover(
        function(){
            $(this).find('a:first').addClass("hover");
            var current_li=$(this),targ=$(current_li).find('ul:first');
            NavWaitSlide = setTimeout(function() {
                if(!$(targ).is(':visible'))
                {
                    $(targ).slideDown(200);
                }
            },100)
        },
        function(){
            clearTimeout(NavWaitSlide);
            $(this).find('ul').hide();
            $(this).find('a:first').removeClass("hover");
        }
    );
    //导入新闻
    $.ajax({
        url:"/notice",
        method:"post",
        dataType:"json",
        success:function (result) {
            var list=result;
            for(var $i = 0; $i < list.length; $i++) {
                temp ="<li>"+"<a href='#'>"+"<span>"+list[$i].date+"</span>"+list[$i].info+"</a>";
                $(".important-notice ul").append(temp);
            }
            $("#jsonTable tr:not(:first)").html("");
            $("#jsonTable").append(temp);
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            // alert(XMLHttpRequest.status);//状态码
            // alert(XMLHttpRequest.readyState);//状态
            // alert(textStatus);//错误信息
        }
    })

})


