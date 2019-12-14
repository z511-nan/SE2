$(function() {
    $('.l-gnav__trigger').click(function(){
        $('html').removeClass('is-open-language');
        if ($('html').hasClass('is-open')){
            $('html').removeClass('is-open');
        } else {
            $('html').removeClass('is-open');
            $('html').toggleClass('is-open');
        }
    });

    $('.l-header__language').click(function(){
        $('html').removeClass('is-open');
        if ($('html').hasClass('is-open-language')){
            $('html').removeClass('is-open-language');
        } else {
            $('html').removeClass('is-open-language');
            $('html').toggleClass('is-open-language');
        }
    });

    $('.c-category-nav__title').click(function(){
        if ($('.c-category-nav').hasClass('is-open')){
            $('.c-category-nav').removeClass('is-open');
        } else {
            $('.c-category-nav').removeClass('is-open');
            $('.c-category-nav').toggleClass('is-open');
        }
    });
    $('.c-category-nav__title').on('keyup', function(eKeyup){
        if(eKeyup.keyCode === 13) {
            if ($('.c-category-nav').hasClass('is-open')){
                $('.c-category-nav').removeClass('is-open');
            } else {
                $('.c-category-nav').removeClass('is-open');
                $('.c-category-nav').toggleClass('is-open');
            }
        }
    });
    $('.toggle .close').click(function(){
        if ($('.toggle').hasClass('is-open')){
            $('.toggle').removeClass('is-open');
        } else {
            $('.toggle').removeClass('is-open');
            $('.toggle').toggleClass('is-open');
        }
    });
    $('.p-qa__box-list dt').click(function(){
        $(this).next().slideToggle();
        $(this).parent().toggleClass('is-open');
    });
    $('.p-qa__box-list dt').on('keyup', function(eKeyup){
        if(eKeyup.keyCode === 13) {
          $(this).next().slideToggle();
          $(this).parent().toggleClass('is-open');
        }
    });
    $('.p-top-en__banner-button').click(function(){
        if ($('.p-top-en__banner').hasClass('is-open')){
            $('.p-top-en__banner').removeClass('is-open');
        } else {
            $('.p-top-en__banner').removeClass('is-open');
            $('.p-top-en__banner').toggleClass('is-open');
        }
    });

    $(".l-header__language .is-open").on("click", function() {
        $(this).next().slideToggle();
    });


    $('a.scroll').click(function() {
        var speed = 400;
        var href= $(this).attr("href");
        var target = $(href == "#" || href == "" ? 'html' : href);
        var position = target.offset().top;
        $('body,html').animate({scrollTop:position}, speed, 'swing');
        return false;
    });

    $('.p-top-main .p-slider-pc').slick({
        dots: true,
        arrows: false,
        autoplay: true,
        fade: true,
        autoplaySpeed: 4000,
        pauseOnDotsHover: false,
        pauseOnHover: false,
        lazyLoad: "progressive",
        appendDots: $('.p-top-main.u-pc-block .p-slider-pager')
    });

    $('.p-top-main .p-slider-sp').slick({
        dots: true,
        arrows: false,
        autoplay: true,
        fade: true,
        autoplaySpeed: 4000,
        pauseOnDotsHover: false,
        pauseOnHover: false,
        lazyLoad: "progressive",
        appendDots: $('.p-top-main.u-sp-block .p-slider-pager')
    });

    $('.p-news-top__slider .p-slider-pc').slick({
        dots: true,
        arrows: false,
        autoplay: true,
        fade: true,
        autoplaySpeed: 4000,
        pauseOnDotsHover: false,
        pauseOnHover: false,
        lazyLoad: "progressive",
        appendDots: $('.p-news-top__slider .p-slider-pager')
    });

    var stopBtn = $('<button id="tglBtn"><span id="startBtn">再生</span><span id="stopBtn">停止</span></button>');
    stopBtn.insertAfter('.p-top-main.u-pc-block .p-slider-pager');
    $('.p-top-main.u-pc-block  #startBtn').hide();
    var flg = "play";
    $('.p-top-main.u-pc-block  #tglBtn').click(function(){
        $('.p-top-main.u-pc-block  #startBtn').toggle();
        if(flg == "play") {
            $('.p-top-main.u-pc-block  #startBtn').show();
            $('.p-top-main.u-pc-block  #stopBtn').hide();
            flg = "stop";
            $('.p-slider-pc').slick('slickPause');
        } else {
            $('.p-top-main.u-pc-block  #startBtn').hide();
            $('.p-top-main.u-pc-block  #stopBtn').show();
            flg = "play";
            $('.p-slider-pc').slick('slickPlay');
        }
    });

    var stopBtnSp = $('<button id="tglBtn"><span id="startBtn">再生</span><span id="stopBtn">停止</span></button>');
    stopBtnSp.insertAfter('.p-top-main.u-sp-block .p-slider-pager');
    $('.p-top-main.u-sp-block #startBtn').hide();
    var flg = "play";
    $('.p-top-main.u-sp-block #tglBtn').click(function(){
        $('.p-top-main.u-sp-block #startBtn').toggle();
        if(flg == "play") {
            $('.p-top-main.u-sp-block #startBtn').show();
            $('.p-top-main.u-sp-block #stopBtn').hide();
            flg = "stop";
            $('.p-slider-sp').slick('slickPause');
        } else {
            $('.p-top-main.u-sp-block #startBtn').hide();
            $('.p-top-main.u-sp-block #stopBtn').show();
            flg = "play";
            $('.p-slider-sp').slick('slickPlay');
        }
    });

    var stopBtnNews = $('<button id="tglBtn"><span id="startBtn">再生</span><span id="stopBtn">停止</span></button>');
    stopBtnNews.insertAfter('.p-news-top__slider .p-slider-pager');
    $('.p-news-top__slider  #startBtn').hide();
    var flg = "play";
    $('.p-news-top__slider  #tglBtn').click(function(){
        $('.p-news-top__slider  #startBtn').toggle();
        if(flg == "play") {
            $('.p-news-top__slider  #startBtn').show();
            $('.p-news-top__slider  #stopBtn').hide();
            flg = "stop";
            $('.p-slider-pc').slick('slickPause');
        } else {
            $('.p-news-top__slider  #startBtn').hide();
            $('.p-news-top__slider  #stopBtn').show();
            flg = "play";
            $('.p-slider-pc').slick('slickPlay');
        }
    });

    $(".l-gnav__item-01").hover(
        function () {
            $('body').addClass('is-sub-menu-open-01');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-01');
        }
    );

    $('.l-gnav__item-01')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-01');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-01');
    });


    $(".l-gnav__item-02").hover(
        function () {
            $('body').addClass('is-sub-menu-open-02');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-02');
        }
    );

    $('.l-gnav__item-02')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-02');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-02');
    });

    $(".l-gnav__item-03").hover(
        function () {
            $('body').addClass('is-sub-menu-open-03');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-03');
        }
    );

    $('.l-gnav__item-03')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-03');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-03');
    });


    $(".l-gnav__item-04").hover(
        function () {
            $('body').addClass('is-sub-menu-open-04');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-04');
        }
    );

    $('.l-gnav__item-04')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-04');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-04');
    });

    $(".l-gnav__item-05").hover(
        function () {
            $('body').addClass('is-sub-menu-open-05');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-05');
        }
    );

    $('.l-gnav__item-05')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-05');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-05');
    });

    $(".l-gnav__item-06").hover(
        function () {
            $('body').addClass('is-sub-menu-open-06');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-06');
        }
    );

    $('.l-gnav__item-06')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-06');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-06');
    });

    $(".l-gnav__item-07").hover(
        function () {
            $('body').addClass('is-sub-menu-open-07');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-07');
        }
    );

    $('.l-gnav__item-07')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-07');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-07');
    });


    $(".l-gnav__item-08").hover(
        function () {
            $('body').addClass('is-sub-menu-open-08');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-08');
        }
    );

    $('.l-gnav__item-08')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-08');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-08');
    });

    $(".l-gnav__item-09").hover(
        function () {
            $('body').addClass('is-sub-menu-open-09');
        },
        function () {
            $('body').toggleClass('is-sub-menu-open-09');
        }
    );

    $('.l-gnav__item-09')
        .focusin(function(e) {
        $('body').addClass('is-sub-menu-open-09');
    })
        .focusout(function(e) {
        $('body').toggleClass('is-sub-menu-open-09');
    });

    //$('.is-scrollbar').perfectScrollbar({
    //    wheelSpeed: .5
    //});

    $(document).on('opened', '.remodal', function () {
      $('.remodal-is-opened a').eq(0).focus();
    });
    $('#map .remodal-close').on('keydown', function(e){
      if(e.keyCode === 9) {
        $('#map').eq(0).focus();
      }
    });
    $('#kashiwaMap a').on('keydown', function(eDouble){
      if(eDouble.shiftKey && eDouble.keyCode === 9) {
        $('.remodal-close').focus();

        return false;
      }
    });
    $('#map #closeMap a').on('keydown', function(eDouble){
      if(eDouble.shiftKey && eDouble.keyCode === 9) {
        $('#campusGuideLink a').focus();

        return false;
      }
    });

    $('#map1 .remodal-close').on('keydown', function(e){
      if(e.shiftKey && e.keyCode === 9) {
        $('#campusGuideLinkKashiwa a').focus();
        return false;
      } else if(e.keyCode === 9) {
        $('#map1 a').eq(0).focus();
        return false;
      }
    });
    $('#map1 #btnBack1 a').on('keydown', function(eDouble){
      if(eDouble.shiftKey && eDouble.keyCode === 9) {
        $('#closeMapKashiwa a').focus();

        return false;
      }
    });


    $('#map2 .remodal-close').on('keydown', function(e){
      if(e.shiftKey && e.keyCode === 9) {
        $('#campusGuideLinkHongo a').focus();
        return false;
      } else if(e.keyCode === 9) {
        $('#map2 a').eq(0).focus();
        return false;
      }
    });
    $('#map2 #btnBack2 a').on('keydown', function(eDouble){
      if(eDouble.shiftKey && eDouble.keyCode === 9) {
        $('#closeMapHongo a').focus();

        return false;
      }
    });


    $('#map3 .remodal-close').on('keydown', function(e){
      if(e.shiftKey && e.keyCode === 9) {
        $('#campusGuideLinkKomaba a').focus();
        return false;
      } else if(e.keyCode === 9) {
        $('#map3 a').eq(0).focus();
        return false;
      }
    });
    $('#map3 #btnBack3 a').on('keydown', function(eDouble){
      if(eDouble.shiftKey && eDouble.keyCode === 9) {
        $('#closeMapKomaba a').focus();

        return false;
      }
    });
});

$(document).ready(function(){
    var topBtn = $('.c-pagetop');
    topBtn.hide();
    $(window).scroll(function(){
        if($(this).scrollTop() > 120){
            topBtn.fadeIn();
        }else{
            topBtn.fadeOut();
        }
    });
    topBtn.click(function () {
        $('body,html').animate({
            scrollTop: 0
        },500);
        return false;
    });
});

$(window).scroll(function(){
    var testWindowHeight = $(window).height(),
        testTopWindow = $(window).scrollTop(),
        targetPosition;
    $('.is-trigger').each(function(){
        targetPosition = $(this).offset().top;
        if(testTopWindow > targetPosition - testWindowHeight + 50){
            $(this).addClass("p-side-up");
        }
    });
});