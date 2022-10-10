<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>달력</title>
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
    <link rel="stylesheet" href="css/custom_suah copy.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="css/font.css">
</head>

<style>
    .container-typing {
        /* height: 60vh; */
        display: flex;
        justify-content: left;
        align-items: center;
    }
    
    .container-typing .type {
        font-size: 3rem;
        padding: 0.5rem;
        font-weight: bold;
        /* letter-spacing: 0.1rem; */
        text-align: left;
        overflow: hidden;
    }
    
    .p span.typed-text {
        font-weight: normal;
        color: #dd7732;
    }
    
    .container-typing p span.cursor {
        display: inline-block;
        background-color: #ccc;
        margin-left: 0.1rem;
        width: 3px;
        animation: blink 1s infinite;
    }
    
    .container-typing p span.cursor.typing {
        animation: none;
    }
</style>


<body style="padding-top: 92px;">

    <!-- =================== 블랙 헤더 html =================== -->
    <header class="header header-absolute" style="font-size:30px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="https://cdn.discordapp.com/attachments/1013740193389486172/1022387710645764186/001.png" width="30%" height="10%">
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
                            <a class="nav-link-header-black" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a>
                        </li>

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





    <!-- 상단 사진 시작 -->
    <section class="hero-home" style="display:flex; min-height: 500px !important;">
        <div class="swiper-container hero-slider">
            <div class="swiper-wrapper dark-overlay">
                <div class="swiper-slide "><img src=" https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=922d7670-e7e2-4c2b-8834-7a74f6515753" style="width: 1903px; height: 504px; ">
                </div>
                <div class="swiper-slide "><img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4f2cc26e-c9a0-46cc-bf86-6ebb3564a311" style="width: 1903px; height: 504px; ">
                </div>
                <div class="swiper-slide "><img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=c0c8f558-dbd2-4f7d-876d-8bfae710f595" style="width: 1903px; height: 504px; ">
                </div>
                <div class="swiper-slide "><img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=2e497978-8c06-49df-aaec-af20d6327bdd " style="width: 1903px; height: 504px; ">
                </div>
            </div>
        </div>
        <div class="container py-6 text-white z-index-20 ">
            <div class="row ">
                <div class="col-xl-12 ">
                    <div class="row ">
                        <div class="col-lg-12 justify-content-between" style="padding-top: 3rem !important;">
                            <p class="subtitle text-white letter-spacing-3 font-weight-light" style="font-size: 2.5rem !important;">Today's Events</p>
                            <h1 class="display-1 fw-bold event_calendar_font" id="h1">
                                <span class="cal">C</span>
                                <span class="cal">A</span>
                                <span class="cal">L</span>
                                <span class="cal">E</span>
                                <span class="cal">N</span>
                                <span class="cal">D</span>
                                <span class="cal">A</span>
                                <span class="cal">R</span>
                            </h1>
                            <!-- <p class="pt-2 letter-spacing-2 text-lg text-white" style="font-size: 1.4rem;">달력에서 오늘의 행사를 찾아보세요</p> -->
                            <span style="font-family: pB;" class="typed-text pt-2 letter-spacing-2 text-lg text-white"></span>
                            <span class="cursor">&nbsp;</span>
                            <div class="progress rounded-0" style="height: 4px; width: 400px;">
                                <div class="progress-bar" role="progressbar" style="width: 0px;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="0"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 상단 사진 끝 -->



    <section class="container-fluid bg-gray-100 py-6 p-6 flex">
        <div class="row">
            <!-- 달력 시작 -->
            <div class="col-6 pt-2 flex">
                <div id="calendar" style="height: 955px;"></div>
            </div>
            <!-- 달력 끝 -->


            <!-- 행사 리스트 시작 -->
            <div class="col-6">
                <div class="container">
                    <!-- 행사 소개글 시작 -->
                    <div class="container row mb-5" style="
                    padding-right: 0px;
                    padding-left: 0px;
                    margin-right: 0px;
                    margin-left: 0px;
                ">
                        <div class="row col-12">
                            <div class="col-md-8 d-md-flex align-items-center pb-2 eventlist_font">축제 리스트</div>
                            <div class="col-md-4 d-md-flex align-items-md-end pb-2 justify-content-end " style="border-bottom: 1px solid #C0C2C5; font-family: 'pEb' !important;
                    font-size: 1.15rem !important;
                    "><a class="text-muted  " href="blog.html ">
                                See more details<i class="fas fa-angle-double-right ms-2 "></i></a></div>
                        </div>
                    </div>
                    <!-- 행사 소개글 끝 -->

                    <div class="row">
                        <!-- Card 1번 item START -->
                        <div class="card_p4_mb4_rounded3 up-hover ">
                            <div class="row_g-3_blog ">
                                <div class="col-lg-5 ">
                                    <!-- Categories -->
                                    <a href="# " class="badge_text-bg-danger_mb-2_blog "><i
                                        class="fas_fa-circle_me-2_small_fw-bold "></i>진행중</a>
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single-6.html " class="btn-link text-reset stretched-link fw-bold">익산천만송이국화축제</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3 ">
                                        <div>
                                            <h5 class="mb-1"><a href="# " class="stretched-link text-reset btn-link" style="font-size: 1.2rem !important;">전라북도 전주시 완산구 전주객사3길 74-25</a></h5>
                                            <ul class="nav align-items-center small ">
                                                <li class="nav-item me-3 ">
                                                    &#91;2022&#45;09&#45;29&#32;&#126;&#32;2022&#45;10&#45;03&#93;</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4 ps-4">
                                    <p class="detail_short">익산천만송이국화축제는 2022.10.21~10.30 동안 열리는 도시와 농업이 상생하는 축제이며, 전국 최고 규모의 국화정원과 국화분재, 문화공연, 음악분수 등 다양한 볼거리와 즐길거리가 풍성한 축제이다. </p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3 ">
                                    <img class="rounded-3_blog " src="http://tong.visitkorea.or.kr/cms/resource/84/2858884_image2_1.jpg" alt="Card image ">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->

                        <!-- Card 2번 item START -->
                        <!-- <div class="card_p4_mb4_rounded3 up-hover ">
                            <div class="row_g-3_blog ">
                                <div class="col-lg-5 "> -->
                        <!-- Categories -->
                        <!-- <a href="# " class="badge_text-bg-danger_mb-2_blue"><i
                                        class="fas_fa-circle_me-2_small_fw-bold "></i>진행예정</a> -->
                        <!-- Title -->
                        <!-- <h2 class="card-title">
                                        <a href="post-single-6.html " class="btn-link text-reset stretched-link fw-bold">제5회
                                        전주국제단편영화제</a>
                                    </h2> -->
                        <!-- Author info -->
                        <!-- <div class="d-flex align-items-center position-relative mt-3 ">
                                        <div>
                                            <h5 class="mb-1"><a href="# " class="stretched-link text-reset btn-link" style="font-size: 1.2rem !important;">전라북도 전주시 완산구 전주객사3길 74-25</a></h5>
                                            <ul class="nav align-items-center small ">
                                                <li class="nav-item me-3 ">
                                                    &#91;2022&#45;09&#45;29&#32;&#126;&#32;2022&#45;10&#45;03&#93;</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div> -->
                        <!-- Detail -->
                        <!-- <div class="col-md-6 col-lg-4 ps-4">
                                    <p class="detail_short">전주국제단편영화제는 다양한 주제의 영화를 관람한 후 관객들과 대화를 통해 공감과 소통을 지향한다. 전주국제단편영화제를 통해 지역문화의 발전과 가치 확산 및 미래지향적 예술생태계 구축 그리고 지역주민의 문화예술 향유 증대를 위해 노력하고 있다.</p>
                                </div> -->
                        <!-- Image -->
                        <!-- <div class="col-md-6 col-lg-3 ">
                                    <img class="rounded-3_blog " src="http://tong.visitkorea.or.kr/cms/resource/76/2861676_image2_1.jpg" alt="Card image ">
                                </div>
                            </div>
                        </div> -->
                        <!-- Card item END -->

                        <!-- Card 5번 item START -->
                        <div class="card_p4_mb4_rounded3 up-hover ">
                            <div class="row_g-3_blog ">
                                <div class="col-lg-5 ">
                                    <!--  Categories -->
                                    <a href="# " class="badge_text-bg-danger_mb-2_blog "><i
                                    class="fas_fa-circle_me-2_small_fw-bold "></i>진행중</a>
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single-6.html " class="btn-link text-reset stretched-link fw-bold">전주비빔밥축제</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3 ">
                                        <div>
                                            <h5 class="mb-1"><a href="# " class="stretched-link text-reset btn-link" style="font-size: 1.2rem !important;">전라북도 전주시 완산구 향교길 139 </a></h5>
                                            <ul class="nav align-items-center small ">
                                                <li class="nav-item me-3 ">
                                                    &#91;2022&#45;10&#45;06&#32;&#126;&#32;2022&#45;10&#45;10&#93;</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4 ps-4">
                                    <p class="detail_short">전주비빔밥축제가 올해는 진정한 맛의 축제로 거듭난다. 전주음식의 다채로움, 맛의 즐거움, 맛의 철학, 맛의 여운을 모두 즐길 수 있는 음식축제다. 맛의 축제에 직접 참여해보자!</p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3 ">
                                    <img class="rounded-3_blog " src="http://tong.visitkorea.or.kr/cms/resource/80/2861280_image2_1.jpg" alt="Card image ">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->


                        <!-- Card 3번 item START -->
                        <!-- <div class="card_p4_mb4_rounded3 up-hover ">
                            <div class="row_g-3_blog ">
                                <div class="col-lg-5 "> -->
                        <!-- Categories -->
                        <!-- <a href="# " class="badge_text-bg-danger_mb-2_blog "><i
                                        class="fas_fa-circle_me-2_small_fw-bold "></i>진행중</a> -->
                        <!-- Title -->
                        <!-- <h2 class="card-title">
                                        <a href="post-single-6.html " class="btn-link text-reset stretched-link fw-bold">백두대간
                                        산림치유 페스티벌</a>
                                    </h2> -->
                        <!-- Author info -->
                        <!-- <div class="d-flex align-items-center position-relative mt-3 ">
                                        <div>
                                            <h5 class="mb-1"><a href="# " class="stretched-link text-reset btn-link" style="font-size: 1.2rem !important;">경상북도 영주시 테라피로 209 건강증진센터</a></h5>
                                            <ul class="nav align-items-center small ">
                                                <li class="nav-item me-3 ">
                                                    &#91;2022&#45;09&#45;30&#32;&#126;&#32;2022&#45;10&#45;02&#93;</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div> -->
                        <!-- Detail -->
                        <!-- <div class="col-md-6 col-lg-4 ps-4">
                                    <p class="detail_short">코로나 이후 대체 백신으로 각광받는 산림치유를 'K-힐링' 으로 전파하며 일상에 지친 시민들의 몸과 마음을 회복하고 남녀노소 구분없이 즐기는 오감만족 페스티벌 2022 백두대간 산림치유 페스티벌 대한민국 힐링 1번지 국립산림치유원에 여러분을 초대한다! </p>
                                </div> -->
                        <!-- Image -->
                        <!-- <div class="col-md-6 col-lg-3 ">
                                    <img class="rounded-3_blog " src="http://tong.visitkorea.or.kr/cms/resource/76/2861276_image2_1.jpg" alt="Card image ">
                                </div>
                            </div>
                        </div> -->
                        <!-- Card item END -->

                        <!-- Card 4번 item START -->
                        <div class="card_p4_mb4_rounded3 up-hover ">
                            <div class="row_g-3_blog ">
                                <div class="col-lg-5 ">
                                    <!-- Categories -->
                                    <a href="# " class="badge_text-bg-danger_mb-2_blue"><i
                                        class="fas_fa-circle_me-2_small_fw-bold "></i>진행예정</a>
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single-6.html " class="btn-link text-reset stretched-link fw-bold">
                                        페스티벌 광명</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3 ">
                                        <div>
                                            <h5 class="mb-1"><a href="# " class="stretched-link text-reset btn-link" style="font-size: 1.2rem !important;">경기도 광명시 철산로 13 철산역 </a></h5>
                                            <ul class="nav align-items-center small ">
                                                <li class="nav-item me-3 ">
                                                    &#91;2022&#45;09&#45;29&#32;&#126;&#32;2022&#45;10&#45;03&#93;</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4 ps-4 overflow-hidden ">
                                    <p class="detail_short">코로나 19로 지친 시민의 마음을 위로하는 문화백신 예술축제 ‘페스티벌 광명’을 개최한다. 이번 축제는 철산역 앞 8차선 도로를 차 없는 거리로 조성하여 시민들과 함께 만들어가는 환영의 자리이다. 이에 철산역 앞 삼거리부터 광성초교 사거리까지 축제 기간동안 교통 통제가 이루어지며 교통 통제가 이루어지는 기간 동안 우회로가 안내될 예정이다. 이번 축제에서는 시민들이 참여하는 커뮤니티
                                        댄스 ‘광명하는 춤’과 공중 퍼포먼스 개막프로그램, 코로나19를 극복하고 거리로 나온 시민들을 ‘환영’하는 환영회와 광대전, 거리예술단체와 음악 공연 등으로 채워진다.
                                    </p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3 ">
                                    <img class="rounded-3_blog " src="http://tong.visitkorea.or.kr/cms/resource/96/2858896_image2_1.jpg" alt="Card image ">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->

                        <!-- Card 5번 item START -->
                        <!-- <div class="card_p4_mb4_rounded3 up-hover ">
                            <div class="row_g-3_blog ">
                                <div class="col-lg-5 ">
                                    Categories -->
                        <!-- <a href="# " class="badge_text-bg-danger_mb-2_blog "><i
                                    class="fas_fa-circle_me-2_small_fw-bold "></i>진행중</a> -->
                        <!-- Title -->
                        <!-- <h2 class="card-title">
                                        <a href="post-single-6.html " class="btn-link text-reset stretched-link fw-bold">전주비빔밥축제</a>
                                    </h2> -->
                        <!-- Author info -->
                        <!-- <div class="d-flex align-items-center position-relative mt-3 ">
                                        <div>
                                            <h5 class="mb-1"><a href="# " class="stretched-link text-reset btn-link" style="font-size: 1.2rem !important;">전라북도 전주시 완산구 향교길 139 </a></h5>
                                            <ul class="nav align-items-center small ">
                                                <li class="nav-item me-3 ">
                                                    &#91;2022&#45;10&#45;06&#32;&#126;&#32;2022&#45;10&#45;10&#93;</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div> -->
                        <!-- Detail -->
                        <!-- <div class="col-md-6 col-lg-4 ps-4">
                                    <p class="detail_short">전주비빔밥축제가 올해는 진정한 맛의 축제로 거듭난다. 전주음식의 다채로움, 맛의 즐거움, 맛의 철학, 맛의 여운을 모두 즐길 수 있는 음식축제다. 맛의 축제에 직접 참여해보자!</p>
                                </div> -->
                        <!-- Image -->
                        <!-- <div class="col-md-6 col-lg-3 ">
                                    <img class="rounded-3_blog " src="http://tong.visitkorea.or.kr/cms/resource/80/2861280_image2_1.jpg" alt="Card image ">
                                </div>
                            </div> -->
                        <!-- </div> -->
                        <!-- Card item END -->

                        <!-- Pagination -->
                        <style>
                            .page-item.active .page-link {
                                z-index: 3;
                                color: #fff;
                                background-color: #ffca2c !important;
                                border-color: #ffca2c;
                            }
                        </style>

                        <!-- Pagination -->
                        <nav aria-label="Page navigation example ">
                            <ul class="pagination pagination-template d-flex justify-content-center ">
                                <li class="page-item ">
                                    <span class="page-link"><span style="color: #000000;">Previous</span></span>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#"><span
                                        style="color: #000000;">1</span></a></li>
                                <li class="page-item">
                                    <span class="page-link" style="color: #000000;">
                                    2
                                    <span class="sr-only">(current)</span>
                                    </span>
                                </li>
                                <li class="page-item"><a class="page-link" href="#"><span
                                        style="color: #000000;">3</span></a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><span style="color: #000000;">Next</span></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- 행사 리스트 끝 -->
            </div>
    </section>


    <!-- 광고 시작 -->
    <section class="py-4 position-relative dark-overlay "><img class="bg-image" src="https://images.unsplash.com/photo-1420582282039-a6d11404cb66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80" alt=" ">
        <div class="container">
            <div class="overlay-content text-white py-lg-5 bubbles">
                <h3 class="fw-normal text-shadow mb-2" style=" font-size: 2.5rem;
                font-weight: 300;
                line-height: 1.3;">프로계획러 사용자가 직접 만든</h3>
                <h3 class="fw-bold text-shadow mb-3" style=" font-size: 3rem; font-family:'pSb'; font-weight: 400; line-height: 1.3;">풀코스 여행</text>
                </h3>
                <button type="button" class="btn btn-light">Go for My Trip</button>
            </div>
        </div>
    </section>
    <!-- 광고 끝 -->



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
    <!-- Calendar Js -->
    <script src="vendor/calendar.jsp/js/bootstrap-calendar.js "></script>
    <script src="vendor/calendar.jsp/js/bootstrap-calendar.min.js "></script>

    <script>
        function zoomIn(event) {
            event.target.style.transform = "scale(1.5) ";
            event.target.style.zIndex = 50;
            event.target.style.transition = "all 0.5s ";
        }

        function zoomOut(event) {
            event.target.style.transform = "scale(1) ";
            event.target.style.zIndex = 0;
            event.target.style.transition = "all 0.5s ";
        }
    </script>

    <script>
        // Created for an Articles on:
        // https://www.html5andbeyond.com/bubbling-text-effect-no-canvas-required/

        jQuery(document).ready(function($) {

            // Define a blank array for the effect positions. This will be populated based on width of the title.
            var bArray = [];
            // Define a size array, this will be used to vary bubble sizes
            var sArray = [4, 6, 8, 10];

            // Push the header width values to bArray
            for (var i = 0; i < $('.bubbles').width(); i++) {
                bArray.push(i);
            }

            // Function to select random array element
            // Used within the setInterval a few times
            function randomValue(arr) {
                return arr[Math.floor(Math.random() * arr.length)];
            }

            // setInterval function used to create new bubble every 350 milliseconds
            setInterval(function() {

                // Get a random size, defined as variable so it can be used for both width and height
                var size = randomValue(sArray);
                // New bubble appeneded to div with it's size and left position being set inline
                // Left value is set through getting a random value from bArray
                $('.bubbles').append('<div class="individual-bubble" style="left: ' + randomValue(bArray) + 'px; width: ' + size + 'px; height:' + size + 'px;"></div>');

                // Animate each bubble to the top (bottom 100%) and reduce opacity as it moves
                // Callback function used to remove finsihed animations from the page
                $('.individual-bubble').animate({
                    'bottom': '100%',
                    'opacity': '-=0.7'
                }, 3000, function() {
                    $(this).remove()
                });


            }, 350);

        });
    </script>

    <script>
        $(document).ready(function() {
            $('.like-button').click(function() {
                $(this).toggleClass('is-active');
            })
        })
    </script>

    <script>
        // 타이핑
        const typedTextSpan = document.querySelector(".typed-text");
        const cursorSpan = document.querySelector(".cursor");

        const textArray = ["달력에서 오늘의 행사를 찾아보세요"];
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

</body>

</html>