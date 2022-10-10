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
    <link rel="stylesheet" href="css/customPHY.css">
    <link rel="stylesheet" href="css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="css/font.css">
    <style>
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
</head>

<body>
    <header class="header header-absolute" style="font-size:30px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="./image/togetherLogoWhite.png" width="30%" height="10%">
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
                            <a class="nav-link-header" id="homeDropdownMenuLink" href="index.html" aria-haspopup="true" aria-expanded="false">홈</a>
                        </li>

                        <!-- 상단바메뉴 시작 -->
                        <li class="nav-item position-static">
                            <li class="nav-item dropdown">
                                <a class="nav-link-header dropdown-toggle me-3" id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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

                        <li class="nav-item"><a class="nav-link-header" href="contact.html">커뮤니티</a></li>
                        <li class="nav-item">
                            <a class="nav-link-header" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a></li>

                        <!-- <li class="nav-item"><a class="nav-link-header" href="login.html">로그인</a></li> -->

                        <!-- 일반회원 로그인 성공 시 -->
                        <!-- <li class="nav-item dropdown"><a class="nav-link-header dropdown-toggle" id="docsDropdownMenuLink"
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
                        <li class="nav-item dropdown"><a class="nav-link-header dropdown-toggle" id="docsDropdownMenuLink" href="login.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
    <!--상단 헤더 히어로 시작-->
    <section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(https://cdn.pixabay.com/photo/2022/04/28/19/47/republic-of-korea-7161860_960_720.jpg);">
        <div class="container py-7 py-lg-7 text-white overlay-content text-center">
            <div class="row">
                <div class="col-xl-10 mx-auto">
                    <h1 class="display-3 fw-bold text-shadow">기록, 旅程</h1>
                    <p class="text-lg text-shadow">way Back Home</p>
                </div>
            </div>
        </div>
    </section>
    <!--상단 헤더 히어로 끝-->
    <!--검색 바 시작-->
    <div class="container bg-primary-100">
        <div class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20 ">
            <form action="#">
                <div class="row">
                    <div class="col-lg-10 d-flex align-items-center form-group">
                        <input class="form-control border-0 shadow-0" type="search" name="search" placeholder="키워드 또는 해시태그를 입력하여 검색하세요">
                    </div>

                    <div class="col-lg-2 form-group d-grid mb-0">
                        <button class="btn btn-warning h-100" type="submit">Search </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--검색 바 끝-->
    <!--헤시태그 시작-->
    <section class="py-5 ">
        <div class="container">
            <h2 class="mb-4">Hash tags</h2>
            <div class="row">
                <ul class="nav nav-pills-custom col-10">
                    <li class="nav-item"><a class="nav-link active" href="#">#가을</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">#에버랜드</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">#바다</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">#제주도</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">#백두산</a></li>
                </ul>

                <button class="col-2 btn btn-outline-dark rounded-4 "><span>write</span></button>
            </div>
        </div>
    </section>
    <!--헤시태그 끝-->
    <!--베스트 포스팅 시작-->
    <section class="py-3">
        <div class=" bg-gray-100 py-5 px-3 px-lg-5 rounded-3 shadow-sm">

            <div class="container">
                <div class="col-md-8 p-1 pb-4">
                    <p class="text-pSb fs-4" style="color: #907B65;">BEST POSTING</p>
                    <a href="#" class="a-orign-text">
                        <h3 class="text-pB">행복의 나라로 갈테야</h3>
                    </a>
                </div>
                <div class="row">
                    <div class="col-sm-4 col-lg-5" style="background-image: url();">
                        <img class="shadow-sm dark-overlay rounded" src="https://cdn.pixabay.com/photo/2016/04/20/00/41/mcdonalds-1340199_960_720.jpg" style="height: 300px;">
                    </div>
                    <div class="col-sm-8 col-lg-6 d-flex align-items-center">
                        <div>
                            <p class="text-lg text-gray-700 mb-4">#맥도날드 #추억 #테마여행 #가을</p>
                            <p class="text-lg text-gray-700 mb-4">참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 </p>
                            <h6 class="fs-4 text-pB">— written by 맥가이버</h6>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--베스트 포스팅 끝-->
    <!-- 포스트 목록 시작 -->
    <div class="container pt-5 mb-5">
        <div class="col-md-8 p-1 mb-3 py-3 ">
            <h2>Posts</h2>
        </div>
        <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
            <div class="me-3">
                <p class="mb-3 mb-md-0"><strong>12</strong> results found</p>
            </div>
            <div>
                <label class="form-label me-2" for="form_sort">Sort by</label>
                <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                <option value="sortBy_0">Most popular   </option>
                <option value="sortBy_1">Recommended   </option>
                <option value="sortBy_2">Newest   </option>
                <option value="sortBy_3">Oldest   </option>
                <option value="sortBy_4">Closest   </option>
              </select>
            </div>
        </div>
        <!--포스팅 리스트 시작-->
        <div class="row">
            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/99/2816599.jpg); min-height: 200px;">
                        <a class="tile-link" href="detail.html"></a>
                        <div class="card-img-overlay-bottom z-index-20">
                            <h4 class="text-white text-shadow">보라섬의 비밀</h4>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div>
                                <sapn class="badge badge-transparent badge-pill px-3 py-2">Restaurants</sapn>
                                <sapn class="badge badge-transparent badge-pill px-3 py-2">감사</sapn>
                            </div>
                            <a class=" position-relative z-index-40" href="javascript: void();">
                                <img src="./image/heart_empty.svg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="card-body" style="height: 200px;">
                        <p class="text-sm text-muted mb-3 py-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                        <p class="text-sm text-muted text-uppercase mb-2">By <a href="#" class="text-dark">Matt Damon</a></p>
                        <p class="text-sm mb-0"><a class="me-1" href="#">go detail</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- post item-->
            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/71/2820571.jpg); min-height: 200px;">
                        <a class="tile-link" href="detail.html"></a>
                        <div class="card-img-overlay-bottom z-index-20">
                            <h4 class="text-white text-shadow">제주도의 수많은 풍경속에</h4>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div>
                                <sapn class="badge badge-transparent badge-pill px-3 py-2">Restaurants</sapn>
                            </div>
                            <a class=" position-relative z-index-40" href="javascript: void();">
                                <img src="./image/heart_full.svg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="card-body" style="height: 200px;">
                        <p class="text-sm text-muted mb-3 py-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                        <p class="text-sm text-muted text-uppercase mb-2">By <a href="#" class="text-dark">Matt Damon</a></p>
                        <p class="text-sm mb-0"><a class="me-1" href="#">go detail</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- post item-->
            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/97/2826997.jpg); min-height: 200px;">
                        <a class="tile-link" href="detail.html"></a>
                        <div class="card-img-overlay-bottom z-index-20">
                            <h4 class="text-white text-shadow">밀면과 나</h4>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div>
                                <sapn class="badge badge-transparent badge-pill px-3 py-2">Restaurants</sapn>
                            </div>
                            <a class=" position-relative z-index-40" href="javascript: void();">
                                <img src="./image/heart_full.svg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="card-body" style="height: 200px;">
                        <p class="text-sm text-muted mb-3 py-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                        <p class="text-sm text-muted text-uppercase mb-2">By <a href="#" class="text-dark">Matt Damon</a></p>
                        <p class="text-sm mb-0"><a class="me-1" href="#">go detail</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- post item-->
            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/96/2824796.jpg); min-height: 200px;">
                        <a class="tile-link" href="detail.html"></a>
                        <div class="card-img-overlay-bottom z-index-20">
                            <h4 class="text-white text-shadow">쌀밥이 필요해</h4>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div>
                                <sapn class="badge badge-transparent badge-pill px-3 py-2">Restaurants</sapn>
                            </div>
                            <a class=" position-relative z-index-40" href="javascript: void();">
                                <img src="./image/heart_empty.svg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="card-body" style="height: 200px;">
                        <p class="text-sm text-muted mb-3 py-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                        <p class="text-sm text-muted text-uppercase mb-2">By <a href="#" class="text-dark">Matt Damon</a></p>
                        <p class="text-sm mb-0"><a class="me-1" href="#">go detail</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- post item-->
            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/78/2824678.jpg); min-height: 200px;">
                        <a class="tile-link" href="detail.html"></a>
                        <div class="card-img-overlay-bottom z-index-20">
                            <h4 class="text-white text-shadow">물회와 밀회</h4>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div>
                                <sapn class="badge badge-transparent badge-pill px-3 py-2">Restaurants</sapn>
                            </div>
                            <a class=" position-relative z-index-40" href="javascript: void();">
                                <img src="./image/heart_empty.svg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="card-body" style="height: 200px;">
                        <p class="text-sm text-muted mb-3 py-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                        <p class="text-sm text-muted text-uppercase mb-2">By <a href="#" class="text-dark">Matt Damon</a></p>
                        <p class="text-sm mb-0"><a class="me-1" href="#">go detail</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- post item-->
            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/64/2842664.jpg); min-height: 200px;">
                        <a class="tile-link" href="detail.html"></a>
                        <div class="card-img-overlay-bottom z-index-20">
                            <h4 class="text-white text-shadow">거창한 여행</h4>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div>
                                <sapn class="badge badge-transparent badge-pill px-3 py-2">Restaurants</sapn>
                            </div>
                            <a class=" position-relative z-index-40" href="javascript: void();">
                                <img src="./image/heart_empty.svg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="card-body" style="height: 200px;">
                        <p class="text-sm text-muted mb-3 py-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                        <p class="text-sm text-muted text-uppercase mb-2">By <a href="#" class="text-dark">Matt Damon</a></p>
                        <p class="text-sm mb-0"><a class="me-1" href="#">go detail</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- 포스트 리스트 끝 -->
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
</body>

</html>