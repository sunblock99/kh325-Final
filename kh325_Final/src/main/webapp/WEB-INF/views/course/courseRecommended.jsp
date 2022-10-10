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
            <div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url('img/course/recommendedCourseList/대한민국구석구석_강원_영월_선돌_1920x1080.png');">
                <div class="container h-100">
                    <div class="d-flex h-100 text-white overlay-content align-items-center" style="margin-top:6%">
                        <div class="w-100">
                            <div class="row">
                                <div class="col-lg-6">
                                    <p class="subtitle text-white letter-spacing-3 mb-3 font-weight-light text-pB">Recommended Travel Plan</p>
                                    <h2 class="display-3 fw-bold mb-3 text-pEb" style="line-height: 1; font-size:80px ">추천여행코스</h2>
                                    <p class="mb-5 text-pB">전국 구석구석 투게더에서 엄선한 여행지들을 방문해보세요</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid py-5 px-lg-5">
        <div class="row">
            <div class="col-lg-3 pt-3" style="width: 20%;">
                <form class="pe-xl-3" action="#" autocomplete="off">
                    <div>
                        <div class="mb-4 ">
                            <label class="form-label text-pB" for="form_neighbourhood">방문하고 싶은 지역을 선택해보세요
                            </label>
                            <select class="selectLocation text-pB" name="neighbourhood" id="form_neighbourhood" data-live-search="true" data-selected-text-format="count &gt; 1" title="">
          <option value="neighbourhood_0">서울</option>
          <option value="neighbourhood_1">부산</option>
          <option value="neighbourhood_2">대구</option>
          <option value="neighbourhood_3">인천</option>
          <option value="neighbourhood_4">광주</option>
          <option value="neighbourhood_5">대전</option>
          <option value="neighbourhood_6">울산</option>
          <option value="neighbourhood_7">세종</option>
          <option value="neighbourhood_8">경기</option>
          <option value="neighbourhood_9">강원</option>
          <option value="neighbourhood_10">충북</option>
          <option value="neighbourhood_11">충남</option>
          <option value="neighbourhood_12">경북</option>
          <option value="neighbourhood_13">경남</option>
          <option value="neighbourhood_14">전북</option>
          <option value="neighbourhood_15">전남</option>
          <option value="neighbourhood_16">제주</option>
        </select>
                        </div>
                        <div class="collapse" id="moreFilters">
                            <div>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                                            <label class="form-check-label" for="amenities_0">강남구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                                            <label class="form-check-label" for="amenities_1">도봉구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                                            <label class="form-check-label" for="amenities_2">동대문구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                                            <label class="form-check-label" for="amenities_3">동작구                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_4" name="amenities[]">
                                            <label class="form-check-label" for="amenities_4">마포구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                            <label class="form-check-label" for="amenities_5">서대문구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_6" name="amenities[]">
                                            <label class="form-check-label" for="amenities_6">서초구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_7" name="amenities[]">
                                            <label class="form-check-label" for="amenities_7">성동구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_8" name="amenities[]">
                                            <label class="form-check-label" for="amenities_8">성북구                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_9" name="amenities[]">
                                            <label class="form-check-label" for="amenities_9">송파구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_10" name="amenities[]">
                                            <label class="form-check-label" for="amenities_10">양천구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_11" name="amenities[]">
                                            <label class="form-check-label" for="amenities_11">강동구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_12" name="amenities[]">
                                            <label class="form-check-label" for="amenities_12">영등포구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_13" name="amenities[]">
                                            <label class="form-check-label" for="amenities_13">용산구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">은평구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">종로구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">중구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">중랑구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">강북구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">강서구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">관악구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">광진구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">구로구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">금천구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">노원구                               </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="mb-4">
                            <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters" data-expanded-text="Less filters" data-collapsed-text="More filters">세부지역</button>
                        </div>
                        <div class="mb-4 mt-4">
                            <button class="btn btn-primary" type="submit"> <i class="fas fa-filter me-1"></i>Filter                </button>
                        </div>
                    </div>
                </form>
            </div>


            <div class="col-lg-9">
                <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
                    <div class="me-3">
                        <p class="mb-3 mb-md-0 text-pB"><strong>12</strong> results found</p>
                    </div>
                    <div>
                        <label class="form-label me-2 text-pB" for="form_sort">Sort by</label>
                        <select class="selectpicker text-pB" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                <option class="text-pB"value="sortBy_0">Most popular   </option>
                <option class="text-pB" value="sortBy_1">Recommended   </option>
                <option class="text-pB" value="sortBy_2">Newest   </option>
                <option class="text-pB" value="sortBy_3">Oldest   </option>
                <option class="text-pB" value="sortBy_4">Closest   </option>
              </select>
                    </div>
                </div>
                <div class="row">
                    <!-- 1번 item-->
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card h-100 border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=faa8c18d-8fcb-4771-bffc-c5173b45c5ce" />
                                <a class="tile-link" href="detail-rooms.html"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9"><a class="courseList_title text-black" href="detail-rooms.html">고풍스러움이 흐르는 북촌</a>
                                    </p>
                                    <div class="d-flex col-md-3" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                        </p>
                                        <span class="text-primary justify-center">4/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 서울 종로구 </p>
                                    <div class=" card-text text-muted 
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info">우리나라의 고풍스러움을 간직한 북촌여행 코스다. 전통을 간직하고 있는 창호공방과 전통의 미를 얼음으로 표현한 아이스 갤러리의 이색 볼거리, 서울 시내를 한눈에 내려다 볼 수 있는 북악스카이웨이의 팔각정 코스는 서울에서 꼭 가봐야 할 코스다.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 2번 item-->
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card h-100 border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=70809855-aabf-4485-a0d0-7deff48bf37d" />
                                <a class="tile-link" href="detail-rooms.html"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9"><a class="courseList_title text-black" href="detail-rooms.html">서울 양천구 서서울호수공원 코스</a>
                                    </p>
                                    <div class="d-flex col-md-3" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                        </p>
                                        <span class="text-primary justify-center">4/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 서울 양천구 </p>
                                    <div class=" card-text text-muted 
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info">서울의 서쪽인 강서구에서 즐길 수 있는 코스다. 서서울호수공원은 정수장이 공원으로 다시 태어난 재활용 공원이다. 기존 시설을 최대한 활용한 공원이지만 편안히 즐기기에 부족함이 없다. 주변 부천과 경계지에 있는 작동 오리촌은 유서가 깊다. 이 오래된 자연 마을에서 오리고기를 맛보는 것도 좋고 부천의 식물원과 온수공원까지 돌아보자. 유서가 깊은 지역 공원이며, 다시 태어난 자연을
                                            둘러보는 코스기 때문에 의미가 깊다.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 3번 item-->
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card h-100 border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=d9f1d013-78a6-4555-97aa-c188d5f7bd81" />
                                <a class="tile-link" href="detail-rooms.html"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9"><a class="courseList_title text-black" href="detail-rooms.html">여의도 샛강을 따라 걷는 길</a>
                                    </p>
                                    <div class="d-flex col-md-3" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                        </p>
                                        <span class="text-primary justify-center">4/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 서울 영등포구 </p>
                                    <div class=" card-text text-muted 
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info">여의도의 걷기 코스다. 서울 한복판에 핀 야생화와 물억새와 갈대 무성한 길을 걷다보면 잠시 도시임을 잊게 될 것이다. 90년대 초반 애호가를 위주로 생겨난 신길동 홍어거리를 둘러보고 가능하다면 홍어점심을 해보는 것도 나쁘지 않다. 아이와 함께라면 또 다른 바다세상을 열어주는 63씨월드를 돌아보고 여의도 둘레길도 함께 걸어보자.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 4번 item-->
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card h-100 border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=86deac47-dda3-4f54-8696-29eb20c4b2ff" />
                                <a class="tile-link" href="detail-rooms.html"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9"><a class="text-black courseList_title" href="detail-rooms.html">한양도성 남산 도시 숲부터 남대문 시장까지</a>
                                    </p>
                                    <div class="d-flex col-md-3" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                        </p>
                                        <span class="text-primary justify-center">4/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 서울 용산구 </p>
                                    <div class=" card-text text-muted 
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info">남산은 조선시대부터 서울의 주산이었다. 그 수려한 도시 산길의 풍경 속을 걸어 남산 야외식물원, 안중근의사 기념관 등을 돌아보고 서울 최대의 관광지이자 명물인 남대문 시장을 둘러보자. 점심 식사는 남대문 시장에 가면 빼 놓을 수 없는 갈치 골목에 가는 것도 빼먹지 말자. 우리 서민의 역사가 고스란히 숨쉬는 남산과 남대문시장은 서울 여행에 빠질 수 없는 코스다.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 1번 item-->
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card h-100 border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b5df0b81-b94c-41ab-a72a-1c6382afafca" />
                                <a class="tile-link" href="detail-rooms.html"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9"><a class="courseList_title text-black" href="detail-rooms.html">서울 해방촌의 이국적인 맛집을 찾아서</a>
                                    </p>
                                    <div class="d-flex col-md-3" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                        </p>
                                        <span class="text-primary justify-center">4/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 서울 용산구 </p>
                                    <div class=" card-text text-muted 
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info">해방촌하면 느껴지는 것은 올드함, 서글픈 이국의 거리, 그러나 이것 옛말이다. 모로코의 낯섬을 익숙하게 담아내는 카사블랑카와 한정판 책을 살 수 있는 독립책방 ‘스토리지앤필름’ 그리고 우리의 슬픈 역사를 담은 주변 공원의 아름다운 전경산책도 놓치지 말자.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 1번 item-->
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card h-100 border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b346199b-1fa9-4ead-b642-6a7abd7125fa" />
                                <a class="tile-link" href="detail-rooms.html"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="javascript: void();">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9"><a class="courseList_title text-black" href="detail-rooms.html">조선의 왕들이 지극히 아끼던 공간</a>
                                    </p>
                                    <div class="d-flex col-md-3" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                        </p>
                                        <span class="text-primary justify-center">4/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 서울 종로구 </p>
                                    <div class=" card-text text-muted 
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info">우리나라를 대표하는 궁궐은 경복궁을 꼽는다. 그러나 유네스코에 등재된 것은 창덕궁이다. 창덕궁은 태종부터 왕들이 경복궁보다 자주, 오래 머문 궁전이다. 이곳을 시작으로 민속박물관 등 서울 요지의 문화유산을 모두 볼 수 있는 좋은 코스다.</div>
                                    </div>
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
                            <li class="page-item-course">
                                <a class="page-link-course " href="# "> <i class="fa fa-angle-right "></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
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
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js ">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js ">
    </script>
    <script src="js/datepicker-category.js ">
    </script>
    <!-- Price Slider-->
    <script src="vendor/nouislider/nouislider.min.js "></script>
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
</body>

</html>