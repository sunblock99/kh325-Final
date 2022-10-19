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
    <title>TOGETHER</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- Leaflet Maps-->
    <link rel="stylesheet"
      href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
      integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
      crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous">
    <!-- 좋아요 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/like.css">
  </head>

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


<header class="header header-absolute" style="font-size:30px;">
  <!-- Navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
    <div class="container-fluid">
      <div class="d-flex align-items-center">

        <!-- 로고 시작 -->
        <a class="navbar-brand py-3 px-5" href="index.html"
          style="line-height:0;">
          <img class="ps-3" src="${path}/resources/image/togetherLogo.png" width="30%"
            height="10%">
        </a>
        <!-- 로고 끝-->

        <!-- 공간활용 용도-->
        <div class="input-label-absolute input-label-absolute-left
          input-expand ms-lg-2 ms-xl-3"></div>
      </div>

      <!-- =============== 메뉴바 영역 =============== -->
      <div class="collapse navbar-collapse px-6 " id="navbarCollapse"
        style="font-family: pL;">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item dropdown">
            <a class="nav-link-header-black" id="homeDropdownMenuLink"
              href="index.html"
              aria-haspopup="true" aria-expanded="false">홈</a>
          </li>

          <!-- 상단바메뉴 시작 -->
          <li class="nav-item position-static">
            <li class="nav-item dropdown">
              <a class="nav-link-header-black dropdown-toggle me-3" id="docsDropdownMenuLink"
                href="index.html" data-bs-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                관광정보</a>
              <div class="dropdown-menu dropdown-menu-end"
                aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                <h6 class="dropdown-header fw-normal" style="font-family:
                  pB;">관광정보</h6>
                <a class="hvr dropdown-item"
                  href="docs/docs-introduction.html">HOT PLACE </a>
                <a class="hvr dropdown-item"
                  href="docs/docs-directory-structure.html">관광지 정보</a>
                <a class="hvr dropdown-item" href="docs/docs-gulp.html">지역별
                  축제ㅣ행사 </a>
                <a class="hvr dropdown-item"
                  href="docs/docs-customizing-css.html">날짜별 축제ㅣ행사</a>
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
          <li class="nav-item dropdown"><a class="nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink"
            href="login.html"data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            곰발바닥 님</a>
            <div class="dropdown-menu dropdown-menu-end"
                aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                <a class="hvr dropdown-item"
                  href="docs/docs-introduction.html">마이페이지</a>
                <a class="hvr dropdown-item"
                  href="docs/docs-introduction.html">관리자페이지</a>
                <a class="hvr dropdown-item"
                  href="docs/docs-directory-structure.html">로그아웃</a>
            </div>
          </li>

        </ul>
      </div>
    </div>
  </nav>
  <!-- 상단바메뉴 끝 -->
  <!-- =============== 메뉴바 영역 끝 =============== -->
</header>