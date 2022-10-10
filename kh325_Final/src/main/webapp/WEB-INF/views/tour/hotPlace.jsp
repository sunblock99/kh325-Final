<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Directory Theme by Bootstrapious</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>

<style>
    /* 배경 원 */
    
    .hot-circle {
        background-size: 900px 900px;
        z-index: 50;
        background-image: url("/html/image/hotPlaceBackCircle.png");
        background-repeat: no-repeat;
        background-position-x: -630px;
        background-position-y: 100px;
    }
    
    .hot-circle2 {
        background-size: 400px 400px;
        z-index: -100;
        background-image: url("/html/image/hotPlaceBackCircle.png");
        background-repeat: no-repeat;
        background-position-x: 1700px;
        background-position-y: 900px;
    }
    /*폰트 적용*/
    
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(font/Pretendard-Black.ttf);
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url(font/Pretendard-ExtraBold.ttf);
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(font/Pretendard-Bold.ttf);
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(font/Pretendard-SemiBold.ttf);
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(font/Pretendard-Medium.ttf);
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        src: url(font/Pretendard-Regular.ttf);
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(font/Pretendard-Light.ttf);
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(font/Pretendard-ExtraLight.ttf);
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(font/Pretendard-Thin.ttf);
    }
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
    /*폰트 끝*/
</style>


<header class="header header-absolute" style="font-size:30px;">
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
        <div class="container-fluid">
            <div class="d-flex align-items-center">

                <!-- 로고 시작 -->
                <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                    <img class="ps-3" src="./image/togetherLogo.png" width="30%" height="10%">
                </a>
                <!-- 로고 끝-->

                <!-- 공간활용 용도-->
                <div class="input-label-absolute input-label-absolute-left
          input-expand ms-lg-2 ms-xl-3"></div>
            </div>

            <!-- =============== 메뉴바 영역 =============== -->
            <div class="collapse navbar-collapse px-6 " id="navbarCollapse" style="font-family: pL;">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link-header-black" id="homeDropdownMenuLink" href="index.html" aria-haspopup="true" aria-expanded="false">홈</a>
                    </li>

                    <!-- 상단바메뉴 시작 -->
                    <li class="nav-item position-static">
                        <li class="nav-item dropdown">
                            <a class="nav-link-header-black dropdown-toggle me-3" id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                관광정보</a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink" style="font-family: pB;">
                                <h6 class="dropdown-header fw-normal" style="font-family:
                  pB;">관광정보</h6>
                                <a class="hvr dropdown-item" href="docs/docs-introduction.html">HOT PLACE </a>
                                <a class="hvr dropdown-item" href="docs/docs-directory-structure.html">관광지 정보</a>
                                <a class="hvr dropdown-item" href="docs/docs-gulp.html">지역별
                  축제ㅣ행사 </a>
                                <a class="hvr dropdown-item" href="docs/docs-customizing-css.html">날짜별 축제ㅣ행사</a>
                            </div>
                        </li>
                    </li>

                    <li class="nav-item"><a class="nav-link-header-black" href="contact.html">커뮤니티</a></li>
                    <li class="nav-item">
                        <a class="nav-link-header-black" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a></li>

                    <!-- <li class="nav-item"><a class="nav-link-header-black" href="login.html">로그인</a></li> -->

                    <!-- 일반회원 로그인 성공 시 -->
                    <!-- <li class="nav-item dropdown"><a class="nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink"
            href="login.html"data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            곰발바닥 님</a>
            <div class="dropdown-menu dropdown-menu-end"
                aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                <a class="hvr dropdown-item"
                  href="docs/docs-introduction.html">마이페이지</a>
                <a class="hvr dropdown-item"
                  href="docs/docs-directory-structure.html">로그아웃</a>
            </div>
          </li> -->

                    <!-- 관리자 로그인 성공 시 -->
                    <li class="nav-item dropdown"><a class="nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink" href="login.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            곰발바닥 님</a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink" style="font-family: pB;">
                            <a class="hvr dropdown-item" href="docs/docs-introduction.html">마이페이지</a>
                            <a class="hvr dropdown-item" href="docs/docs-introduction.html">관리자페이지</a>
                            <a class="hvr dropdown-item" href="docs/docs-directory-structure.html">로그아웃</a>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <!-- 상단바메뉴 끝 -->
    <!-- =============== 메뉴바 영역 끝 =============== -->
</header>

<!--  style="background-image: url(/html/image/hotPlaceBackCircle.png); background-repeat: no-repeat;" -->

<body class="hot-circle2">
    <section class="hot-circle" style="background-color: #ffddb688;">
        <div class="container py-4 pt-7">
            <div class="container-typing row">

                <!-- 타이핑 -->
                <div class="col-lg-7 mb-md-0" style="margin-top:15vh;">
                    <p class="fs-4 text-muted pb-3">지금 떠오르는 핫스팟을 투게더에서 확인 해보세요!</p>
                    <div class="display-4">
                        <p style="font-family: pEb;">현재 많은 이들이 찾고 있는 곳은? <br></p>
                        <p class="mt-4">
                            <span style="font-family: pB;" class="typed-text"></span>
                            <span class="cursor">&nbsp;</span>

                            <!-- 타이핑 띠 -->
                            <div class="progress rounded-0" style="height: 8px; top: 72px;">
                                <div class="progress-bar" role="progressbar" style="width: 0px;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>

                        </p>
                    </div>

                    <!-- 버튼 -->
                    <div class="row pt-lg-5 mb-3" style="font-family: pR; font-size: 25px; line-height:45px;">
                        <div class="col-lg-3 d-grid me-0" style="text-align:center;">
                            <div class="wrapper-switch w-100">
                                <input type="checkbox" id="switch-1">
                                <label for="switch-1" class="switch_label">
                      <span style="font-family: pB; font-size: 25px; line-height:45px;">관광지</span>
                    </label>
                            </div>
                        </div>
                        <div class="col-lg-3 d-grid me-0" style="text-align:center;">
                            <div class="wrapper-switch w-100">
                                <input type="checkbox" id="switch-2">
                                <label for="switch-2" class="switch_label">
                      <span style="font-family: pB; font-size: 25px; line-height:45px;">음식점</span>
                    </label>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 공간활용 -->
                <div class="col-1"></div>

                <!-- 사진 -->
                <div class="col-md-3">
                    <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
                        <div class="d-flex">
                            <div class="dark-overlay mytour-size ps-7 pe-7 pb-3 pt-6 card shadow-lg border-0 border-0 hover-animate" style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=d9fa86a0-cddf-4f5a-a3ae-97e83f5d4039);">
                                <a class="tile-link" href="category.html"> </a>
                                <div class="z-index-50 d-flex h-100 text-white justify-content-center py-6 py-lg-7">
                                    <h3 class="mb-0" style="font-family: pB;">제주도 감귤 마을</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진 끝 -->
            </div>
        </div>

        <!-- 구분선  -->
        <!-- <div class="progress-ver2" style="height: 8px; top: 32px;">
        <div class="progress-bar rounded-0" role="progressbar" style="background-color: #dd7632ae;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
      </div> -->


        <!----------------- 핫플레이스 swiper ----------------->
        <section class="col-12 py-3" style="background-color: #ffffff8b;">
            <div class="px-7 me-5 mt-6 swiper-container swiper-container-hot swiper-init justify-content-center" data-swiper='{"slidesPerView":4,"spaceBetween":1,"loop":false,"roundLengths":true,
                      "breakpoints":{"991":{"slidesPerView":2},"565":{"slidesPerView":1}},
                      "pagination":{"el":".swiper-pagination","clickable":true,"dynamicBullets":true}}'>

                <div class="fs-3 ms-5 ps-2 align-items-center" style="font-family: 'pB'; color: #221b13;">
                    TOGETHER 이용자들의 많은 선택을 받은 곳은?</div>

                <!-- 핫플레이스 영역 -->
                <div class="container-hotplace swiper-wrapper pb-5 mb-6 pt-4">

                    <!-- 핫플레이스 카드 시작 -->
                    <div class="swiper-slide h-auto px-2">
                        <article class="card-list">
                            <!-- 배경이미지  -->
                            <div class="gradient-overlay-img" style="background-image: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b66fa315-a169-4653-a49f-334e209a4c2d); cursor:pointer;
                    height: auto; width: auto;" onclick="">
                                <div class="card-list__img">
                                    <a href="#" class="card-list_link"></a>
                                </div>

                                <!-- 소개 정보 -->
                                <div class="card-list__info">
                                    <a href="#" class="a-hot-title">
                                        <span class="card-list__category card-list__category-hover" style="font-family:pB; font-size:15px;"> 관광지</span>
                                        <h3 class="card-list__title card-list__title-hover" style="font-family:pB">무릉계곡</h3>
                                        <span class="card-list__by card-list__by-hover a-hot-loc" style="font-family:pB; font-size:15px;">
                          <span style="color: rgba(255, 178, 105, 0.63);">in </span>강원 동해시</span>
                                    </a>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- 핫플레이스 카드 시작 -->
                    <div class="swiper-slide h-auto px-2">
                        <article class="card-list">
                            <!-- 배경이미지  -->
                            <div class="gradient-overlay-img" style="background-image: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=dcbcbb70-d517-4030-aa22-bea271ae3f81); cursor:pointer;
                    height: auto; width: auto;" onclick="">
                                <div class="card-list__img">
                                    <a href="#" class="card-list_link"></a>
                                </div>

                                <!-- 소개 정보 -->
                                <div class="card-list__info">
                                    <a href="#" class="a-hot-title">
                                        <span class="card-list__category card-list__category-hover" style="font-family:pB; font-size:15px;"> 관광지</span>
                                        <h3 class="card-list__title card-list__title-hover" style="font-family:pB">하이커 그라운드</h3>
                                        <span class="card-list__by card-list__by-hover a-hot-loc" style="font-family:pB; font-size:15px;">
                        <span style="color: rgba(255, 178, 105, 0.63);">in </span>서울 중구</span>
                                    </a>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- 핫플레이스 카드 시작 -->
                    <div class="swiper-slide h-auto px-2">
                        <article class="card-list">
                            <!-- 배경이미지  -->
                            <div class="gradient-overlay-img" style="background-image: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=8a46f7e9-2b47-4368-ad9f-63de639fb29b); cursor:pointer;
                    height: auto; width: auto;" onclick="">
                                <div class="card-list__img">
                                    <a href="#" class="card-list_link"></a>
                                </div>

                                <!-- 소개 정보 -->
                                <div class="card-list__info">
                                    <a href="#" class="a-hot-title">
                                        <span class="card-list__category card-list__category-hover" style="font-family:pB; font-size:15px;"> 관광지</span>
                                        <h3 class="card-list__title card-list__title-hover" style="font-family:pB">여수 해상케이블카</h3>
                                        <span class="card-list__by card-list__by-hover a-hot-loc" style="font-family:pB; font-size:15px;">
                        <span style="color: rgba(255, 178, 105, 0.63);">in </span>전남 여수시</span>
                                    </a>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- 핫플레이스 카드 시작 -->
                    <div class="swiper-slide h-auto px-2">
                        <article class="card-list">
                            <!-- 배경이미지  -->
                            <div class="gradient-overlay-img" style="background-image: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=f18752c9-7718-4ef6-a42e-cc01b8e2c9e8); cursor:pointer;
                    height: auto; width: auto;" onclick="">
                                <div class="card-list__img">
                                    <a href="#" class="card-list_link"></a>
                                </div>

                                <!-- 소개 정보 -->
                                <div class="card-list__info">
                                    <a href="#" class="a-hot-title">
                                        <span class="card-list__category card-list__category-hover" style="font-family:pB; font-size:15px;"> 관광지</span>
                                        <h3 class="card-list__title card-list__title-hover" style="font-family:pB">창경궁</h3>
                                        <span class="card-list__by card-list__by-hover a-hot-loc" style="font-family:pB; font-size:15px;">
                        <span style="color: rgba(255, 178, 105, 0.63);">in </span>서울 종로구</span>
                                    </a>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- 핫플레이스 카드 시작 -->
                    <div class="swiper-slide h-auto px-2">
                        <article class="card-list">
                            <!-- 배경이미지  -->
                            <div class="gradient-overlay-img" style="background-image: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=feedfbab-9ac2-4772-9434-be448ccac512); cursor:pointer;
                    height: auto; width: auto;" onclick="">
                                <div class="card-list__img">
                                    <a href="#" class="card-list_link"></a>
                                </div>

                                <!-- 소개 정보 -->
                                <div class="card-list__info">
                                    <a href="#" class="a-hot-title">
                                        <span class="card-list__category card-list__category-hover" style="font-family:pB; font-size:15px;"> 관광지</span>
                                        <h3 class="card-list__title card-list__title-hover" style="font-family:pB">광명동굴</h3>
                                        <span class="card-list__by card-list__by-hover a-hot-loc" style="font-family:pB; font-size:15px;">
                        <span style="color: rgba(255, 178, 105, 0.63);">in </span>경기 광명시</span>
                                    </a>
                                </div>
                            </div>
                        </article>
                    </div>

                </div>
            </div>

        </section>
    </section>
</body>


<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
    <!-- Main block - menus, subscribe form-->
    <div class="py-5 bg-gray-200 text-muted">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <img src="./image/togetherLogo.png" height="60" width="140" alt="">
                    <div class="text-black mb-4 ps-3 ms-sm-4" style="font-family:pM;">TOGETHER, to GET THERE</div>
                    <div class="mt-4 pt-2 ps-3 ms-sm-4">
                        <span class="text-muted text-sm">김나임ㅣ김태은ㅣ박혜연ㅣ선형채ㅣ윤하영ㅣ정수아ㅣ정원일</span>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-5 mb-lg-0 pt-4 ms-4">
                    <h6 class="text-dark mb-2">CONTACT
                        <ul class="list-unstyled">
                            <li class="mt-sm-2" style="font-family:pEl; letter-spacing:0px;">
                                <a class="text-muted" href="category-rooms.html">1544-9970</a>
                            </li>
                        </ul>
                    </h6>

                    <h6 class="text-dark mb-2">ADDRESS
                        <ul class="list-unstyled">
                            <li class="mt-sm-2" style="font-family:pEl; letter-spacing:0px;">
                                <a class="text-muted" href="category-rooms.html">서울특별시 강남구 테헤란로14길 6 남도빌딩<br><br></a>
                            </li>
                        </ul>
                    </h6>
                </div>

                <div class="col-lg-3 pt-4" style="font-family:pB;">
                    <h6 class="fs-5 text-dark mb-2">정기구독 & 뉴스레터</h6>
                    <p class="mb-3"> 투게더의 소식을 정기적으로 받아보세요</p>
                    <form action="#" id="newsletter-form">
                        <div class="input-group mb-3">
                            <input class="form-control bg-transparent border-dark
                    border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                            <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright section of the footer-->
    <div class="py-4 fw-light bg-gray-800 text-gray-300">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <p class="text-sm mb-md-0">&copy; 2022, TOGETHER. All rights reserved.
                    </p>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                        <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="..."></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>


<!-- JavaScript files-->
<script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite - 
    //   see more here 
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {

        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }
    // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
    // use your own URL in production, please :)
    // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
    //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
    injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');

    // 타이핑
    const typedTextSpan = document.querySelector(".typed-text");
    const cursorSpan = document.querySelector(".cursor");

    const textArray = ["분위기 좋은 맛집", "힐링 휴양지", "색다른 체험", "반려동물과의 여행"];
    const typingDelay = 200;
    const erasingDelay = 100;
    const newTextDelay = 2000; // Delay between current and next text
    let textArrayIndex = 0;
    let charIndex = 0;

    function type() {
        if (charIndex < textArray[textArrayIndex].length) {
            if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
            typedTextSpan.textContent += textArray[textArrayIndex].charAt(charIndex);
            charIndex++;
            setTimeout(type, typingDelay);
        } else {
            cursorSpan.classList.remove("typing");
            setTimeout(erase, newTextDelay);
        }
    }

    function erase() {
        if (charIndex > 0) {
            if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
            typedTextSpan.textContent = textArray[textArrayIndex].substring(0, charIndex - 1);
            charIndex--;
            setTimeout(erase, erasingDelay);
        } else {
            cursorSpan.classList.remove("typing");
            textArrayIndex++;
            if (textArrayIndex >= textArray.length) textArrayIndex = 0;
            setTimeout(type, typingDelay + 1100);
        }
    }

    document.addEventListener("DOMContentLoaded", function() { // On DOM Load initiate the effect
        if (textArray.length) setTimeout(type, newTextDelay + 250);
    });
</script>
<!-- jQuery-->
<script src="vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- Bootstrap Select-->
<script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>
    var basePath = ''
</script>
<!-- Main Theme JS file    -->
<script src="js/theme.js"></script>
</body>

</html>