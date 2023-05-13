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
    <title>TOGETHER, to GET THERE</title>
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
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
<%--     <link rel="stylesheet" href="${path}/resources/css/event_search.css"> --%>
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
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
      	margin-top: 80px; 
        padding-bottom: 5px;
        color: #91ff8e !important;
        font-size: 2.7rem;
        font-family: 'pEb';
        font-weight: 900;
        font-display: swap;
    }
    
    .main_banner_picture {
        background-image: url(img/photo/메타1.png);
        width: 1903px;
        background-repeat: no-repeat;
        background-position: center center;
        background-size: cover;
    }
    
    .main_banner_silde_picture {
        position: inherit;
        display: flex;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border-radius: 0.4rem;
        align-items: flex-end;
        border: none;
        overflow: hidden;
        box-shadow: 0 0.1rem 0.3rem rgba(0, 0, 0, 0.1);
        width: inherit;
        height: 230px;
    }
    
    .together_detail_font {
        text-align: center;
        font-family: pThin;
        font-size: 1.6rem;
    }
    
    .container_blog {
        max-width: 1200px;
    }
    
    .row_blog {
        --bs-gutter-x: 1.875rem;
        --bs-gutter-y: 0;
        display: flex;
        flex-wrap: wrap;
        margin-top: calc(-1 * var(--bs-gutter-y));
        margin-right: calc(-.5 * var(--bs-gutter-x));
        margin-left: calc(-.5 * var(--bs-gutter-x));
        box-sizing: border-box;
    }
    
    .col-12_blog {
        flex: 0 0 auto;
        width: 100%;
        max-width: 100%;
        padding-right: calc(var(--bs-gutter-x) * .5);
        padding-left: calc(var(--bs-gutter-x) * .5);
        margin-top: var(--bs-gutter-y);
        box-sizing: border-box;
    }
    
    .card_p4_mb4_rounded3 {
        /* transition: all 0.3s ease-in-out; */
        will-change: transform;
        border-radius: 0.7rem !important;
        padding: 2rem !important;
        padding-top: 3rem !important;
        margin-bottom: 2rem !important;
        border: 1px solid rgba(0, 0, 0, 0.1) !important;
        box-sizing: border-box;
        --bs-card-spacer-y: 0.3rem;
        --bs-card-spacer-x: 1.25rem;
        --bs-card-title-spacer-y: 0.125rem;
        --bs-card-border-width: 0;
        --bs-card-border-color: rgba(0, 0, 0, 0.1);
        --bs-card-border-radius: 0.7rem;
        --bs-card-box-shadow: ;
        --bs-card-inner-border-radius: 0.7rem;
        --bs-card-cap-padding-y: 0.5rem;
        --bs-card-cap-padding-x: 1rem;
        --bs-card-cap-bg: #fff;
        --bs-card-cap-color: ;
        --bs-card-height: ;
        --bs-card-color: ;
        --bs-card-bg: #fff;
        --bs-card-img-overlay-padding: 1.25rem;
        --bs-card-group-margin: 0.9375rem;
        position: relative;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        min-width: 0;
        height: var(--bs-card-height);
        word-wrap: break-word;
        background-color: var(--bs-card-bg);
        background-clip: border-box;
        /* align-items: center; */
    }
    
    .row_g-3_blog {
        --bs-gutter-y: 1rem;
        --bs-gutter-x: 1rem;
        display: flex;
        flex-wrap: wrap;
        margin-top: calc(-1 * var(--bs-gutter-y));
        margin-right: calc(-.5 * var(--bs-gutter-x));
        margin-left: calc(-.5 * var(--bs-gutter-x));
        box-sizing: border-box;
    }
    
    .col-lg-5_blog {
        -webkit-box-flex: 0;
        flex: 0 0 auto;
        width: 41.66666667%;
        max-width: 100%;
        padding-right: calc(var(--bs-gutter-x) * .5);
        padding-left: calc(var(--bs-gutter-x) * .5);
        margin-top: var(--bs-gutter-y);
        --bs-gutter-y: 1rem;
        --bs-gutter-x: 1rem;
        box-sizing: border-box;
    }
    
    .badge_text-bg-danger_mb-2_blog {
        margin-bottom: 0.5rem !important;
        color: #fff !important;
        background-color: RGBA(214, 41, 62, var(--bs-bg-opacity, 1)) !important;
        --bs-badge-padding-x: 0.65em;
        --bs-badge-padding-y: 0.35em;
        --bs-badge-font-size: 0.85em;
        --bs-badge-font-weight: 400;
        --bs-badge-color: #fff;
        --bs-badge-border-radius: 0.25rem;
        display: inline-block;
        padding: var(--bs-badge-padding-y) var(--bs-badge-padding-x);
        font-size: var(--bs-badge-font-size);
        font-weight: var(--bs-badge-font-weight);
        line-height: 1;
        color: var(--bs-badge-color);
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: var(--bs-badge-border-radius);
        transition: all 0.3s ease-in-out;
        text-decoration: none;
        box-sizing: border-box;
        cursor: pointer;
    }
    
    .badge_text-bg-danger_mb-2_blue {
        margin-bottom: 0.5rem !important;
        color: #fff !important;
        background-color: blue !important;
        --bs-badge-padding-x: 0.65em;
        --bs-badge-padding-y: 0.35em;
        --bs-badge-font-size: 0.85em;
        --bs-badge-font-weight: 400;
        --bs-badge-color: #fff;
        --bs-badge-border-radius: 0.25rem;
        display: inline-block;
        padding: var(--bs-badge-padding-y) var(--bs-badge-padding-x);
        font-size: var(--bs-badge-font-size);
        font-weight: var(--bs-badge-font-weight);
        line-height: 1;
        color: var(--bs-badge-color);
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: var(--bs-badge-border-radius);
        transition: all 0.3s ease-in-out;
        text-decoration: none;
        box-sizing: border-box;
        cursor: pointer;
    }
    
    .fas_fa-circle_me-2_small_fw-bold {
        font-weight: 700 !important;
        font-size: 0.875em;
        font-family: "pB";
        -webkit-font-smoothing: antialiased;
        display: inline-block;
        font-style: normal;
        font-variant: normal;
        text-rendering: auto;
        line-height: 1;
        box-sizing: border-box;
    }
    
    .h2_blog {
        font-size: 1.875rem;
        margin-top: 0;
        margin-bottom: var(--bs-card-title-spacer-y);
        font-family: "Nunito Sans", sans-serif;
        font-weight: 700;
        line-height: 1.25;
        color: #191a1f;
        box-sizing: border-box;
        display: block;
        margin-block-start: 0.83em;
        margin-block-end: 0.83em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }
    
    .up-hover {
        -webkit-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }
    
    .up-hover:hover {
        -webkit-transform: translateY(-10px);
        transform: translateY(-10px);
    }
    
    .btn-link_text-reset_stretched-link {
        --bs-btn-font-weight: 500;
        --bs-btn-color: var(--bs-link-color);
        --bs-btn-bg: transparent;
        --bs-btn-border-color: transparent;
        --bs-btn-hover-color: var(--bs-link-hover-color);
        --bs-btn-hover-border-color: transparent;
        --bs-btn-active-color: var(--bs-link-hover-color);
        --bs-btn-active-border-color: transparent;
        --bs-btn-disabled-color: #d0d4d9;
        --bs-btn-disabled-border-color: transparent;
        --bs-btn-box-shadow: none;
        --bs-btn-focus-shadow-rgb: 66, 122, 235;
        text-decoration: none;
        --bs-text-opacity: 1;
        color: inherit !important;
        background: linear-gradient(to right, currentColor 0%, currentColor 100%);
        background-size: 0px 6%;
        background-repeat: no-repeat;
        background-position: left 100%;
        transition-duration: 0.5s;
        font-weight: inherit;
        padding: 0;
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        z-index: 1;
        content: "";
        box-sizing: border-box;
    }
    
    .align-items-center_blog {
        -webkit-box-align: center !important;
        -ms-flex-align: center !important;
        align-items: center !important;
    }
    
    .avatar {
        height: 3rem;
        width: 3rem;
        position: relative;
        display: inline-block !important;
    }
    
    .avatar-img_rounded-circle {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 50% !important;
        max-width: 100%;
        vertical-align: middle;
        box-sizing: border-box;
    }
    
    .h5_blog {
        font-size: 1.171875rem;
        margin-top: 0;
        font-family: "Nunito Sans", sans-serif;
        font-weight: 700;
        line-height: 1.25;
        color: #191a1f;
        display: block;
        margin-block-start: 1.67em;
        margin-block-end: 1.67em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }
    
    .nav_small_blog {
        font-weight: 400;
        font-size: 0.875em;
        --bs-nav-link-padding-x: 0.75rem;
        --bs-nav-link-padding-y: 0.25rem;
        --bs-nav-link-font-weight: ;
        --bs-nav-link-color: var(--bs-body-color);
        --bs-nav-link-hover-color: var(--bs-link-hover-color);
        --bs-nav-link-disabled-color: #a1a1a8 !important;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        padding-left: 0;
        margin-bottom: 0;
        list-style: none;
    }
    
    .rounded-3_blog {
        border-radius: var(--bs-border-radius-lg) !important;
        max-width: 100%;
        height: auto;
        width: 264px;
        height: 198px;
        padding-left: 20%;
    }
    
    .rounded-3_blog-ver2 {
        border-radius: var(--bs-border-radius-lg) !important;
        max-width: 100%;
        height: 50%;
        width: relative;
        padding-left: 20%;
    }
    
    .btn_btn-primary-soft {
        letter-spacing: 0.5px;
        position: relative;
        overflow: hidden;
        outline: 0;
        white-space: nowrap;
        margin-bottom: 6px;
        color: #2163e8;
        background-color: rgba(33, 99, 232, 0.1);
        --bs-btn-padding-x: 1rem;
        --bs-btn-padding-y: 0.5rem;
        --bs-btn-font-family: ;
        --bs-btn-font-size: 0.9375rem;
        --bs-btn-font-weight: 500;
        --bs-btn-line-height: 1.5;
        --bs-btn-color: #595d69;
        --bs-btn-bg: transparent;
        --bs-btn-border-width: 1px;
        --bs-btn-border-color: transparent;
        --bs-btn-border-radius: 0.25rem;
        --bs-btn-box-shadow: none;
        --bs-btn-disabled-opacity: 0.65;
        --bs-btn-focus-box-shadow: 0 0 0 0 rgba(var(--bs-btn-focus-shadow-rgb), .5);
        display: inline-block;
        padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
        font-family: var(--bs-btn-font-family);
        font-size: var(--bs-btn-font-size);
        font-weight: var(--bs-btn-font-weight);
        line-height: var(--bs-btn-line-height);
        color: var(--bs-btn-color);
        text-align: center;
        vertical-align: middle;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
        border-radius: var(--bs-btn-border-radius);
        background-color: var(--bs-btn-bg);
        -webkit-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }
    
    .search-bar-tourpage {
        border-radius: 10rem;
        background: #fff;
        /* border: rgba(0, 0, 0, 0.324) 1px solid; */
    }
    
    .search-input {
        font-family: 'pEb';
        display: block;
        width: relative;
        /* font-size: 0.875rem; */
        line-height: 1.6;
        background-color: white;
        border: solid white;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: 0.4rem;
        transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }
    
    .card-body-center {
        flex: 1 1 auto;
        padding: 0.5rem 0.5rem;
        text-align: center;
    }
    
    .slide-image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 0;
    }
    
    .col-lg-9-5 {
        flex: 0 0 auto;
        width: 72%;
    }
    
    .detail_short_poster {
        display: -webkit-box;
        display: -ms-flexbox;
        display: box;
        margin-top: 1px;
        max-height: 200px;
        overflow: hidden;
        vertical-align: top;
        text-overflow: ellipsis;
        word-break: break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 1;
        color: #232629 !important;
    }
    
    .eventlist_font {
        margin-top: 0;
        font-family: 'pBlack' !important;
        font-weight: 900;
        line-height: 1.3;
        font-size: 2.5rem;
        border-bottom: 1px solid #C0C2C5;
    }
    /* 화이트헤더 */
    
    .navbar .nav-link-header {
        font-size: 1.4rem;
        font-weight: bold;
        color: white;
        text-decoration: none;
        display: block;
        padding: 0.5rem 1rem;
        color: #fff;
        transition: color 0.12s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out;
    }
    /* 블랙헤더 */
    
    .navbar .nav-link-header-black {
        font-size: 1.4rem;
        font-weight: bold;
        color: black;
        text-decoration: none;
        display: block;
        padding: 0.5rem 1rem;
        color: black;
        transition: color 0.12s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out;
    }
    /* 헤더 hover 효과 */
    
    a.hvr:hover {
        color: #FD9F28;
        background-color: #FAF9F8;
        text-decoration: none;
    }
    
    a:hover.heart_pink {
        color: rgb(245, 21, 58) !important;
        text-decoration: underline;
    }
     .text-overflow-elip-1 {
		    display: -webkit-box;
		    display: -ms-flexbox;
		    display: box;
		    margin-top: 1px;
		    max-height: 80px;
		    overflow: hidden;
		    vertical-align: top;
		    text-overflow: ellipsis;
		    word-break: break-all;
		    -webkit-box-orient: vertical;
		    -webkit-line-clamp: 1
		}
</style>

<body style="padding-top: 0;">

	<jsp:include page="/WEB-INF/views/common/whiteHeader.jsp">
		<jsp:param value="예아바디" name="title" />
	</jsp:include>


	<section class="h-100 ">
        <!--main container-->
        <div class="mb-1" style="height: 800px; margin-right: auto; margin-left: auto;">
            <!-- 사진 슬라이드-->
         <div class="  dark-overlay" style=" background-image: url( '${path}/resources/img/photo/영월1.png'); background-repeat: no-repeat; background-position: center center; background-size: cover ">
                <div class="container" style="height: 800px;">
                    <div class="d-flex text-white overlay-content" style="height: 500px; padding-top: 280px;">

                        <div class="w-100 container-fluid">

                            <div class="row" >
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
                                    <div class="row pt-6 pb-2">
                                        <div class="container">
                                            <div class="swiper-container items-slider mx-n2 pt-3">
												<!-- Additional required wrapper -->
												<c:if test="${!empty eventHighLikeList}">
													<div class="swiper-wrapper pb-0 ">
														<!-- Slides 시작-->
														<c:forEach var="EventHighLike"
															items="${eventHighLikeList}">
															<c:if test="${EventHighLike.firstImage ne null }">
																<!-- 1번 -->
																<div class="swiper-slide px-2">
																	<div
																		class=" gradient-overlay up-hover mb-4 mb-lg-0 main_banner_silde_picture">
																		<a class="tile-link "
																			href="${path}/tourDetailInfo.do?contentId=${EventHighLike.contentId}&contentTypeId=15"></a>
																		<img class="slide-image"
																			src="${EventHighLike.firstImage}">
																		<div class=" overlay-content card-body-center">
																			<div
																				class="card-f text-shadow text-uppercase fw-bold text-overflow-elip-1"
																				style="font-size: 0.8rem; line-height: 1.5rem;">
																				<c:out value="${EventHighLike.title}" />
																			</div>
																		</div>
																	</div>
																</div>
															</c:if>
														</c:forEach>
													</div>
												</c:if>
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
                     <form action="${path}/eventSearch.do" method="GET">
                    <div class="container">
                        <div class="row">
                            <!-- 월별 체크박스 -->
                            <div class="col-lg-4 mb-4">
                                <h6 class="form-label mt-1" for="form_category">MONTH</h6>
                                <select class="position-relative selectpicker form-control" value = "${searchMonth}" name="searchMonth" id="form_category"  data-selected-text-format="count>3" data-none-selected-text="">
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
                                                <input class="ps-3 py-1 col-8 search-input" type="search" value="<c:out value="${param.searchValue}"/>" id="searchValue" name="searchValue" placeholder="관광지를 검색하세요">
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
		                                    <img style="width: inherit !important; height: 270px !important;" src="<c:if test="${Tour.firstImage == null}"><c:out value="${path}/resources/image/noImage1.png"/></c:if><c:if test="${Tour.firstImage != null}"><c:out value="${Tour.firstImage}"/></c:if>" />
		                                    <a class="tile-link " onclick="location.href='${path}/tourDetailInfo.do?contentId=${Tour.contentId}&contentTypeId=${Tour.contentTypeId}'"></a>
		                                    <div class="card-img-overlay-top text-end ">
		                                        <a class=" heart_pink card-fav-icon position-relative z-index-50 " onclick="location.href='${path}/tourLike.do?contentId=${Tour.contentId}'">
		                                            <i class="fas fa-heart svg-icon "></i>
		                                        </a>
		                                    </div>
		                                    <div class="card-img-overlay-top text-start ">
		                                        <button type="button" class="btn btn-danger " style="font-size: 0.9rem !important; font-family: 'pB' !important; text-align: center;">진행중</button>
		                                    </div>
		                                </div>
		                                <div class="card-body d-flex align-items-center ">
		                                    <div class="row w-100">
		                                        <p class="card-title col-md-12" style=" margin-top: -3px; font-family: 'pEb'; font-weight: 700; font-size: 1.2rem; line-height: 1.3rem;">
		                                            <a class=" text-black text-overflow-elip-1" onclick="location.href='${path}/tourDetailInfo.do?contentId=${Tour.contentId}&contentTypeId=${Tour.contentTypeId}'"><c:out value="${Tour.title}"/></a>
		                                        </p>
		                                        <p class="card-subtitle col-md-8 flex-grow-1 mb-0 text-muted " style="font-size: 0.95rem !important;"> <a class=" text-black" onclick="location.href='${path}/tourDetailInfo.do?contentId=${Tour.contentId}&contentTypeId=${Tour.contentTypeId}'">&#91;<c:out value="${Tour.detailEventTable.eventStartDate}"/>&nbsp;-&nbsp;<c:out value="${Tour.detailEventTable.eventEndDate}"/>&#93;</a>
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
	                        <span onclick="movePage('${path}/eventSearch.do?page=${pageInfo.prevPage}');" class="page-link"><span style="color: #000000;">Previous</span></span>
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
	                   			 		<a onclick="movePage('${path}/eventSearch.do?page=${status.current}');" class="page-link">
	                   			 			<span style="color: #000000;">${status.current}</span>
	                   			 		</a>
	                   			 </li> 
	                   		</c:if>
	                     </c:forEach>
	                    <li class="page-item">
	                        <a onclick="movePage('${path}/eventSearch.do?page=${pageInfo.nextPage}');" class="page-link" ><span style="color: #000000;">Next</span></a>
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
	            
	            location.href = encodeURI(pageUrl);
            }
            </script>


   
    <!-- Footer-->
   <jsp:include page="/WEB-INF/views/common/footer.jsp"/> 
    <!-- JavaScript files-->
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


