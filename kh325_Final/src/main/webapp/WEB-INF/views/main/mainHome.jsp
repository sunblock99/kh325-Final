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
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">

    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>

<body style="padding-top: 0;">

    <!-- naim -->
    <style>
        /*폰트 적용*/
        
        @font-face {
            font-family: 'pBlack';
            font-weight: 900;
            font-display: swap;
            src: url(${path}/resources/font/Pretendard-Black.ttf);
        }
        
        @font-face {
            font-family: 'pEb';
            font-weight: 800;
            font-display: swap;
            src: url(${path}/resources/font/Pretendard-ExtraBold.ttf);
        }
        
        @font-face {
            font-family: 'pB';
            font-weight: 700;
            font-display: swap;
            src: url(${path}/resources/font/Pretendard-Bold.ttf);
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
            src: url(${path}/resources/font/Pretendard-Regular.ttf);
        }
        
        @font-face {
            font-family: 'pL';
            font-weight: 300;
            font-display: swap;
            src: url(${path}/resources/font/Pretendard-Light.ttf);
        }
        
        @font-face {
            font-family: 'pEl';
            font-weight: 200;
            font-display: swap;
            src: url(${path}/resources/font/Pretendard-ExtraLight.ttf);
        }
        
        @font-face {
            font-family: 'pThin';
            font-weight: 100;
            font-display: swap;
            src: url(${path}/resources/font/Pretendard-Thin.ttf);
        }
    </style>


    <header class="header header-absolute" style="font-size:50px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="${path}/resources/image/togetherLogoWhite.png" width="40%" height="60%">
                    </a>
                    <!-- 로고 끝-->

                    <!-- 공간활용 용도-->
                    <div class="input-label-absolute input-label-absolute-left
              input-expand ms-lg-2 ms-xl-3"></div>
                </div>

                <!-- =============== 메뉴바 영역 =============== -->
                <div class="collapse navbar-collapse px-6" id="navbarCollapse">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown">
                            <a class="fs-3 nav-link-header text-pB" id="homeDropdownMenuLink" href="index.html" aria-haspopup="true" aria-expanded="false">홈</a>
                        </li>

                        <!-- 상단바메뉴 시작 -->
                        <li class="nav-item position-static text-pB">
                            <li class="nav-item dropdown">
                                <a class="fs-3 nav-link-header dropdown-toggle me-3" id="docsDropdownMenuLink" href="index.html" 
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 관광정보</a>
                                <div class="dropdown-menu dropdown-menu-end text-pSb" aria-labelledby="docsDropdownMenuLink">
                                    <h6 class="dropdown-header fs-5 text-pSb">관광정보</h6>
                                    <a class="hvr dropdown-item fs-5" href="${path}/resources/docs/docs-introduction.html">HOT PLACE </a>
                                    <a class="hvr dropdown-item fs-5" href="${path}/resources/docs/docs-directory-structure.html">관광지 정보</a>
                                    <a class="hvr dropdown-item fs-5" href="${path}/resources/docs/docs-gulp.html">지역별 축제ㅣ행사 </a>
                                    <a class="hvr dropdown-item fs-5" href="${path}/resources/docs/docs-customizing-css.html">날짜별 축제ㅣ행사</a>
                                </div>
                            </li>
                        </li>

                        <li class="nav-item"><a class="fs-3 nav-link-header" href="contact.html">커뮤니티</a></li>
                        <li class="nav-item">
                            <a class="fs-3 nav-link-header" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a></li>

                        <!-- <li class="nav-item"><a class="nav-link-header" href="login.html">로그인</a></li> -->

                        <!-- 일반회원 로그인 성공 시 -->
                        <!-- <li class="nav-item dropdown"><a class="fs-3 nav-link-header dropdown-toggle" id="docsDropdownMenuLink"
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
                        <li class="nav-item dropdown"><a class="fs-3 nav-link-header dropdown-toggle" id="docsDropdownMenuLink" 
                            href="login.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">곰발바닥 님</a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink text-pB">
                                <a class="hvr dropdown-item fs-5 text-pSb" href="${path}/resources/docs/docs-introduction.html">마이페이지</a>
                                <a class="hvr dropdown-item fs-5 text-pSb" href="${path}/resources/docs/docs-introduction.html">관리자페이지</a>
                                <a class="hvr dropdown-item fs-5 text-pSb" href="${path}/resources/docs/docs-directory-structure.html">로그아웃</a>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- 상단바메뉴 끝 -->
        <!-- =============== 메뉴바 영역 끝 =============== -->
    </header>

    <!-- 배경 -->
    <section class="pt-5 hero-home" style="background-color: #FD9F28;">
        <div class="swiper-container hero-slider" style="height: 82%;">
            <div class="swiper-wrapper darker-overlay">
                <div class="swiper-slide" style="background-image:url(${path}/resources/image/mainBackground.png)"></div>
                <div class="swiper-slide" style="background-image:url(${path}/resources/image/mainBackground2.jpg)"></div>
                <div class="swiper-slide" style="background-image:url(${path}/resources/image/mainBackground3.jpg)"></div>
            </div>
        </div>

        <div class="col-1"></div>
        <div class="col-12 py-5 py-md-4 text-white z-index-20">
            <div class="row">
                <div class="col-xl-10">
                    <div class="py-6 text-center text-lg-start">
                        <p class="fs-3 text-pSb mb-1" style="color: #fff; letter-spacing:2px;">DISCOVER SOUTH KOREA</p>
                        <h1 class="display-1 fw-bold text-pBlack text-shadow">TOGETHER</h1>
                        <p class="ps-2 fs-4 text-pR"> 투게더와 함께 대한민국의 구석구석을 둘러보고 멋진 여행을 계획 해보세요</p>
                        <button class="mt-4 mb-3 col-lg-3 btn rounded-pill d-grid fs-5 letter-spacing-1 text-pB" style="background-color: #FD9F28;" type="submit">관광정보 검색하기</button>
                    </div>

                    <!-- 검색창 시작 -->
                    <div class="search-bar col-10 searchbar-shadow mt-5 p-3 p-lg-1 ps-lg-3 absolute-searchbar text-pSb">
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-10 d-flex align-items-center form-group">
                                    <input style="font-size: 1.4rem;" class="form-control border-0 shadow-0" type="text" name="search" placeholder=" &nbsp; 검색어를 입력 해주세요">
                                </div>
                                <div class="col-lg-2 d-grid" style="text-align: center;">
                                    <button class="btn rounded-pill h-100 fs-5 letter-spacing-4" style="background-color: #FD9F28;" type="submit">검색</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- 검색창 시작 -->

                </div>
            </div>
        </div>
    </section>

    <!-- 여행코스 시작 -->
    <section style="background-color:#FD9F28;">
        <div class="row mb-5 pb-5">

            <div class="col-1"></div>
            <div class="col-md-4 mt-1">
                <p class="fs-3 mb-0" style="color: rgba(255, 255, 255, 0.598); font-family:pM;">MAKE IT TOGETHER</p>
                <h6 class="display-4 fw-bold text-pBlack">나만의 여행코스</h6>
                <p class="fs-2 mb-0 pt-3" style="color: #fff; font-family:pM;">투게더 이용자들이 직접 기록한 여행코스</p>
                <p class="fs-3 mb-0 pt-4" style="color: #fff; font-family:pM;">
                    오늘은
                    <span class="fs-3 mb-0 pt-1 todaytour-intro-id">박박만*님</span> ,
                    <span class="fs-3 mb-0 pt-1 todaytour-intro-id">짜파게*님</span> 만의
                    <br>특별한 여행코스를 구경해보세요</p>
                <div class="row mt-5 pt-4 pb-3">
                    <div class="col-lg-5 d-grid" style="text-align: center;">
                        <button class="btn-black rounded-pill h-100" style="background-color: black; color: #fff;" type="submit">
                  추천코스 바로가기</button>
                    </div>
                    <div class="col-lg-5 d-grid" style="text-align: center;">
                        <button class="btn-black rounded-pill h-100" style="background-color: black; color: #fff;" type="submit">나만의 코스 만들기</button>
                    </div>
                </div>
            </div>
            <!-- 사진카드 -->
            <div class="col-md-3">
                <div class="d-flex align-items-lg-stretch mb-2 col-lg-4">
                    <div class="d-flex align-items-lg-stretch">
                        <div class="mytour-size ps-7 pe-7 pb-0 pt-6 card shadow-lg border-0 border-0 hover-animate" style="background: url(${path}/resources/https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=d9fa86a0-cddf-4f5a-a3ae-97e83f5d4039);">
                            <a class="tile-link" href="category.html"> </a>
                            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                                <!-- <h3 class="text-shadow text-uppercase mb-0">   </h3> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-end todaytour-font">제주도 여행 <span class="todaytour-font-id">박박만*님</span></div>
            </div>

            <div class="col-md-3">
                <div class="d-flex align-items-lg-stretch mb-2 col-lg-4">
                    <div class="d-flex">
                        <div class="mytour-size ps-7 pe-7 pb-0 pt-6 card shadow-lg border-0 border-0 hover-animate" style="background: url(${path}/resources/https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=92205eba-0012-49b7-af73-a907c01089f7); ">

                            <a class="tile-link" href="category.html"> </a>
                            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                                <!-- <h3 class="text-shadow text-uppercase mb-0">   </h3> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-end todaytour-font">원주 여행 <span class="todaytour-font-id">짜파게*님</span></div>
            </div>

        </div>
    </section>
    <!-- 여행코스 끝 -->

    <!-- 123 소개 -->
    <section class="contianer py-5 me-lg-5 ps-2 pe-6 pb-4 pt-5 justify-content-center">
        <div class="row">
            <div class="col-1"></div>

            <div class="col-lg-3 px-5 position-relative z-index-30">
                <p class="main-number">1</p>
                <div class="ps-lg-3">
                    <h5 class="text-uppercase">Together</h5>
                    <p class="mb-5 mb-lg-0 text-pM fs-5">
                        같이 떠나요. 그곳이 어디든 소중한 이와 함께라면 행복한 시간이 찾아올 거예요. 투게더에서 ‘동행’을 구해보세요. 새로운 인연이 기다릴 거예요.</p>
                </div>
            </div>

            <div class="col-1"></div>
            <div class="col-lg-3 px-5 position-relative z-index-30">
                <p class="main-number">2</p>
                <div class="ps-lg-3">
                    <h5 class="text-uppercase ms-3">To Get There</h5>
                    <p class="mb-5 mb-lg-0 ms-3 text-pM fs-5">
                        실시간 ‘핫플레이스’부터 우리나라 구석구석 숨겨진 명소까지. 투게더에서 제공하는 관광 정보를 바탕으로 ‘나만의 여행 계획’을 세워보세요.</p>
                </div>
            </div>

            <div class="col-1"></div>
            <div class="col-lg-3 px-5 position-relative z-index-30">
                <p class="main-number">3</p>
                <div class="ps-lg-3">
                    <h5 class="text-uppercase ms-3">To Remember</h5>
                    <p class="mb-5 mb-lg-0 ms-3 text-pM fs-5">
                        여행은 즐거우셨나요. ‘리뷰’와 ‘여행 후기’를 통해 여러분의 아름다운 추억을 되새기고 공유해주세요. 함께 나누는 만큼 오래도록 잊히지 않을 기억이 될 거예요</p>
                </div>
            </div>
            <div class="col-1"></div>

        </div>
    </section>

    <!-- 핫플레이스 시작 -->
    <section class="pb-3 pt-5 mt-2">
        <div class="row">
            <div class="col-1">
                <img src="${path}/resources/image/mainVideoBack.png" alt="" width="40px" height="380px">
            </div>
            <div class="col-md-3 mb-5 mb-md-0">
                <p class="fs-3 mb-0" style="color: #907B65; font-family:pM;">HOT PLACE</p>
                <h6 class="display-4 fw-bold text-pBlack">핫플레이스</h6>
                <p class="fs-4 mb-2 text-pSb">현재 많은 사람들이 관심있는 곳은 어딜까요?</p>
                <p class="fs-4 text-muted text-pR" style="height: -20px;">
                    대한민국의 각 지역들을 대표하는 관광지 중<br> 가장 인기가 많고 이용자들이 많이 검색하는 <br> 핫플레이스를 투게더에서 함께 확인해보세요!
                </p>
                <a class="d-flex a-hover a-orign-text btn-link-cate-lgfont pt-5 justify-content-end" href="post.html">
              더보기
              <i class="fas fa-angle-double-right ms-1"></i></a>
            </div>

            <!-- Slides-->
            <div class="mx-5 col-md-7 ps-7 pe-5">
                <div class="swiper-container guides-slider mx-n3 pt-3">
                    <!-- Additional required wrapper-->
                    <div class="swiper-wrapper pb-5">
                        <!-- Slides-->
                        <div class="swiper-slide h-auto px-2">
                            <div class="card card-poster gradient-overlay hover-animate mb-4
                  mb-lg-0">
                                <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path}/resources/img/photo/new-york.jpg" alt="Card
                    image">
                                <div class="card-body overlay-content">
                                    <h6 class="card-title text-shadow text-uppercase">New York</h6>
                                    <p class="card-text text-sm">The big apple</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide h-auto px-2">
                            <div class="card card-poster gradient-overlay hover-animate mb-4
                  mb-lg-0">
                                <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path}/resources/img/photo/paris.jpg" alt="Card image">
                                <div class="card-body overlay-content">
                                    <h6 class="card-title text-shadow text-uppercase">Paris</h6>
                                    <p class="card-text text-sm">Artist capital of Europe</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide h-auto px-2">
                            <div class="card card-poster gradient-overlay hover-animate mb-4
                  mb-lg-0">
                                <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path}/resources/img/photo/barcelona.jpg" alt="Card
                    image">
                                <div class="card-body overlay-content">
                                    <h6 class="card-title text-shadow text-uppercase">Barcelona</h6>
                                    <p class="card-text text-sm">Dalí, Gaudí, Barrio Gotico</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide h-auto px-2">
                            <div class="card card-poster gradient-overlay hover-animate mb-4
                  mb-lg-0">
                                <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path}/resources/img/photo/prague.jpg" alt="Card
                    image">
                                <div class="card-body overlay-content">
                                    <h6 class="card-title text-shadow text-uppercase">Prague</h6>
                                    <p class="card-text text-sm">City of hundred towers</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 핫플레이스 끝 -->

    <div class="overflow-hidden">
        <img src="${path}/resources/image/mainMiddleLine.png" alt="" width="2000px" height="130px">
    </div>

    <!-- 행사 ㅣ 축제 시작 -->
    <section class="px-lg-7 py-2 ms-4 ps-7 pe-5">
        <div class="row mb-5">
            <p class="fs-4 mb-0 pt-0" style="color: #907B65; font-family:pM;">ENJOY TOGETHER</p>
            <div class="col-md-6">
                <h6 class="display-4 text-pBlack">행사ㅣ축제</h6>

                <div class="row mb-3">
                    <div class="col-6 d-flex mt-4">
                        <a class="a-orign-text" href="">
                            <img class="date-tile-event me-3" src="http://tong.visitkorea.or.kr/cms/resource/54/2483454_image2_1.JPG" /></a>
                        <p class="mb-0 text-lg"><b>가무악극으로 만나는 토요 상설공연</b>
                            <br>2021.03.06 ~ 2021.10.30</p>
                    </div>
                    <div class="col-6 d-flex mt-4">
                        <a class="a-orign-text" href="">
                            <img class="date-tile-event me-3 ms-2" src="http://tong.visitkorea.or.kr/cms/resource/26/2704326_image2_1.JPG" /></a>
                        <p class="mb-0 text-lg"><b>가족끼리 빙어체험</b>
                            <br>2021.03.01 ~ 2021.06.06</p>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-6 d-flex mt-4">
                        <a class="a-orign-text" href="">
                            <img class="date-tile-event me-3" src="http://tong.visitkorea.or.kr/cms/resource/96/2707496_image2_1.jpg" /></a>
                        <p class="mb-0 text-lg"><b>가족끼리딸기 캠피닉</b>
                            <br>2021.03.01 ~ 2021.06.06</p>
                    </div>

                    <div class="col-6 d-flex mt-4">
                        <a class="a-orign-text" href="">
                            <img class="date-tile-event me-3 ms-2" src="http://tong.visitkorea.or.kr/cms/resource/60/2705060_image2_1.jpg" /></a>
                        <p class="mb-0 text-lg"><b>가족오페라 &lt;마술피리&gt; 2021</b>
                            <br>2021.03.01 ~ 2021.06.06</p>
                    </div>
                </div>
                <a class="d-flex a-hover a-orign-text btn-link-cate justify-content-end py-2" href="post.html">
                      더보기
                      <i class="fas fa-angle-double-right ms-1"></i></a>
            </div>


            <div class="col-md-6 main-square z-index-50">
                <div class="d-flex align-items-center">
                    <div class="ms-6 ps-6">
                        <iframe class="ms-lg-4 mb-3 pb-4 video-shadow" src="https://www.youtube.com/embed/RMD91n01DuA?start=0&cc_load_policy=1&iv_load_policy=3&color=white" width="550" height="400" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- 행사ㅣ축제 끝 -->

    <!-- 커뮤니티 시작-->
    <section class="py-1" style="background-color:#F3F1EE">
        <div class="ps-7 pe-7">
            <div class="row mb-0">
                <div class="col-md-8">
                    <p class="fs-4 mb-0 mt-5" style="color: #907B65; font-family:pM;">JOIN US TOGETHER</p>
                    <h6 class="display-4 pb-0 text-pBlack">커뮤니티</h6>
                </div>

                <div class="col-sm-6 ps-lg-2 pe-4 text-pEb">
                    <div class="ps-lg-1 pb-1 fs-3 text-pB opacity-75">인기 블로그
                    </div>
                    <div class="mt-2 py-2 me-2 container card border-0 shadow-sm hover-animate justify-content-center">
                        <div class="pt-4 row">
                            <a class="col-5" href="post.html">
                                <img class="img-main-gallery" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..." /></a>

                            <div class="col-7">
                                <a class="a-hover community-cate-font fw-bold" href="#">여행후기 </a>
                                <h5 class="my-1 fs-3"><a class="text-dark" href="post.html">행복의 나라를 아시나요          </a></h5>
                                <p class="text-gray-500 text-md text-pM">
                                    <i class="far fa-clock me-2"></i>2022년 09월 24일</p>
                                <p class="my-2 text-muted text-pR text-overflow-elip-3">일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임</p>
                                <a class="d-flex a-hover a-orign-text btn-link-cate justify-content-end py-2" href="post.html">
                      더보기
                      <i class="fas fa-angle-double-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="mt-2 py-2 me-2 container card border-0 shadow-sm hover-animate justify-content-center">
                        <div class="pt-4 row">
                            <a class="col-5" href="post.html">
                                <img class="img-main-gallery" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..." /></a>

                            <div class="col-7">
                                <a class="a-hover community-cate-font fw-bold" href="#">여행후기 </a>
                                <h5 class="my-1 fs-3"><a class="text-dark" href="post.html">행복의 나라를 아시나요          </a></h5>
                                <p class="text-gray-500 text-md text-pM">
                                    <i class="far fa-clock me-2"></i>2022년 09월 24일</p>
                                <p class="my-2 text-muted text-pR text-overflow-elip-3">일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임일단 여기에는 블로그 글이 들어갈껀데 일립스가 어떻게 적용되는지 몰라서 그냥 내가 붙임</p>
                                <a class="d-flex a-hover a-orign-text btn-link-cate justify-content-end py-2" href="post.html">
                      더보기
                      <i class="fas fa-angle-double-right ms-1"></i></a>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- <a class="d-flex a-hover a-orign-text btn btn-link-cate ps-0 justify-content-end" href="post.html">더보기
            <i class="fa fa-long-arrow-alt-right ms-2"></i></a> -->

                <div class="col-sm-6 ps-6 pe-5">
                    <div class="table-responsive text-sm">
                        <div class="ps-lg-1 fs-3 py-1 text-pB opacity-75">최신 게시글</div>
                        <table class="table table-striped mt-3">
                            </thead>
                            <tbody class="text-start">
                                <tr>
                                    <td class="community-cate-font">자유게시판</td>
                                    <td class="fw-bold community-title-font"><a class="a-hover a-orign-text" href="#">Room Rental Services</a></td>
                                    <td class="community-title-font">August</td>
                                </tr>
                                <tr>
                                    <td class="community-cate-font">동행</td>
                                    <td class="fw-bold community-title-font"><a class="a-hover a-orign-text" href="#">Premium Listing</a></td>
                                    <td class="community-title-font">London</td>
                                </tr>
                                <tr>
                                    <td class="community-cate-font">자유게시판</td>
                                    <td class="fw-bold community-title-font"><a class="a-hover a-orign-text" href="#">Room Rental Services</a></td>
                                    <td class="community-title-font">August</td>
                                </tr>
                                <tr>
                                    <td class="community-cate-font">동행</td>
                                    <td class="fw-bold community-title-font"><a class="a-hover a-orign-text" href="#">Premium Listing</a></td>
                                    <td class="community-title-font">London</td>
                                </tr>
                                <tr>
                                    <td class="community-cate-font">자유게시판</td>
                                    <td class="fw-bold community-title-font"><a class="a-hover a-orign-text" href="#">Room Rental Services</a></td>
                                    <td class="community-title-font">August</td>
                                </tr>
                                <tr>
                                    <td class="community-cate-font">동행</td>
                                    <td class="fw-bold community-title-font"><a class="a-hover a-orign-text" href="#">Premium Listing</a></td>
                                    <td class="community-title-font">London</td>
                                </tr>
                                <tr>
                                    <td class="community-cate-font">자유게시판</td>
                                    <td class="fw-bold community-title-font"><a class="a-hover a-orign-text" href="#">Room Rental Services</a></td>
                                    <td class="community-title-font">August</td>
                                </tr>
                               
                            </tbody>
                        </table>
                        <a class="d-flex a-hover a-orign-text btn-link-cate justify-content-end pt-4 pe-4" href="post.html">
                    전체 게시글 보러가기
                    <i class="fas fa-angle-double-right ms-1"></i></a>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--갤러리 시작 -->
    <div class="col-md-12 pb-6" style="background-color:#F3F1EE">
        <div class="ps-7 pe-7">
            <p class="fs-4 mb-0 pt-5" style="color: #907B65; font-family:pM;">
                SPECIAL MOMENTS</p>
            <h6 class="mb-0 display-4 fw-bold" style="font-family: pBlack;
          letter-spacing: 2px;">갤러리</h6>

            <a class="d-flex a-hover a-orign-text btn-link-cate-lgfont justify-content-end pb-3" href="post.html">
          더보기
          <i class="fas fa-angle-double-right ms-1"></i></a>

        </div>
        <div class="ps-7 pe-7 grid-wrapper pb-5" style="overflow: hidden; cursor: pointer;">
            <div>
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1541845157-a6d2d100c931?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1350&amp;q=80" alt="" />
            </div>
            <div>
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1588282322673-c31965a75c3e?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1351&amp;q=80" alt="" />
            </div>

            <div class="tall">
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1588117472013-59bb13edafec?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60" alt="">
            </div>

            <div class="wide">
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1587588354456-ae376af71a25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="" />
            </div>
            <div>
                <img class="img-main-gallery hover-animate" src="
            https://images.unsplash.com/photo-1558980663-3685c1d673c4?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1000&amp;q=60" alt="" />
            </div>
            <div class="tall">
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1588499756884-d72584d84df5?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=2134&amp;q=80" alt="" />
            </div>
            <div class="big">
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1588492885706-b8917f06df77?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1951&amp;q=80" alt="" />
            </div>
            <div>
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1588247866001-68fa8c438dd7?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=564&amp;q=80" alt="" />
            </div>
            <div class="wide">
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1586521995568-39abaa0c2311?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1350&amp;q=80" alt="" />
            </div>
            <div class="tall">
                <img class="img-main-gallery hover-animate" src="https://images.unsplash.com/photo-1588453862014-cd1a9ad06a12?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=634&amp;q=80" alt="" />
            </div>
        </div>
    </div>

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
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/visa.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/mastercard.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/paypal.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/western-union.svg" alt="..."></li>
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
    </script>
    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>

</body>

</html>