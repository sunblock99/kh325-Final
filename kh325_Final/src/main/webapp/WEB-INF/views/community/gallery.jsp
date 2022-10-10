<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,800" rel="stylesheet" />

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
    <link rel="stylesheet" href="css/addGallery.css">
    <link rel="stylesheet" href="css/font.css">

    <!-- <link href="css/addSearch.css" rel="stylesheet" /> -->
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <script src="https://kit.fontawesome.com/d5ea4955cb.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>


<body style="padding-top: 56px; width: 120%; margin-left:-10%;;">
    <header class="header">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
            <div class="container-fluid">
                <div class="d-flex align-items-center">
                    <a class="navbar-brand py-1" href="index.html"><img src="img/logo.svg" alt="Directory logo"></a>
                    <!-- <a class="navbar-brand py-1" href="index.html"><img src="pic/together_logo.png" alt="Directory logo" style="width: 138px; height: 31px;"></a> -->
                    <form class="form-inline d-none d-sm-flex" action="#" id="search">
                        <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3">
                            <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span
                                    class="sr-only">What are you looking for?</span></label>
                            <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
                        </div>
                    </form>
                </div>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <!-- Navbar Collapse -->
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
                        <div class="input-label-absolute input-label-absolute-left w-100">
                            <label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span
                                    class="sr-only">What are you looking for?</span></label>
                            <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search" type="search">
                        </div>
                    </form>
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Home</a>
                            <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real
                                    Estate <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
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
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span
                                                                class="badge badge-info-light ms-1">New</span> </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Restaurants</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-3">
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Rooms</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top </a>
                                                    </li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right
                                                        </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Blog</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Pages</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-3">
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Pages</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base <span
                                                                class="badge badge-info-light ms-1">New</span> </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base &mdash;
                                                            Topic<span class="badge badge-info-light ms-1">New</span>
                                                        </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions <span
                                                                class="badge badge-info-light ms-1">New</span> </a></li>
                                                </ul>
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">Host</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-3">
                                                <!-- Megamenu list-->
                                                <h6 class="text-uppercase">User</h6>
                                                <ul class="megamenu-list list-unstyled">
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms </a>
                                                    </li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages </a>
                                                    </li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice <span
                                                                class="badge badge-info-light ms-1">New</span> </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span
                                                                class="badge badge-info-light ms-1">New</span> </a></li>
                                                    <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail <span
                                                                class="badge badge-info-light ms-1">New</span> </a></li>
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
                        <li class="nav-item"><a class="nav-link" href="login.html">Sign in</a></li>
                        <li class="nav-item"><a class="nav-link" href="signup.html">Sign up</a></li>
                        <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="user-add-0.html">Add a listing</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /Navbar -->
    </header>

    <section class="circle1">
        <section class="circle2">
            <section class=" position-relative pt-5 pb-4 " style="background-color: rgba(255, 193, 121, 0.295); width: 120%; margin-left:-10%;;">
                <!-- <img class="bg-image" src="img/photo/photo-1467987506553-8f3916508521.jpg" alt=""> -->
                <div class="container">
                    <div class="row">
                        <!-- <div class="col-lg-6 "> -->
                        <div class="card_title">
                            <!-- <div class="card-body p-5"><strong class="text-uppercase text-secondary d-inline-block mb-2 text-sm">tour gallary</strong> -->
                            <p class="form-label2">together</p>
                            <h1 class="mb-3" style="font-size: 3.5rem;">갤러리</h1>
                            <!-- <h1 class="mb-3">갤러리</h1> -->
                            <p class="text-muted" style="font-size: 1.1rem; font-weight: bold;">투게더 회원들이 직접 찍고 게시한 아름다운 사진들을 감상해보세요!</p>
                            <!-- <a class="btn btn-link p-0" href="post.html">
                                <i class="fa-solid fa-image me-2"></i>이미지 업로드 <i class="fa fa-long-arrow-alt-right"></i>
                            </a> -->
                            <!-- <button class="btn btn-primary" type="submit">
                                <i class="fa-solid fa-image me-2"></i>이미지 업로드
                            </button> -->


                            <div class="pb-">
                                <div class="collapse" id="addPictures">
                                    <!-- 파일업로드 테스트 -->
                                    <div id="root">
                                        <div class="contents mb-4">
                                            <div class="upload-box">
                                                <div id="drop-file" class="drag-file">
                                                    <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
                                                    <p class="message">Drag files to upload</p>
                                                    <img src="" alt="미리보기 이미지" class="preview">
                                                </div>
                                            </div>
                                            <div class="upload-box ms-3" style="position: relative;">
                                                <input class="form-control-addTag " style="top:0;" type="search" name="search" placeholder="제목을 입력해주세요" id="form_search">
                                                <input class="form-control-addTag " style="top:30%;" type="search" name="search" placeholder="태그를 입력해주세요" id="form_search">

                                                <div class="uploadButtons">
                                                    <label class="file-label " for="chooseFile">
                                                        <i class="fa-solid fa-image"></i>&nbsp; Choose File
                                                    </label>
                                                    <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
                                                    <div class="submitButton file-label" id="submitButton">
                                                        <button onclick="javascript:uploadConfirm()" class="upbtn">
                                                            <i class="fa-solid fa-cloud-arrow-up"></i>&nbsp; Upload
                                                        </button>
                                                        <!-- <i class="fa-solid fa-cloud-arrow-up"></i> &nbsp;Upload -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 파일업로드 끝-->
                                </div>
                                <div class="mt-3">
                                    <button class="btn btn-link btn-collapse  text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#addPictures" aria-expanded="false" aria-controls="addPictures" data-expanded-text="접기" data-collapsed-text="이미지 게시하기">이미지 게시하기</button>
                                </div>

                            </div>



                        </div>
                        <!-- </div> -->
                    </div>
                    <!-- </div> -->
                </div>
            </section>

            <!-- 검색바 테스트 -->
            <div class="s004 pt-5">
                <form>
                    <fieldset>
                        <legend># &nbsp;&nbsp;태그 검색</legend>
                        <div class="inner-form ">
                            <div class="input-field shadow" style="border-radius: 50%;">
                                <input class="form-control " id="choices-text-preset-values" type="text" placeholder="Type to search..." />
                                <button class="btn-search " type="button">
                                    <i class="fa-solid fa-magnifying-glass" style="font-size: 1.5rem;"> </i>
                                    <!-- <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                <path
                                    d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
                                </path>
                            </svg> -->
                                </button>
                            </div>
                        </div>
                        <div class="suggestion-wrap ">
                            <span class="shadow">서울</span>
                            <span class="shadow">테마공원</span>
                            <span class="shadow">맛집</span>
                            <span class="shadow">파노라마</span>
                            <span class="shadow">장미꽃</span>
                        </div>
                    </fieldset>
                </form>
            </div>
            <!-- 검색바 -->
            <!-- <div class="container-fluid py-4 px-lg-0">
        <div class="row mb-3">
            <div class="col-lg-9" style="margin: auto;">
                <div class="col-lg-12 ">
                    <form class=" " action="#">
                        <div class="mb-4">
                            <label class=" text-lg pb-3" style="font-weight: bold;" for="form_search"># 태그 검색</label>
                            <div class="input-label-absolute input-label-absolute-left">
                                <div class="label-absolute ps-2">
                                    <i class="fa fa-search"></i>
                                </div>
                                <input class="form-control shadow ps-5" style="height: 45px;" type="search" name="search" placeholder="What are you seraching for?" id="form_search">

                            </div>

                        </div>
                        <div></div>
                    </form>
                </div>
            </div>
        </div>
    </div> -->
            <div class="row">
                <div class="col-lg-9" style="margin: auto;">
                    <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4 mt-4">
                        <!-- <div class="me-3">
                        <p class="mb-3 mb-md-0"><strong>12</strong> results found</p>
                    </div> -->
                        <div></div>
                        <div>
                            <label class="form-label me-2" for="form_sort">Sort by</label>
                            <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                                <option value="sortBy_0">Most popular </option>
                                <option value="sortBy_1">Recommended </option>
                                <option value="sortBy_2">Newest </option>
                                <option value="sortBy_3">Oldest </option>
                                <option value="sortBy_4">Closest </option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class=" grid-wrapper pb-3">
                            <div class="box">
                                <div class="gallery-defalt card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/16/2850616.jpg);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <!-- <a href=" " data-bs-toggle="modal" data-bs-target="#deletePic" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a> -->
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="box">
                                <!-- <img src="https://t1.daumcdn.net/cfile/tistory/996333405A8280FC23" alt="" /> -->
                                <div class="gallery-defalt card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://t1.daumcdn.net/cfile/tistory/99E937495DCE453C31);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.6" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="tall box">
                                <!-- <img src="https://t1.daumcdn.net/cfile/blog/2668933953157BC916" alt=""> -->
                                <div class="gallery-tall card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://t1.daumcdn.net/cfile/blog/2668933953157BC916);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="wide box">
                                <!-- <img src="https://blog.kakaocdn.net/dn/bVQKdP/btqGgkxfDTy/bX20mCxhBG68oFlRWlpMgK/img.jpg" alt="" /> -->
                                <div class="gallery-wide card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://blog.kakaocdn.net/dn/bVQKdP/btqGgkxfDTy/bX20mCxhBG68oFlRWlpMgK/img.jpg);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>

                            </div>
                            <div class="box">
                                <!-- <img src=" https://images.unsplash.com/photo-1558980663-3685c1d673c4?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1000&amp;q=60" alt="" /> -->
                                <div class="gallery-defalt card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://images.unsplash.com/photo-1558980663-3685c1d673c4?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1000&amp;q=60);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="tall box">
                                <!-- <img src="https://images.unsplash.com/photo-1588499756884-d72584d84df5?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=2134&amp;q=80" alt="" /> -->
                                <div class="gallery-tall card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://images.unsplash.com/photo-1588499756884-d72584d84df5?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=2134&amp;q=80);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="big box">
                                <!-- <img src="https://t1.daumcdn.net/cfile/blog/2668933953157BC916" alt="" /> -->
                                <div class="gallery-big card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://t1.daumcdn.net/cfile/blog/2668933953157BC916);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="box">
                                <!-- <img src="https://images.unsplash.com/photo-1588247866001-68fa8c438dd7?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=564&amp;q=80" alt="" /> -->
                                <div class="gallery-defalt card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://images.unsplash.com/photo-1588247866001-68fa8c438dd7?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=564&amp;q=80);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="tall box">
                                <!-- <img src="https://images.unsplash.com/photo-1588224575346-501f5880ef29?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=700&amp;q=80" alt="" /> -->
                                <div class="gallery-tall card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://images.unsplash.com/photo-1588224575346-501f5880ef29?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=700&amp;q=80);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="box">
                                <!-- <img src="https://images.unsplash.com/photo-1588414734732-660b07304ddb?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=675&amp;q=80" alt="" /> -->
                                <div class="gallery-defalt card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://images.unsplash.com/photo-1588414734732-660b07304ddb?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=675&amp;q=80);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>


                            <div class="wide box">
                                <!-- <img src="https://images.unsplash.com/photo-1588263823647-ce3546d42bfe?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=675&amp;q=80" alt="" /> -->
                                <div class="gallery-wide card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://images.unsplash.com/photo-1547234935-80c7145ec969?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1353&amp;q=80);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                            <div class="box">
                                <!-- <img src="https://images.unsplash.com/photo-1587732608058-5ccfedd3ea63?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1350&amp;q=80" alt="" /> -->
                                <div class="gallery-defalt card-img-top overflow-hidden dark-overlay bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style="background-image: url(https://images.unsplash.com/photo-1547234935-80c7145ec969?ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1353&amp;q=80);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">Blue Hill</h4>
                                        <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white" style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                        <a href="#;" onclick="deletePic();" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a>
                                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> • TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                창원 장미공원, 경상남도 창원시, 근린공원, 테마공원, 장미꽃, 파노라마
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 신고 모달 -->
                        <div class="modal fade" id="exclaim" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exclaimLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exclaimLabel">게시글 신고하기 <i class="fa-solid fa-bullhorn fas "></i></h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="row">
                                                <div class="form-group">
                                                    <label class="form-label" for="area-form">신고사유</label>
                                                    <select class="selectpicker form-control bg-gray-200 " name="reason " id="area-form" data-style="btn-selectpicker " title="신고사유를 선택하세요.">
                                                        <option value="insult" >욕설 </option>
                                                        <option value="fraud ">사기행위 </option>
                                                        <option value="lie">사실관계과 다름 </option>
                                                        <option value="rest">기타</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group pt-3">
                                                <label class="form-label" for="find_text">신고내용</label>
                                                <textarea class="find_text form-control bg-gray-200 " id="" name="find_text" cols="10" rows="4" placeholder="신고 내용을 40자 이내로 작성하세요."></textarea>
                                                <div class="text-mute test_cnt">(0 / 40)</div>
                                            </div>
                                            <div class="form-group pt-3 text-end">
                                                <input type="submit" class="btn btn-outline-dark" value="신고하기">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--신고 모달 끝-->



                        <!-- Pagination -->
                        <nav aria-label="Page navigation example">
                            <ul class="pagination pagination-template d-flex justify-content-center">
                                <li class="page-item">
                                    <a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-6 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="fw-bold text-uppercase text-dark mb-3">
                            Directory</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing.
                        </p>
                        <ul class="list-inline">
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a>
                            </li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a>
                            </li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a>
                            </li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a>
                            </li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                        <h6 class="text-uppercase text-dark mb-3">
                            Rentals</h6>
                        <ul class="list-unstyled">
                            <li><a class="text-muted" href="index.html">Rooms</a></li>
                            <li><a class="text-muted" href="category-rooms.html">Map
                                    on
                                    top</a></li>
                            <li><a class="text-muted" href="category-2-rooms.html">Side
                                    map</a></li>
                            <li><a class="text-muted" href="category-3-rooms.html">No
                                    map</a></li>
                            <li><a class="text-muted" href="detail-rooms.html">Room
                                    detail</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                        <h6 class="text-uppercase text-dark mb-3">
                            Pages
                        </h6>
                        <ul class="list-unstyled">
                            <li><a class="text-muted" href="compare.html">Comparison
                                </a>
                            </li>
                            <li><a class="text-muted" href="team.html">Team </a></li>
                            <li><a class="text-muted" href="contact.html">Contact </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-4">
                        <h6 class="text-uppercase text-dark mb-3">
                            Daily Offers & Discounts</h6>
                        <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.
                        </p>
                        <form action="#" id="newsletter-form">
                            <div class="input-group mb-3">
                                <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
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
                        <p class="text-sm mb-md-0">&copy; 2021, Your company. All rights reserved.
                        </p>
                    </div>
                    <div class="col-md-6">
                        <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                            <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="...">
                            </li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="...">
                            </li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="...">
                            </li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="...">
                            </li>
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
    <!-- Price Slider-->
    <script src="vendor/nouislider/nouislider.min.js"></script>
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

    <!-- 내꺼 js -->
    <script src="js/addSearch.js"></script>

    <!-- 사진 업로드 js -->
    <script>
        function DropFile(dropAreaId, fileListId) {
            let dropArea = document.getElementById(dropAreaId);
            let fileList = document.getElementById(fileListId);

            function preventDefaults(e) {
                e.preventDefault();
                e.stopPropagation();
            }

            function highlight(e) {
                preventDefaults(e);
                dropArea.classList.add("highlight");
            }

            function unhighlight(e) {
                preventDefaults(e);
                dropArea.classList.remove("highlight");
            }

            function handleDrop(e) {
                unhighlight(e);
                let dt = e.dataTransfer;
                let files = dt.files;

                handleFiles(files);

                const fileList = document.getElementById(fileListId);
                if (fileList) {
                    fileList.scrollTo({
                        top: fileList.scrollHeight
                    });
                }
            }

            function handleFiles(files) {
                files = [...files];
                // files.forEach(uploadFile);
                files.forEach(previewFile);
            }

            function previewFile(file) {
                console.log(file);
                renderFile(file);
            }

            function renderFile(file) {
                let reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onloadend = function() {
                    let img = dropArea.getElementsByClassName("preview")[0];
                    img.src = reader.result;
                    img.style.display = "block";
                };
            }

            dropArea.addEventListener("dragenter", highlight, false);
            dropArea.addEventListener("dragover", highlight, false);
            dropArea.addEventListener("dragleave", unhighlight, false);
            dropArea.addEventListener("drop", handleDrop, false);

            return {
                handleFiles
            };
        }

        const dropFile = new DropFile("drop-file", "files");
    </script>


    <script>
        var textPresetVal = new Choices('#choices-text-preset-values', {
            removeItemButton: true,
        });
    </script>

    <script>
        function uploadConfirm() {
            alert('사진이 업로드 되었습니다.');
        }
    </script>

    <!-- 하트 클릭시 색변경 -->
    <script>
        for (var i = 0; i < 15; i++) { // 갤러리 박스가 12개라 임시로 12개 해둠,,
            const btn = document.getElementsByName("clickHeart")[i];

            btn.addEventListener('click', function onClick(event) {
                const backgroundColor = btn.style.backgroundColor;

                if (backgroundColor === 'salmon') {
                    btn.style.backgroundColor = '#343a40';
                    alert('좋아요 취소');
                } else {
                    btn.style.backgroundColor = 'salmon';
                    alert('좋아요~');
                }
            });
        }
    </script>

    <!-- 마우스오버 사진커지게 -->
    <script>
        function zoomIn(event) {
            event.target.style.transform = "scale(1.5)";
            event.target.style.zIndex = 50;
            event.target.style.transition = "all 0.5s";
        }

        function zoomOut(event) {
            event.target.style.transform = "scale(1)";
            event.target.style.zIndex = 0;
            event.target.style.transition = "all 0.5s";
        }
    </script>

</body>

</html>