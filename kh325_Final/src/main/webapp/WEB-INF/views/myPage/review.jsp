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

    <link rel="stylesheet" href="css/font.css">
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
    <header class="header">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
            <div class="container-fluid">
                <div class="d-flex align-items-center">
                    <a class="navbar-brand py-1" href="index.html"><img src="img/logo.svg" alt="Directory logo"></a>
                    <form class="form-inline d-none d-sm-flex" action="#" id="search">
                        <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3">
                            <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                            <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
                        </div>
                    </form>
                </div>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <!-- Navbar Collapse -->
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
                        <div class="input-label-absolute input-label-absolute-left w-100">
                            <label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                            <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search" type="search">
                        </div>
                    </form>
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Home</a>
                            <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
                        </li>
                        <!-- Megamenu-->
                        <li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Template</a>
                            <div class="dropdown-menu megamenu py-lg-0">
                                <div class="row">
                                    <div class="col-lg-9">
                                        <div class="row p-3 pe-lg-0 ps-lg-5 pt-lg-5">
                                            <div class="col-lg-3">
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Homepage</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Restaurants</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail   </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-3">
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Rooms</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail   </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Blog</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post   </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Pages</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact   </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-3">
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Pages</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base  &mdash; Topic<span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Host</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view   </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-3">
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">User</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="row megamenu-services d-none d-lg-flex ps-lg-5">
                                            <div class="col-xl-3 col-lg-6 d-flex">
                                                <div class="megamenu-services-item">
                                                    <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#destination-map-1"> </use>
                            </svg>
                                                    <div>
                                                        <h6 class="text-uppercase">Best rentals</h6>
                                                        <p class="mb-0 text-muted text-sm">Find the perfect place</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-6 d-flex">
                                                <div class="megamenu-services-item">
                                                    <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#money-box-1"> </use>
                            </svg>
                                                    <div>
                                                        <h6 class="text-uppercase">Earn points</h6>
                                                        <p class="mb-0 text-muted text-sm">And get great rewards</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-6 d-flex">
                                                <div class="megamenu-services-item">
                                                    <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#customer-support-1"> </use>
                            </svg>
                                                    <div>
                                                        <h6 class="text-uppercase">020-800-456-747</h6>
                                                        <p class="mb-0 text-muted text-sm">24/7 Available Support</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-6 d-flex">
                                                <div class="megamenu-services-item">
                                                    <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#secure-payment-1"> </use>
                            </svg>
                                                    <div>
                                                        <h6 class="text-uppercase">Secure Payment</h6>
                                                        <p class="mb-0 text-muted text-sm">Secure Payment</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 d-none d-lg-block position-relative"><img class="bg-image" src="img/photo/photo-1521170665346-3f21e2291d8b.jpg" alt=""></div>
                                </div>
                            </div>
                        </li>
                        <!-- /Megamenu end-->
                        <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Docs</a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                                <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a>
                                <a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                                <div class="dropdown-divider"></div>
                                <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
                            </div>
                        </li>
                        <li class="nav-item dropdown ms-lg-3">
                            <a id="userDropdownMenuLink" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <img class="avatar avatar-sm avatar-border-white me-2" src="img/avatar/avatar-10.jpg" alt="Jack London"></a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdownMenuLink"><a class="dropdown-item" href="user-booking-1.html">Booking process - 4 pages </a><a class="dropdown-item" href="user-grid.html">Bookings &mdash; grid view </a><a class="dropdown-item" href="user-booking-detail.html">Booking detail </a>
                                <div class="dropdown-divider"></div><a class="dropdown-item" href="login.html"><i class="fas fa-sign-out-alt me-2 text-muted"></i> Sign out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /Navbar -->
    </header>
    <section class="py-5">
        <div class="container" style="padding-top:30px;">
            <div class="row">
                <div class="col-lg-3 me-lg-auto">
                    <div class="card border-0 shadow mb-6 mb-lg-0">
                        <div class="card-header bg-gray-100 py-4 border-0 text-center" style="background-color: #FFF1CC!important;">
                            <h3 class="text-pB">나의 회원정보</h3>
                            <p class=" text-xs mb-4 text-pB" style="color:#987107">오늘도 투게더와 함께 멋진 여행을 계획해보세요.</p>
                            <a class="d-inline-block " href="#"><img class="d-block avatar avatar-xxl p-2 mb-2" src="img/avatar/avatar-10.jpg" alt=""></a>
                            <h5 class="text-pB">Dongmin Lee</h5>
                            <p class="text-muted text-sm mb-0 text-pB">Seoul, Korea </p>
                        </div>
                        <div class="card-body p-5" style="height: 540px;">
                            <div class="d-flex align-items-center  mb-2 ">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
              <use xlink:href="#identity-1"> </use>
            </svg>
                                </div>
                                <div>
                                    <a href="user-profile.html">
                                        <p class="mb-0 text-pB" style="color: black">회원 정보</p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
              <use xlink:href="#heart-1"> </use>
            </svg>
                                </div>
                                <div>
                                    <a href="user-bookmark.html">
                                        <p class="mb-0 text-pB" style="color: black">즐겨찾기</p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
            <use xlink:href="#edit-1"> </use>
          </svg>
                                </div>
                                <div>
                                    <a href="user-myreview.html">
                                        <p class="mb-0 text-pB" style="color: black"><b>작성 리뷰</b></p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
            <use xlink:href="#chat-app-1"> </use>
          </svg>
                                </div>
                                <div>
                                    <a href="user-community.html">
                                        <p class="mb-0 text-pB" style="color: black">커뮤니티</p>
                                    </a>
                                </div>
                            </div>

                            <hr>
                            <div class="d-flex align-items-center  mb-2 ">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
              <use xlink:href="#image-gallery-1"> </use>
            </svg>
                                </div>
                                <div>
                                    <a href="user-profile.html">
                                        <p class="mb-0 text-pB" style="color: black">나의 갤러리</p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
          <use xlink:href="#road-1"> </use>
        </svg>
                                </div>
                                <div>
                                    <a href="user-mycourse.html">
                                        <p class="mb-0 text-pB" style="color: black">나의 여행코스</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 ps-lg-5">
                    <h1 class="hero-heading mb-3 text-pEb">My Review</h1>
                    <div class="text-block text-pEb">
                        <p class="text-muted">작성하신 리뷰를 확인할 수 있습니다. </p>
                    </div>
                    <div class="text-block text-pEb">
                        <!-- <p class="subtitle text-sm text-primary">Reviews </p>
                        <h5 class="mb-4">Listing Reviews </h5> -->
                        <div class="d-block mb-5">
                            <div>
                                <h5 class="mt-2 mb-1 text-pEb">하모</h5>
                                <div class="mb-2">
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                </div>
                                <p class="text-muted text-sm ">진주지역 전통음식점인데 과하지 않은 양념으로 담백한 맛을 느낄 수 있어요! 소박하고 정성이 가득한 음식이었어요. 별채와 같이 아늑한 공간에서 여유로운 식사를 할 수 있어서 좋았습니다.</p>
                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm" style="float:right;">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>수정</span> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>삭제</span>
                                </p>
                            </div>
                        </div>
                        <hr>
                        <div class="d-block mb-5">
                            <div>
                                <h5 class="mt-2 mb-1 text-pEb">2022년 경복궁 생과방</h5>
                                <div class="mb-2">
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-gray-200"></i>
                                </div>
                                <p class="text-muted text-sm">국왕과 왕비의 후식과 별식을 준비했던 곳에서 실제 임금이 먹었던 궁중병과와 궁중약차를 즐기는 신선한 체험이었어요. 특히 궁중병과가 맛있었습니다! 다음엔 부모님 모시고 오고 싶네요~</p>
                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm" style="float:right;">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>수정</span> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>삭제</span>
                                </p>
                            </div>
                        </div>
                        <hr>
                        <div class="d-block mb-5">
                            <div>
                                <h5 class="mt-2 mb-1">설해원</h5>
                                <div class="mb-2">
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                </div>
                                <p class="text-muted text-sm">양양국제공항 뒤편에 위치해있고 설악권에 있어서 휴식과 힐링이 가능해요. 럭셔리 복합 리조트로 골프장, 온천 사우나, 부대시설들이 정말 다양해서 좋았습니다. </p>
                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm" style="float:right;">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>수정</span> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>삭제</span>
                                </p>
                            </div>
                        </div>
                        <hr>
                        <div class="d-block mb-5">
                            <div>
                                <h5 class="mt-2 mb-1">하이커 그라운드</h5>
                                <div class="mb-2">
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                </div>
                                <p class="text-muted text-sm">K-POP체험과 미디어 아트 관람을 동시에 할 수 있어서 좋았어요. 감성 사진도 많이 찍으실 수 있어요. 청계천과 가까워서 관람 후 청계천으로 산책을 가는 것도 좋은 코스일 것 같습니다! </p>
                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm" style="float:right;">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>수정</span> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>삭제</span>
                                </p>
                            </div>
                        </div>
                        <hr>
                        <div class="d-block mb-5">
                            <div>
                                <h5 class="mt-2 mb-1">하이커 그라운드</h5>
                                <div class="mb-2">
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                    <i class="fa fa-xs fa-star text-warning"></i>
                                </div>
                                <p class="text-muted text-sm">K-POP체험과 미디어 아트 관람을 동시에 할 수 있어서 좋았어요. 감성 사진도 많이 찍으실 수 있어요. 청계천과 가까워서 관람 후 청계천으로 산책을 가는 것도 좋은 코스일 것 같습니다! </p>
                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm" style="float:right;">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>수정</span> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>삭제</span>
                                </p>
                            </div>
                        </div>
                        <hr>
                    </div>
                </div>
                <div class="mt-2" style="width: 348px; ">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination" style="margin-left: 700px; margin-right: 500px;">
                            <li class="page-item-course"><a class="page-link-course" href="#" aria-label="Previous">Previous</a></li>
                            <li class="page-item-course active"><a class="page-link-course" href="#">1       </a></li>
                            <li class="page-item-course"><a class="page-link-course" href="#">2       </a></li>
                            <li class="page-item-course"><a class="page-link-course" href="#">3       </a></li>
                            <li class="page-item-course"><a class="page-link-course" href="#">4       </a></li>
                            <li class="page-item-course"><a class="page-link-course" href="#">5 </a></li>
                            <li class="page-item-course"><a class="page-link-course" href="#" aria-label="Next">Next</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-6 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="fw-bold text-uppercase text-dark mb-3">Directory</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
                        <ul class="list-inline">
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                        <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
                        <ul class="list-unstyled">
                            <li><a class="text-muted" href="index.html">Rooms</a></li>
                            <li><a class="text-muted" href="category-rooms.html">Map on top</a></li>
                            <li><a class="text-muted" href="category-2-rooms.html">Side map</a></li>
                            <li><a class="text-muted" href="category-3-rooms.html">No map</a></li>
                            <li><a class="text-muted" href="detail-rooms.html">Room detail</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                        <h6 class="text-uppercase text-dark mb-3">Pages</h6>
                        <ul class="list-unstyled">
                            <li><a class="text-muted" href="compare.html">Comparison                                   </a></li>
                            <li><a class="text-muted" href="team.html">Team                                   </a></li>
                            <li><a class="text-muted" href="contact.html">Contact                                   </a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4">
                        <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
                        <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
                        <form action="#" id="newsletter-form">
                            <div class="input-group mb-3">
                                <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
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
                        <p class="text-sm mb-md-0">&copy; 2021, Your company. All rights reserved.</p>
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