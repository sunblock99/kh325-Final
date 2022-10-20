<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<c:set var="searchMonth" value="${param.searchMonth}"/>
<c:set var="neighbourhood" value="${neighbourhood}"/>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>지역행사 페이지 -> 최종본</title>
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
    <!-- <link rel="stylesheet" href="css/style_blogzin.css" id="theme-stylesheet"> -->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/event_search.css">
    <!-- <link rel="stylesheet" href="css/custom.css"> -->
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="${path}/resources/css/font.css">
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
    
    .event_font {
        padding-top: 7px;
        font-weight: 500;
        line-height: 1;
        font-size: 9.3rem;
        font-family: 'pB';
    }
    
    .together_font {
        padding-top: 20px;
        color: #91ff8e !important;
        font-size: 2.8rem;
        font-family: 'pEb';
        font-weight: 900;
        font-display: swap;
    }
    
    
</style>

<body style="padding-top: 0;">

    <!-- =================== 화이트 헤더 html =================== -->
    <header class="header header-absolute" style="font-size:30px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="https://cdn.discordapp.com/attachments/1013740193389486172/1022387710322806816/002.png" width="30%" height="10%">
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
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-introduction.html">HOT PLACE </a>
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-directory-structure.html">관광지 정보</a>
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-gulp.html">지역별
                                    축제ㅣ행사 </a>
                                    <a class="hvr dropdown-item" href="${path}/resources/docs/docs-customizing-css.html">날짜별 축제ㅣ행사</a>
                                </div>
                            </li>
                        </li>

                        <li class="nav-item"><a class="nav-link-header" href="contact.html">커뮤니티</a></li>
                        <li class="nav-item">
                            <a class="nav-link-header" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a>
                        </li>

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



    <section class="h-100 ">
        <!--main container-->
        <div class="mb-1" style="height: 800px; margin-right: auto; margin-left: auto;">
            <!-- 사진 슬라이드-->
            <div class="  dark-overlay" style=" background-image: url( '${path}/resources/img/photo/영월1.png'); background-repeat: no-repeat; background-position: center center; background-size: cover ">
                <div class="container" style="height: 800px;">
                    <div class="d-flex text-white overlay-content" style="height: 500px; padding-top: 280px;">

                        <div class="w-100 container-fluid">

                            <div class="row">
                                <!-- 제목 시작 -->
                                <div class="col-lg-5">
                                    <p class="text-white letter-spacing-0 font-weight-light together_font" style="margin-bottom: 0px;">SEARCH WITH TOGEHER</p>
                                    <div class="font-weight-bold" style=" font-size: 1.2rem !important;">투게더에서 소개하는 지역별 행사를 함께 알아보아요
                                        <h2 class="fw-bold event_font">EVENT </h2>
                                    </div>
                                </div>
                                <!-- 제목 끝 -->


                                <!-- 사진 시작 -->
                                <div class="col-lg-7">
                                    <div class="row pt-4 pb-2">
                                        <div class="container">
                                            <div class="swiper-container items-slider mx-n2 pt-3">
                                                <!-- Additional required wrapper -->
                                                <div class="swiper-wrapper pb-0 ">
                                                    <!-- Slides 시작-->
                                                    <!-- 1번 -->
                                                    <div class="swiper-slide px-2">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=c57ac522-3c06-4a6f-9f81-921fd065c6d3" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">
                                                                    2022서울릴랙스위크</div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 2번 -->
                                                    <div class="swiper-slide px-2 ">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image" src="http://tong.visitkorea.or.kr/cms/resource/82/2861782_image2_1.jpg" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">
                                                                    미생페스티벌</div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 3번 -->
                                                    <div class="swiper-slide px-2 ">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image" src="http://tong.visitkorea.or.kr/cms/resource/59/2861859_image2_1.jpg" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">동인천 낭만시장
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 4번 -->
                                                    <div class="swiper-slide px-2 ">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image " src="http://tong.visitkorea.or.kr/cms/resource/34/2861734_image2_1.jpg" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">
                                                                    서울뷰티먼스</div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 5번 -->
                                                    <div class="swiper-slide px-2 ">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image " src="http://tong.visitkorea.or.kr/cms/resource/09/2861709_image2_1.jpg" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">
                                                                    렛츠런캠핑파크</div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 6번 -->
                                                    <div class="swiper-slide px-2 ">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image " src="http://tong.visitkorea.or.kr/cms/resource/41/2859841_image2_1.jpg" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">
                                                                    행복로축제</div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 7번 -->
                                                    <div class="swiper-slide px-2 ">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image " src="http://tong.visitkorea.or.kr/cms/resource/83/2858883_image2_1.jpg" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">
                                                                    강동북페스티벌</div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 8번 -->
                                                    <div class="swiper-slide px-2 ">
                                                        <div class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
                                                            <a class="tile-link " href="category.html "></a><img class="slide-image " src="http://tong.visitkorea.or.kr/cms/resource/20/2858920_image2_1.png" alt="Card image ">
                                                            <div class=" overlay-content card-body-center">
                                                                <div class="card-f text-shadow text-uppercase fw-bold" style="font-size: 0.7rem; line-height: 1.5rem;">
                                                                    거창한마당대축제</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- 8번 끝 -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 사진 끝 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="container" style="margin-top:-200px">
        <div class="container-fluid">
            <!-- 체크박스 시작 -->
            <div class="pt-5" style="border: 10rem; padding-bottom: 3.8rem;">
                <div class="tab-content">
                     <form action="${path}/eventSearch" method="GET">
                    <div class="container">
                        <div class="row">
                            <!-- 월별 체크박스 -->
                            <div class="col-lg-4 mb-4">
                                <h6 class="form-label mt-1" for="form_category">MONTH</h6>
                                <select class="position-relative selectpicker form-control" value = "${searchMonth} "name="searchMonth" id="form_category"  data-selected-text-format="count>3" data-none-selected-text="">
                                        <option value="01">1월 </option>
                                        <option value="02">2월 </option>
                                        <option value="03">3월 </option>
                                        <option value="04">4월 </option>
                                        <option value="05">5월 </option>
                                        <option value="06">6월 </option>
                                        <option value="07">7월 </option>
                                        <option value="08">8월 </option>
                                        <option value="09">9월 </option>
                                        <option value="10">10월 </option>
                                        <option value="11">11월 </option>
                                        <option value="12">12월 </option>
                                    </select>
                                    
                                    <script type="text/javascript">                                           
					                 var selectValue = "${searchMonth}";                          
					                    var selectedElement = document.getElementById("form_category");
					                       var options = selectedElement.options;                  
					                          for(var i = 0; i < options.length; i++){                
					                              if(options[i].value == selectValue){                     
					                                    selectedElement.selectedIndex = i;                      
					                                       break;                                                  
					                                 }                                                        
					                           }                                                         
					                          </script>     
                            </div>

                            <!-- LOCATION 체크박스 -->
                            <div class="col-lg-4 mb-4">
                                <h6 class="form-label mt-1" for="form_neighbourhood">LOCATION</h6>
                                <select class="position-relative selectpicker form-control" name="neighbourhood" id="form_neighbourhood" multiple data-style="btn-selectpicker" data-live-search="true" data-selected-text-format="count>3" data-none-selected-text="검색하고 싶은 지역을 선택하세요.">
                                        <!-- <option value="neighbourhood_0">전국    </option> -->
                                        <option value="1" <c:if test="${neighbourhood.contains('1')}">selected</c:if>>서울</option>
                                        <option value="2" <c:if test="${neighbourhood.contains('2')}">selected</c:if>>인천 </option>
                                        <option value="3" <c:if test="${neighbourhood.contains('3')}">selected</c:if>>대전 </option>
                                        <option value="4" <c:if test="${neighbourhood.contains('4')}">selected</c:if>>대구 </option>
                                        <option value="5" <c:if test="${neighbourhood.contains('5')}">selected</c:if>>광주 </option>
                                        <option value="6" <c:if test="${neighbourhood.contains('6')}">selected</c:if>>부산 </option>
                                        <option value="7" <c:if test="${neighbourhood.contains('7')}">selected</c:if>>울산 </option>
                                        <option value="8" <c:if test="${neighbourhood.contains('8')}">selected</c:if>>세종특별자치시 </option>
                                        <option value="31" <c:if test="${neighbourhood.contains('31')}">selected</c:if>>경기도 </option>
                                        <option value="32" <c:if test="${neighbourhood.contains('32')}">selected</c:if>>강원도 </option>
                                        <option value="33" <c:if test="${neighbourhood.contains('33')}">selected</c:if>>충청북도 </option>
                                        <option value="34" <c:if test="${neighbourhood.contains('34')}">selected</c:if>>충청남도 </option>
                                        <option value="35" <c:if test="${neighbourhood.contains('35')}">selected</c:if>>경상북도 </option>
                                        <option value="36" <c:if test="${neighbourhood.contains('36')}">selected</c:if>>경상남도 </option>
                                        <option value="37" <c:if test="${neighbourhood.contains('37')}">selected</c:if>>전라북도 </option>
                                        <option value="38" <c:if test="${neighbourhood.contains('38')}">selected</c:if>>전라남도 </option>
                                        <option value="39" <c:if test="${neighbourhood.contains('39')}">selected</c:if>>제주도 </option>
                                    </select>
                                    
                                    <script type="text/javascript">                                           
					                 var selectValue = "${neighbourhood}";                          
					                    var selectedElement = document.getElementByName("neighbourhood");
					                       var options = selectedElement.options;                  
					                          for(var i = 0; i < options.length; i++){                
					                              if(options[i].value == selectValue){                     
					                                    selectedElement.selectedIndex = i;                      
					                                       break;                                                  
					                                 }                                                        
					                           }                                                         
					                          </script>     
                            </div>

                            <!-- SEARCH 박스 -->
                            <div class="col-lg-4 mb-4 mt-1">
                                <h6 class="form-label" for="form_neighbourhood">SEARCH</h6>
                                <div class="rounded position-relative z-index-20 form-check-label" style="background-color:white; border: 1px solid #ced4da;">
                                    <div class="row">
                                            <!-- input 박스 -->
                                            <div class="d-flex align-items-center form-control-search">
                                                <input class="ps-3 py-1 col-8 search-input" type="search" value="${param.searchValue}" id="searchValue" name="searchValue" placeholder="관광지를 검색하세요">
                                                <!-- 서치 버튼 -->
                                                <button class="w-50 h-2rem me-1 btn btn-warning p-0" type="submit"> Search
                                                </button>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
            </div>
            <!-- 체크박스 끝 -->
            
            <!-- 리스트 시작 -->
            <!-- 행사 소개글 시작 -->
            <div class="row mt-5 mb-5" style="margin-left: 30px;
            margin-right: -100px;">
                <div class="row col-11">
                    <div class="col-md-8 d-md-flex align-items-center pb-2 eventlist_font">축제 리스트</div>
                    <div class="col-md-4 d-md-flex align-items-md-end pb-2 justify-content-end " style="border-bottom: 1px solid #C0C2C5; font-family: 'pEb' !important;
                                font-size: 1.15rem !important;
                                "><a class="text-black" href="blog.html " style="font-family: pB !important"><strong
                                style="color: red; "><c:out value="${eventListCount}"/></strong>
                            results found <i class="fas fa-angle-double-right ms-2 "></i></a></div>
                </div>
            </div>
            <!-- 행사 소개글 끝 -->
            
             <div class="row justify-content-evenly">
                 <c:if test="${!empty list}">
		            <c:forEach var="Tour" items="${list}">
		                <div class=" hover-animate" style="  flex: 0 0 auto; width: 22%; margin-bottom: 2rem;">
		                    <div class="card shadow border-0 h-70">
		                     <!-- blog 1번 item-->
		                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
		                            <div class="card border-0 shadow">
		                                <div class="card-img-top overflow-hidden gradient-overlay">
		                                 <c:if test="${Tour.firstImage != null}"> 
		                                    <img style="width: inherit !important; height: 270px !important;" src="<c:out value="${Tour.firstImage}"/>" /></c:if>
		                                    <a class="tile-link " href="detail-rooms.html "></a>
		                                    <div class="card-img-overlay-top text-end ">
		                                        <a class=" heart_pink card-fav-icon position-relative z-index-50 " href="${path}/resources/javascript: void(); ">
		                                            <i class="fas fa-heart svg-icon "></i>
		                                        </a>
		                                    </div>
		                                    <div class="card-img-overlay-top text-start ">
		                                        <button type="button " class="btn btn-danger " style="font-size: 0.9rem !important; font-family: 'pB' !important; text-align: center;">진행중</button>
		                                    </div>
		                                </div>
		                                <div class="card-body d-flex align-items-center ">
		                                    <div class="row w-100">
		                                        <p class="card-title col-md-12" style=" margin-top: -3px; font-family: 'pEb'; font-weight: 700; font-size: 1.2rem; line-height: 1.3rem;">
		                                            <a class=" text-black" href="detail-rooms.html"><c:out value="${Tour.title}"/></a>
		                                        </p>
		                                        <p class="card-subtitle col-md-8 flex-grow-1 mb-0 text-muted " style="font-size: 0.95rem !important;"> <a class=" text-black" href="detail-rooms.html">&#91;<c:out value="${Tour.detailEventTable.eventStartDate}"/>&nbsp;-&nbsp;<c:out value="${Tour.detailEventTable.eventEndDate}"/>&#93;</a>
		                                    </p>
		                                        </p>
		                                        <div class="d-flex card-text mt-1">
		                                            <p class="flex-grow-1 mb-0 text-muted detail_short_poster" style="font-size: 0.95rem !important;"><i class="fas fa-map-marker text-secondary opacity-4 me-1"></i><c:out value="${Tour.addr1}"/></p>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
                	</c:forEach>
		        </c:if>
                <!-- blog item 끝-->
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
	                <ul class="pagination pagination-template d-flex justify-content-center p-5">
	                    <li class="page-item ">
	                        <span onclick="movePage('${path}/eventSearch?page=${pageInfo.prevPage}');" class="page-link"><span style="color: #000000;">Previous</span></span>
	                    </li>
	                    <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                    	<c:if test="${pageInfo.currentPage == status.current}">
	                   			 <li class="page-item active">
	                   			 		<a class="page-link">
	                   			 			<span style="color: #000000;">${status.current}</span>
	                   			 		</a>
	                   			 </li>
	                   		</c:if>
	                		<c:if test="${pageInfo.currentPage != status.current}">
	                   			 <li class="page-item">
	                   			 		<a onclick="movePage('${path}/eventSearch?page=${status.current}');" class="page-link">
	                   			 			<span style="color: #000000;">${status.current}</span>
	                   			 		</a>
	                   			 </li> 
	                   		</c:if>
	                     </c:forEach>
	                    <li class="page-item">
	                        <a onclick="movePage('${path}/eventSearch?page=${pageInfo.nextPage}');" class="page-link" ><span style="color: #000000;">Next</span></a>
	                    </li>
	                </ul>
	            </nav>
            </div>
        </div>
    </section>
    
      <script>
            function movePage(pageUrl) {
            	 var searchMonth = document.getElementById("form_category"); //월별
                 if(searchMonth.selectedIndex != 0){
                    pageUrl += '&searchMonth=' + searchMonth.options[selectedElement.selectedIndex].value;
                 }
           	
                 
	            var LocationValues = document.getElementById("form_neighbourhood"); //지역이름배열
                for (var i = 0; i < LocationValues.options.length; i++) {
                    if (LocationValues.options[i].selected == true) {
                    	LocationValue = LocationValues.options[i].value;
                        pageUrl += '&neighbourhood=' + LocationValue;
                    }
                }
	            
	            var searchValue = document.getElementById("searchValue"); //검색어
	            if (searchValue != null) {
	                pageUrl += '&searchValue=' + searchValue.value;
	            }
	            
	            alert(pageUrl);
	            location.href = encodeURI(pageUrl);
            }
            </script>


    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-5 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <img src="https://cdn.discordapp.com/attachments/1013740193389486172/1022387710322806816/002.png" height="60" width="140" alt="">
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
                                    <a class="text-muted" href="category-rooms.html">서울특별시 강남구 테헤란로14길 6
                                        남도빌딩<br><br></a>
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
                                <button class="btn btn-outline-dark border-start-0" type="submit"> <i
                                        class="fa fa-paper-plane text-lg"></i></button>
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
    <script src="${path}/resources/js/functions_blogzin.js "></script>
</body>


