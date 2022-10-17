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
    <title>관광지 통합검색 페이지 - 3*3 - final</title>
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
    <!-- <link rel="stylesheet" href="css/custom.css"> -->
    <link rel="stylesheet" href="${path}/resources/css/tour_InfoSearch.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${path}/resources/css/font.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>

<style>
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
        src: url(${path}/resources/font/Pretendard-SemiBold.ttf);
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Medium.ttf);
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        letter-spacing: 1px;
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
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
</style>

<body style="padding-top: 90px;">
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
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-introduction.html">HOT PLACE </a>
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-directory-structure.html">관광지 정보</a>
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-gulp.html">지역별
                  축제ㅣ행사 </a>
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-customizing-css.html">날짜별 축제ㅣ행사</a>
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
                                <a class="hvr dropdown-item" href="${path}/resources/docs/docs-introduction.html">마이페이지</a>
                                <a class="hvr dropdown-item" href="${path}/resources/docs/docs-introduction.html">관리자페이지</a>
                                <a class="hvr dropdown-item" href="${path}/resources/docs/docs-directory-structure.html">로그아웃</a>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- 상단바메뉴 끝 -->
        <!-- =============== 메뉴바 영역 끝 =============== -->
    </header>





















    <!-- 상단 컨테이너 시작 -->
    <div class="swiper-container d-flex align-items-center dark-overlay" style="height:500px">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper">
            <div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url(https://images.unsplash.com/photo-1615003162333-d3ff3ce1f0f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1560&q=80);">
                <div class="container">
                    <div class="d-flex h-100 text-white overlay-content align-items-center" style="margin-top:6%">
                        <div class="w-100">
                            <div class="row ">
                                <div class="col-lg-12 text-center" style="padding-top: 3rem !important;">
                                    <p class="subtitle text-white letter-spacing-4 mb-2 font-weight-light" style="font-size: 2rem !important;">Where do you want to go</p>
                                    <h2 class="fw-bold letter-spacing-1" style="line-height: 1; font-size: 7rem;
                                    font-weight: 400;
                                    line-height: 1.3; color: #FFCD4A;">TOURIST</h2>
                                    <p class="letter-spacing-1" style="font-size: 1.4rem; justify-content: space-evenly;">투게더에서 가고싶은 관광지를 검색하세요
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상단 컨테이너 끝-->


    <!-- 검색바 시작 -->
    <div style="margin-left: 600px;  flex: 0 0 auto; margin-top: -25px;
    width: 56%;">
        <div class="search-bar rounded p-2 position-relative z-index-20 " style="background-color:white; height:70px !important;">
            <form action="#" class="row">
                <!-- input 박스 -->
                <div class="col-lg-9 d-flex align-items-center form-group" style="height: 60px !important;">
                    <input class="shadow-0 searchbar_font ps-4 " type="search " name="search " placeholder="검색하고 싶은 관광지를 입력하세요 ">
                </div>
                <!-- 서치 버튼 -->
                <div class="col-lg-3 form-group d-grid mb-0 " style="height: 70px !important;">
                    <button class="btn btn-warning h-75 " style="background-color: #FFCD4A; border-color: #FFCD4A; font-family: 'pB' !important; " type="submit ">Search</button>
                </div>
            </form>
        </div>
    </div>
    <!-- 검색바 끝 -->

    <section class="mb-5 ">
        <!-- 체크박스 시작 -->
        <div class="container-fluid py-5 " style="padding-right: 15rem !important; padding-left: 15rem !important; justify-content: space-around; ">
            <div class="row ">
                <div class="col-lg-3 pt-4 ">
                    <form class="pe-xl-3 " action="# " autocomplete="off ">
                        <!-- 날짜 체크박스 -->
                        <div class="mb-4 ">
                            <h6 class="form-label" style="font-size: 0.95rem !important;" for="form_dates ">Dates</h6>
                            <div class="datepicker-container datepicker-container-left ">
                                <input class="form-control " type="text " name="bookingDate " id="form_dates " style="font-family: 'pB'!important; " placeholder="Choose your dates ">
                            </div>
                        </div>

                        <!-- LOCATION 체크박스 -->
                        <div class="mb-4 " style="font-family: 'pB'!important; ">
                            <h6 class="form-label" style="font-size: 0.95rem !important;" for="form_neighbourhood ">LOCATION</h6>
                            <select class="selectpicker form-control " style="font-family: 'pB'!important; " name="neighbourhood " id="form_neighbourhood " multiple data-style="btn-selectpicker " data-live-search="true " data-selected-text-format="count>3" data-none-selected-text="">
                    <option value="neighbourhood_0">전국 </option>
                    <option value="neighbourhood_1">서울 </option>
                    <option value="neighbourhood_2">인천 </option>
                    <option value="neighbourhood_3">대구 </option>
                    <option value="neighbourhood_4">광주 </option>
                    <option value="neighbourhood_5">부산 </option>
                    <option value="neighbourhood_6">울산 </option>
                    <option value="neighbourhood_7">세종특별자치시 </option>
                    <option value="neighbourhood_8">경기도 </option>
                    <option value="neighbourhood_9">강원도 </option>
                    <option value="neighbourhood_10">충청북도 </option>
                    <option value="neighbourhood_11">충청남도 </option>
                    <option value="neighbourhood_12">경상북도 </option>
                    <option value="neighbourhood_13">경상남도 </option>
                    <option value="neighbourhood_14">전라북도 </option>
                    <option value="neighbourhood_15">전라남도 </option>
                    <option value="neighbourhood_16">제주도 </option>
                    </select>
                        </div>

                        <!-- TOUR TYPE 체크박스 -->
                        <div class="mb-4">
                            <h6 class="form-label" style="font-size: 0.95rem !important;" for="form_category">TOUR TYPE</h6>
                            <select class="selectpicker form-control" name="category" id="form_category" multiple data-style="btn-selectpicker" data-selected-text-format="count>3" data-none-selected-text="">
                            <option value="category_0">관광지 </option>
                            <option value="category_1">문화시설 </option>
                            <option value="category_2">축제공연행사 </option>
                            <option value="category_3">여행코스 </option>
                            <option value="category_4">레포츠 </option>
                            <option value="category_5">숙박 </option>
                            <option value="category_6">쇼핑 </option>
                            <option value="category_7">음식점 </option>
                        </select>
                        </div>

                        <!-- SERVICE TYPE 체크박스 -->
                        <div class="mb-4">
                            <h6 class="form-label" style="font-size: 0.95rem !important;">SERVICE TYPE - 대분류</h6>
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="type_0" name="type[]">
                                        <label class="form-check-label fs-5" for="type_0">자연</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="type_1" name="type[]">
                                        <label class="form-check-label fs-5" for="type_1">인문(문화/예술/역사)</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="type_2" name="type[]">
                                        <label class="form-check-label fs-5" for="type_2">레포츠</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="type_3" name="type[]">
                                        <label class="form-check-label fs-5" for="type_3">쇼핑</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="type_4" name="type[]">
                                        <label class="form-check-label fs-5" for="type_4">음식</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="type_5" name="type[]">
                                        <label class="form-check-label fs-5" for="type_5">숙박</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="type_5" name="type[]">
                                        <label class="form-check-label fs-5" for="type_5">추천코스</label>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <!-- 중분류 시작 -->
                        <div class="pb-4">
                            <div class="collapse" id="moreFilters">
                                <div class="filter-block">
                                    <div class="mb-0">
                                        <h6 class="form-label" style="font-size: 0.95rem !important;">중분류</h6>
                                        <ul class="list-inline mt-xl-1 mb-0">
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_0" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_0">Hipster </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_1" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_1">Business </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_2" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_2">Family </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_3" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_3">Green </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- 소분류 시작 -->
                                <div class="filter-block">
                                    <div class="mb-0">
                                        <h6 class="form-label" style="font-size: 0.95rem !important;">소분류</h6>
                                        <ul class="list-inline mt-xl-1 mb-0">
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_0" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_0">Hipster </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_1" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_1">Business </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_2" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_2">Family </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_3" name="type[]">
                                                    <label class="form-check-label fs-5" for="type_3">Green </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <!-- 무장애여행 체크박스 -->
                                <div class="filter-block">
                                    <h6 class="form-label" style="font-size: 0.95rem !important;">Trip type</h6>
                                    <div class="mb-0">
                                        <div class="form-check form-switch ">
                                            <input class="form-check-input" id="forfamilies" type="checkbox" name="forfamilies" aria-describedby="forfamiliesHelp">
                                            <label class="form-check-label " for="forfamilies"> <span class="fs-5">무장애
                                                여행</span></label>
                                        </div><small class="text-muted form-text" style="font-size: 0.88rem !important;" id="forfamiliesHelp">장애인분들까지 편하게 여행 할수 있는
                                        시설이 마련된 관광지 타입</small>
                                    </div>
                                </div>
                            </div>


                            <div class="mb-4">
                                <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters" data-expanded-text="Less filters" data-collapsed-text="More filters">More filters</button>
                            </div>
                            <div class="mb-1">
                                <button class="btn btn-warning" type="submit"> <i class="fas fa-filter me-1"></i>Filter
                            </button>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- 리스트 시작 -->
                <div class="col-lg-9 mt-1 ">
                    <div class="d-flex justify-content-end align-items-center flex-column flex-md-row  ">
                        <div class="me-3">
                            <p class="text-muted " style="font-family: pB !important;" href="blog.html "><strong style="color: red; font-family: pB;">12</strong> results found <i class="fas fa-angle-double-right ms-2 "></i></p>
                        </div>
                    </div>
                    <div class="row ">
                        <!-- 1번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 v text-black" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=be3867cf-ad01-4999-829c-a0b2cb11d76b" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class=" heart_pink card-fav-icon position-relative z-index-50 align-content-center" href="${path}/resources/javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">한라산 백록담</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 제주특별자치도 서귀포시 토평동
                                        </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short">옛날 신선들이 하늘에서 내려와 백록을 타고 놀았다해서 백록담이라 불려졌다 한다. 둘레 약 2천여미터, 깊이가 약 100여 미터의 커다란 화산호인 백록담을 한 바퀴 돌고 나면 제주 섬 해안 도로를 다 돌아다닌 것이나 진배없다. 높이 1,950m이다. 남한에서 가장 높은 산이다. 제3기 말∼제4기 초에 분출한 휴화산이다. 현무암으로 이루어져 있으며 줄기는 제주도 중앙에서
                                                동서로 뻗는다. 남쪽은 경사가 심한 반면 북쪽은 완만하고, 동서쪽은 비교적 높으면서도 평탄하다. 정상에는 둘레 약 3㎞, 지름 500m의 화구호인 백록담(白鹿潭)이 있으며, 주위 사방에 흙붉은오름[土赤岳]·사라오름[砂羅岳]·성널오름[城板岳]·어승생오름[御乘生岳] 등 360여 개의 측화산을 거느리고 있다. 둔덕에 올라서면 산의 높이가 느껴지고 마치 하늘에 두둥실
                                                떠 있는 듯한 멋진 환상을 맛보게 된다. 한편 한라산은 천연기념물 한라산 천연보호구역으로 지정, 보호되고 있다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 2번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=18652076-7a56-493f-804d-c85baeea46bf" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class=" heart_pink card-fav-icon position-relative z-index-50" href="${path}/resources/javascript: void();">
                                            <i class=" fas fa-heart svg-icon"></i></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">제주 산방산</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 제주특별자치도 서귀포시 안덕면 산방로 218-10 (안덕면) </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short">제주도 서남부의 평야지대에 우뚝 서 있어 어디에서도 조망이 가능한 종 모양의 종상화산체다. 용암돔 남측 절벽의 높이 150~300m 사이에는 다양한 모양과 크기의 풍화혈과 애추가 발달되어 있고, 해발 150m쯤에 길이 약 10m, 너비와 높이가 약 5m인 산방굴이라고 하는 해식동굴이 바다를 향해 특색 있는 경관을 이루어 있어 영주십경의 하나이다. 산방산 입구에 왼쪽은
                                                산방사, 오른쪽은 보문사 적멸보궁이라는 두 개의 사찰이 있고, 이 두 사찰 사이의 돌계단 길을 쭉 따라 올라가면 산방굴사가 나온다. 산방산 앞 도로변에는 연대가 세워져 있는데, 연대는 횃불과 연기를 이용하여 정치·군사적으로 급한 소식을 전하던 통신수단을 말한다. 봉수대와는 기능면에서 차이가 없으나 연대는 주로 구릉이나 해변지역에 설치되었고 봉수대는 산 정상에 설치하여
                                                낮에는 연기로 밤에는 횃불을 피워 신호를 보냈다. 조선 세종 19년(1437) 왜구의 침입에 대비하여 쌓은 것으로 추정되는데, 1950년 한국전쟁을 거치면서 없어졌다. 현재는 연대의 주춧돌로 보이는 돌들만이 남아 있다. 산방산은 워낙 산 자체의 높이가 높고 해안에 접해있으므로 해서, 구름이 산머리에 걸려 있거나 휘몰아치는 광경을 종종 목격할 수 있으며, 각 사면
                                                기스락에서는 판이한 기후특성을 보여주기도 한다. 또한, 이러한 기후특성은 화산체상의 식생에 독특한 특징을 부여하고 있기도 하여, 식물학적으로도 중요한 보호지역이다. 산 정상에는 후박나무, 구실잣밤나무, 까마귀쪽나무, 생달나무, 참식나무 등 상록수림이 울창하고, 특히, 암벽에는 암벽 식물인 지네발란, 섬회양목 등 희귀식물이 자생하고 있어 천연기념물로 지정보호되고
                                                있으며, 산방산에서 조사된 관속식물은 79과 186속 201종 33변종 1아종으로서 모두 255종이다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 3번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="http://tong.visitkorea.or.kr/cms/resource/06/2649006_image2_1.jpg" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="heart_pink  card-fav-icon position-relative z-index-50" href="${path}/resources/javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">꽃지해수욕장</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 제주특별자치도 서귀포시 토평동
                                        </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short">충남 태안군 안면읍 광지길에 자리한 꽃지해변은 5km에 이르는 백사장과 할배바위, 할매바위가 어우러져 그림 같은 풍광을 보여준다. 2개의 바위 너머로 붉게 물드는 낙조는 태안을 상징하는 아름다운 풍광 중 으뜸으로 꼽힌다. 예부터 백사장을 따라 해당화가 지천으로 피어나 ‘꽃지’라는 어여쁜 이름을 얻었다. 긴 백사장을 따라 걷거나 밀려오는 파도를 바라보며 데이트를 즐기는
                                                연인과 가족의 모습도 꽃지해변의 풍경이 된다.꽃지해변을 상징하는 두 바위에는 슬픈 전설이 깃들어 있다. 신라시대 해상왕 장보고가 안면도에 기지를 두었는데, 기지사령관이었던 승언과 아내 미도의 금슬이 좋았다. 그러나 출정 나간 승언은 돌아오지 않았고, 바다만 바라보며 남편을 기다리던 미도는 죽어서 할매바위가 되었다. 할매바위보다 조금 더 바다 쪽으로 나간 곳에 있는
                                                큰 바위는 자연스레 할배바위가 되었다는 이야기다. 바다로 나간 남편을 맞이하듯 마주선 두 바위가 애틋해 보인다. 썰물 때면 두 바위가 마치 한 몸인 듯 모래톱으로 연결되는 모습을 볼 수 있다. 한여름뿐 아니라 사계절 여행자들의 발길이 끊이지 않는 것은 바위와 어우러진 낙조 때문이다. 해질 무렵이면 할매바위, 할배바위 너머로 아름답게 물드는 일몰 풍경을 카메라에
                                                담으려고 많은 사람들이 모여들어 진풍경을 펼친다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 4번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=89f56c13-2d65-46ab-a0e1-db3604bcc536" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="heart_pink  card-fav-icon position-relative z-index-50" href="javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">광명동굴</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 경기도 광명시 가학로85번길 142 (가학동) </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short">1912년 일제가 자원수탈을 목적으로 개발을 시작한 광명동굴(구.시흥광산)은 일제강점기 징용과 수탈의 현장이자 해방 후 근대화ㆍ산업화의 흔적을 고스란히 간직한 산업유산이다. 1972년 폐광된 후 40여 년간 새우젓 창고로 쓰이며 잠들어 있던 광명동굴을 2011년 광명시가 매입하여 역사ㆍ문화 관광명소로 탈바꿈시켰다. 광명동굴은 산업유산으로서의 가치와 문화적 가치가 결합된
                                                대한민국 최고의 동굴테마파크라는 평가를 받고 있으며 연간 100만 명 이상의 관광객이 찾는 세계가 놀란 폐광의 기적을 이루었다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 5번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="http://tong.visitkorea.or.kr/cms/resource/31/2616931_image2_1.jpg" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="heart_pink  card-fav-icon position-relative z-index-50" href="${path}/resources/javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">창경궁</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 서울특별시 종로구 창경궁로 185 (와룡동) </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short">창경궁(昌慶宮)의 정문으로 정면 3칸, 측면 2칸 중층(重層) 우진각지붕으로 다포식(多包式)이다. 장대석(長臺石)의 석조기단 위에 원형 초석을 두었으며 문루(門樓) 하층은 양개(兩開)의 판문(板門)이 설치되어 출입할 수 있도록 하였고 상층은 판상(板床)의 누(樓)가 설치되었다. 상층의 누는 사면 벽의 판문을 열면 사방을 관망할 수 있도록 하였다. 상하층의 공포(慊包)는
                                                내3출목, 외2출목으로 명정전(明政殿)의 공포 형식과 유사하다. 다만 첨차 뒷몸이 모두어져 한몸이 되어 만들어진 양봉이 대량(大樑)을 깊숙이 받아 그 끝이 고주(高柱)의 그것과 맞닿을 정도로 발달된 점이 다르다. 가구(架構)는 고주가 상하층에 걸쳐 세워지고 하층보와 상층보가 여기에 결구(結構)되어 있다. 하층의 대량 상부에는 우물천장이 설치되었고 상층의 대량 이상은
                                                노출하여 연등천장이 되었다. 처마는 겹처마이며 각 마루는 양성을 하고 용마루에는 취두(鷲頭) 합각마루 끝과 추녀마루에는 각각 용두(龍頭)와 잡상(雜像)을 놓고 사래 끝에는 토수(吐首)를 끼웠다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 6번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4be8aa7d-6b6f-4751-b701-50c807f73d4d" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="heart_pink  card-fav-icon position-relative z-index-50" href="${path}/resources/javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">계룡 입암저수지</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 충청남도 계룡시 두마면 입암길 218 </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short">충남 계룡시가 2017년부터 3년에 걸쳐 입암리 마을 종합개발 사업을 추진하면서, 지역 경관이 개선되어 새로운 명소로 떠오르고 있는 곳으로 메타세쿼이아 나무가 있어 이국적인 느낌을 내며, 가을에 화려한 단풍을 볼 수 있어 숨겨진 단풍 명소다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 7번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="http://tong.visitkorea.or.kr/cms/resource/13/1320913_image2_1.jpg" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="heart_pink  card-fav-icon position-relative z-index-40" href="${path}/resources/javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8 fw-bolder" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pB'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">지리산국립공원</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 경상남도 하동군 화개면 화개로 일원 </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short ">1967년 12월 29일 우리나라 최초의 국립공원으로 지정된 지리산은 3개도(경상남도, 전라남·북도), 1개시, 4개군, 15개 읍·면의 행정구역이 속해 있으며, 그 면적이 483.022㎢로서 22개 국립공원 중 가장 넓은 면적의 산악형 국립공원이다. 경남지역에는 쌍계사, 칠불사 등의 절을 비롯하여 불일폭포, 화계계곡, 청학동, 도인촌 등의 관광 자원이 풍부하다.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 8번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=778f048c-e5bc-48f8-83ef-bac7c678decf" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="heart_pink  card-fav-icon position-relative z-index-50" href="${path}/resources/javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">서빈백사</a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class="text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 제주특별자치도 제주시 우도면 우도해안길 252 </p>
                                        <div class=" card-text overflow-hidden
                                    text-sm text-gray-800 txt_line">
                                            <div class="detail_short ">우도 산호해변(서빈백사해수욕장)은 에메랄드빛으로 부서지는 햇살 아래 하얗다 못해 푸른빛이 감도는 홍조단괴 백사장이다. 수심에 따라 바다 빛깔이 달라 남태평양이나 지중해의 어느 바다와 비교해도 손색이 없다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- 9번 item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay">
                                    <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=bc433250-a80a-4244-906a-7ad43d16ebeb" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="heart_pink  card-fav-icon position-relative z-index-50" href="${path}/resources/javascript: void();">
                                            <i class="fas fa-heart svg-icon"></i></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="row w-100 txt_line">
                                        <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                            <a class=" text-black" href="detail-rooms.html">마장호수
                                        </a>
                                        </p>
                                        <div class="d-flex col-md-3" style="text-align: center">
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                            </p>
                                            <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                        </div>
                                        <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 경기도 파주시 광탄면 기산로 365 </p>
                                        <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                            <div class="detail_short">물빛풍경이 아름다운 마장호수는 친환경 공원으로 조성되어 주말가족, 연인들의 나들이 장소로 제격이다. 수변경관을 바라보며 걸을 수 있는 3.6km의 수변데크와 길이 220m의 출렁다리가 있다. 출렁다리를 건너는 순간부터 다리는 출렁출렁 요동을 쳐 관광객의 탄성을 자아낸다. 편의시설로는 넓은 호수를 바라보며 차한잔의 여유를 즐길수 있는 카페가 전망대와 관리동에 자리하고 있다.
                                                숲과 호수가 어우러진 캠핑장에서는 낙조와 이른 아침 물안개를 감상하며 편안한 쉼터를 제공한다. 마장호수에서 카누․카약을 즐길 수도 있다.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pagination -->
                    <nav aria-label="Page navigation example mt-5">
                        <ul class="pagination pagination-template d-flex justify-content-center ">
                            <li class=" page-item ">
                                <span class="page-link "><span style="color: #000000; ">Previous</span></span>
                            </li>
                            <li class="page-item active "><a class="page-link " href="# "><span
                                    style="color: #000000; ">1</span></a></li>
                            <li class="page-item ">
                                <a class="page-link " href="# "><span style="color: #000000; ">2</span></a>
                            </li>
                            <li class="page-item "><a class="page-link " href="# "><span
                                    style="color: #000000; ">3</span></a></li>
                            <li class="page-item ">
                                <a class="page-link " href="# "><span style="color: #000000; ">Next</span></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>

    <!-- 광고 시작 -->
    <section class="py-4 position-relative dark-overlay "><img class="bg-image" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b6036c7a-2fcb-4516-ab7d-f77482991316" alt=" ">
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
                        <img src="${path}/resources/image/togetherLogo.png" height="60" width="140" alt="">
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
    <!-- <script> -->
    <!-- // ------------------------------------------------------- // // Inject SVG Sprite - // see more here // https://css-tricks.com/ajaxing-svg-sprite/ // ------------------------------------------------------ // function injectSvgSprite(path) { var ajax
    = new XMLHttpRequest(); ajax.open("GET ", path, true); ajax.send(); ajax.onload = function(e) { var div = document.createElement("div "); div.className = 'd-none'; div.innerHTML = ajax.responseText; document.body.insertBefore(div, document.body.childNodes[0]);
    } } // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite // use your own URL in production, please :) // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
    injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); -->
    <!-- </script> -->
    <!-- jQuery-->
    <!-- <script src="vendor/jquery/jquery.min.js "></script> -->
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <!-- <script src="vendor/bootstrap/js/bootstrap.bundle.min.js "></script> -->
    <!-- Magnific Popup - Lightbox for the gallery-->
    <!-- <script src="vendor/magnific-popup/jquery.magnific-popup.min.js "></script> -->
    <!-- Smooth scroll-->
    <!-- <script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script> -->
    <!-- Bootstrap Select-->
    <!-- <script src="vendor/bootstrap-select/js/bootstrap-select.min.js "></script> -->
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <!-- <script src="vendor/object-fit-images/ofi.min.js "></script> -->
    <!-- Swiper Carousel                       -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script> -->
    <!-- <script>
        var basePath = '' -->
    <!-- </script> -->
    <!-- Main Theme JS file    -->
    <!-- <script src="js/theme.js "></script> -->

    <!-- JavaScript files-->
    <!-- <script>
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
    </script> -->
    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js "></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js "></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js "></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js "></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js "></script>
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js ">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js ">
    </script>
    <script src="${path}/resources/js/datepicker-category.js ">
    </script>
    <!-- Price Slider-->
    <script src="${path}/resources/vendor/nouislider/nouislider.min.js "></script>
    <script>
        var snapSlider = document.getElementById('slider-snap');

        noUiSlider.create(snapSlider, {
            start: [40, 110],
            snap: false,
            connect: true,
            step: 1,
            range: {
                'min': 40,
                'max': 110
            }
        });
        var snapValues = [
            document.getElementById('slider-snap-value-from'),
            document.getElementById('slider-snap-value-to')
        ];
        var inputValues = [
            document.getElementById('slider-snap-input-from'),
            document.getElementById('slider-snap-input-to')
        ];
        snapSlider.noUiSlider.on('update', function(values, handle) {
            snapValues[handle].innerHTML = values[handle];
            inputValues[handle].value = values[handle];
        })
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
</body>

</html>