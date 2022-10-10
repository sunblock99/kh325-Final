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
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/customKNI.css">
    <link rel="stylesheet" href="css/course_detail.css">
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
    /*폰트 적용*/
    
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(font/Pretendard-Black.ttf);
    }
    
    .text-pBlack {
        font-family: 'pBlack';
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url(font/Pretendard-ExtraBold.ttf);
    }
    
    .text-pEb {
        font-family: 'pEb';
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(font/Pretendard-Bold.ttf);
    }
    
    .text-pB {
        font-family: 'pB';
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(font/Pretendard-SemiBold.ttf);
    }
    
    .text-pSb {
        font-family: 'pSb';
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(font/Pretendard-Medium.ttf);
    }
    
    .text-pM {
        font-family: 'pM';
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        letter-spacing: 1px;
        src: url(font/Pretendard-Regular.ttf);
    }
    
    .text-pR {
        font-family: 'pR';
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(font/Pretendard-Light.ttf);
    }
    
    .text-pL {
        font-family: 'pL';
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(font/Pretendard-ExtraLight.ttf);
    }
    
    .text-pEl {
        font-family: 'pEl';
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(font/Pretendard-Thin.ttf);
    }
    
    .text-pThin {
        font-family: 'pThin';
    }
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
    /*폰트 끝*/
</style>

<body style="padding-top: 72px;">
    <header class="header header-absolute" style="font-size:30px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="./img/togetherLogoBlack.png" width="30%" height="10%">
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
    <!-- Slider main container-->
    <div class="swiper-container pt-4" style="height:500px">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper">
            <div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url('img/course/recommendedCourseList/대한민국구석구석_충북_단양_카페산_1920x1080.png');">
                <div class="container h-100">
                    <div class="d-flex h-100 text-white overlay-content align-items-center" style="margin-top:6%">
                        <div class="w-100">
                            <div class="row">
                                <div class="col-lg-6">
                                    <p class="subtitle text-white letter-spacing-3 mb-3 font-weight-light text-pB">Make Your Own Plan</p>
                                    <h2 class="display-3 fw-bold mb-3 text-pEb" style="line-height: 1; font-size:80px">나만의 여행코스</h2>
                                    <p class="mb-5 text-pB">투게더에서 제공하는 관광정보로 자신만의 여행코스를 만들어보세요</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="bg shadow mt-0">
        <div class="p-3 p-lg-4" style="border: 10rem; ">
            <div class="tab-content ">
                <form action="# ">
                    <div class="container">
                        <div class="row">
                            <select class="selectpicker text-pB" title="일정 " data-style="btn-form-control " multiple data-selected-text-format="count &gt; 2 ">
                                <option class="text-pB" value="type_0 ">전체</option>
                                <option class="text-pB" value="type_1 ">당일여행</option>
                                <option class="text-pB" value="type_2 ">1박2일</option>
                                <option class="text-pB" value="type_3 ">2박3일이상</option>
                              </select>
                            <select class="selectpicker text-pB" title="테마 " data-style="btn-form-control " multiple data-selected-text-format=" count &gt; 2 ">
                                <option class="text-pB" value="price_0 ">가족코스</option>
                                <option class="text-pB" value="price_1 ">혼자여행</option>
                                <option class="text-pB" value="price_2 ">도보코스</option>
                                <option class="text-pB" value="price_3 ">힐링코스</option>
                                <option class="text-pB" value="price_3 ">맛코스</option>
                                <option class="text-pB" value="price_3 ">캠핑코스</option>
                                <option class="text-pB" value="price_3 ">반려동물과함께</option>
                                <option class="text-pB" value="price_3 ">나의코스</option>
                              </select>
                            <div class="col-lg-2">
                                <button class="btn h-100 ms-3 text-pB" style=" background-color:#907B65; color: white; " type="submit ">Search </button>
                            </div>
                            <div class="col-lg-6 text-end">
                                <a class="btn h-100 text-pB" style="background-color:#907B65; color: white; " href="./01courseDetail.html ">나만의 코스 만들기 </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <section class="py-5 ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <p class="mb-3 mb-md-0 text-pB"><strong>12</strong> results found</p>
                </div>
                <div class="col-md-6 text-end">
                    <label class="form-label me-2 text-pB" for="form_sort ">Sort by</label>
                    <select class="selectpicker " name="sort " id="form_sort " data-style="btn-selectpicker " title=" ">
              <option class="text-pB" value="sortBy_0 ">Most popular   </option>
              <option class="text-pB" value="sortBy_2 ">Newest   </option>
              <option class="text-pB" value="sortBy_3 ">Oldest   </option>
              <option class="text-pB" value="sortBy_4 ">Closest   </option>
            </select>
                </div>
            </div>
            <div class="row mt-4">
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card h-100 border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=6c0b1908-db4d-4b91-b1a2-74d94c037bfa " alt="Modern, Well-Appointed Room " />
                            <a class="tile-link " href="detail-rooms.html "></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="img/avatar/avatar-0.jpg " alt="Pamela " />
                                    <div>Pamela</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end">
                                <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                    <i class="fas fa-heart svg-icon"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center ">
                            <div class="w-100 ">
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href="detail-rooms.html ">남해여행 7코스</a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm ">경남 남해군</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning
                    "></i><i class="fa fa-star text-warning "></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                <ul class="overflow-hidden " style="height:120px ">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 독일마을</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 상주은모래비치</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 금산 보리암(남해)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 가천 다랭이마을</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 남해보물섬전망대</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> [남해 바래길]화전별곡길</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 설천 남해해안도로</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card h-100 border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b9145ecf-16ce-4b10-a0c3-3421dd732206 " alt="Modern, Well-Appointed Room " />
                            <a class="tile-link " href="detail-rooms.html "></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="img/avatar/avatar-0.jpg " alt="Pamela " />
                                    <div>Pamela</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end">
                                <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                    <i class="fas fa-heart svg-icon"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center ">
                            <div class="w-100 ">
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href="detail-rooms.html ">울릉도 관광 코스(A) 7코스</a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm ">경북 울릉도</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning
                    "></i><i class="fa fa-star text-warning "></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                <ul class="overflow-hidden " style="height:120px ">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  관음도 (울릉도, 독도 국가지질공원)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 독도전망대 케이블카</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  봉래폭포 (울릉도, 독도 국가지질공원)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 천부해중전망대</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 태하향목 관광모노레일</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  울릉예림원</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 내수전일출전망대</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card h-100 border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=030bf4ee-49e2-45f3-a457-a6c87159333d " alt="Modern, Well-Appointed Room " />
                            <a class="tile-link " href="detail-rooms.html "></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="img/avatar/avatar-0.jpg " alt="Pamela " />
                                    <div>Pamela</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end">
                                <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                    <i class="fas fa-heart svg-icon"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center ">
                            <div class="w-100 ">
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href="detail-rooms.html ">낭만이 넘치는 여수 밤바다 코스 4코스</a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm ">전남 여수시</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning
                    "></i><i class="fa fa-star text-warning "></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                <ul class="overflow-hidden " style="height:120px ">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 만성리 검은모래해변</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  여수 녹테마레</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 이순신광장</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 낭만포차</a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card h-100 border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=210247d3-4468-4f92-8ec5-1e8ff5a86151 " alt="Modern, Well-Appointed Room " />
                            <a class="tile-link " href="detail-rooms.html "></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="img/avatar/avatar-0.jpg " alt="Pamela " />
                                    <div>Pamela</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end">
                                <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                    <i class="fas fa-heart svg-icon"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center ">
                            <div class="w-100 ">
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href="detail-rooms.html ">경주 일주 11코스</a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm ">경북 경주시</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning
                    "></i><i class="fa fa-star text-warning "></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                <ul class="overflow-hidden " style="height:120px ">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 골굴사(경주)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 신라역사과학관</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 불국사 [유네스코 세계문화유산]</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 용산회식당</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 남산</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  경주 포석정지</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 교촌마을</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 계림</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 교촌마을</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 첨성대</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 동궁과 월지</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 경주 보문관광단지</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card h-100 border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=8c3dfdc6-02dd-41de-ad3d-47deb173b4e0 " alt="Modern, Well-Appointed Room " />
                            <a class="tile-link " href="detail-rooms.html "></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="img/avatar/avatar-0.jpg " alt="Pamela " />
                                    <div>Pamela</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end">
                                <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                    <i class="fas fa-heart svg-icon"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center ">
                            <div class="w-100 ">
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href="detail-rooms.html ">감자국 여행기 7코스</a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm ">강원 평창군</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning
                    "></i><i class="fa fa-star text-warning "></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                <ul class="overflow-hidden " style="height:120px ">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 오대산 선재길</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  몰운대(정선)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 화암동굴 (강원고생대 국가지질공원)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 임계사통팔달시장 / 임계장 (5, 10일)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">화암약수 (강원고생대 국가지질공원) </a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">매봉산풍력발전단지(바람의 언덕)와 고랭지배추밭</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 용연동굴 (강원고생대 국가지질공원)</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card h-100 border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=a6eb07eb-c53c-4bec-b7c4-fa346d01681f " alt="Modern, Well-Appointed Room " />
                            <a class="tile-link " href="detail-rooms.html "></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="img/avatar/avatar-0.jpg " alt="Pamela " />
                                    <div>Pamela</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end">
                                <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                    <i class="fas fa-heart svg-icon"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center ">
                            <div class="w-100 ">
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href="detail-rooms.html ">보령서천 10코스</a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm ">충남 홍성군</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning "></i><i class="fa fa-star text-warning
                    "></i><i class="fa fa-star text-warning "></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                <ul class="overflow-hidden " style="height:120px ">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 홍주아문</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 보령 충청수영성</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 순교성지 갈매못</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 상화원</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  서천 마량리 동백나무 숲</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "> 한국최초 성경전래지 기념관</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  판교 시간이멈춘마을</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  국립생태원(서천)</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  국립해양생물자원관</a>
                                    </li>
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html ">  장항 스카이워크 (기벌포 해전 전망대)</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pagination -->
                <nav aria-label="Page navigation example ">
                    <ul class="pagination pagination-template d-flex justify-content-center ">
                        <li class="page-item-course ">
                            <a class="page-link-course " href="# "> <i class="fa fa-angle-left "></i></a>
                        </li>
                        <li class="page-item-course active "><a class="page-link-course " href="# ">1</a></li>
                        <li class="page-item-course "><a class="page-link-course " href="# ">2</a></li>
                        <li class="page-item-course "><a class="page-link-course " href="# ">3</a></li>
                        <li class="page-item-course ">
                            <a class="page-link-course " href="# "> <i class="fa fa-angle-right "></i></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>
    <!--footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-5 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <img src="./img/togetherLogoBlack.png" height="60" width="140" alt="">
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
            ajax.open("GET ", path, true);
            ajax.send();
            ajax.onload = function(e) {
                var div = document.createElement("div ");
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
    <script src="vendor/jquery/jquery.min.js "></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js "></script>
    <!-- Smooth scroll-->
    <script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script>
    <!-- Bootstrap Select-->
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js "></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="vendor/object-fit-images/ofi.min.js "></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="js/theme.js "></script>
    <!-- Map-->
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js " integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=" "></script>
    <!-- Available tile layers-->
    <script src="js/map-layers.js ">
    </script>
    <script src="js/map-category.js ">
    </script>
    <script>
        createListingsMap({
            mapId: 'categoryMap',
            jsonFile: 'js/rooms-geojson.json',
            mapPopupType: 'rental',
            useTextIcon: true
        });
    </script>
</body>

</html>