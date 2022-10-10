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
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="css/font.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
<script>
    function popup() {
        var url = "file:///C:/Users/USER/Desktop/%ED%8C%80%EA%B3%BC%EC%A0%9C/%ED%8C%8C%EC%9D%B4%EB%84%90/front_final/directory-2-0-1/bootstrap-5/html/find_secretCommnet.html";
        var name = "popup test";
        var option = "width = 1000, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }

    function popup_add() {
        var url = "file:///C:/Users/USER/Desktop/%ED%8C%80%EA%B3%BC%EC%A0%9C/%ED%8C%8C%EC%9D%B4%EB%84%90/front_final/directory-2-0-1/bootstrap-5/html/find_comp_add.html";
        var name = "popup test";
        var option = "width = 500, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }

    function openExForm() {
        var url = "file:///C:/Users/USER/Desktop/%ED%8C%80%EA%B3%BC%EC%A0%9C/%ED%8C%8C%EC%9D%B4%EB%84%90/front_final/directory-2-0-1/bootstrap-5/html/exclaim_form.html";
        var name = "popup test";
        var option = "width = 1200, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }
</script>
<script>
    $(document).ready(function() {
        console.log('11');
        $('.find_text').on('keyup', function() {
            $('.test_cnt').html("(" + $(this).val().length + " / 40)");

            if ($(this).val().length > 40) {
                $(this).val($(this).val().substring(0, 40));
                $('.test_cnt').html("(40 / 40)");
            }
        });
    });
</script>

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
    <section>
        <!--상단 헤더 시작-->
        <div class="hero py-6 mb-5 " style=" background-image: url(./image/header1.png);size: inherit; ">
            <div class="container-fluid pt-5 pb-3 px-lg-5 mb-3 ">
                <div class="row text-center ">
                    <div class=" ">
                        <h1 class="text-hover-success display-4 fw-bolder " style="color: #FD9F28; ">Together, to get there </h1>
                        <p class="lead fa-quote-left fas " style="color: #907B65; "> 즐거움이 두 배가 됩니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <!--상단 헤더 끝-->
        <!--사이드 오거나이저/ 검색 글쓰기 바 시작-->
        <div class="">
            <div class="row pt-4 ps-6 ">
                <div class="col-lg-2 pt-3 shadow rounded mb-6 " style="background-color: ghostwhite; height: 800px; ">
                    <h3 class="mt-2 ms-2 mb-3 h2 "> Organizer</h3>
                    <form class="pe-xl-3 " action="# " autocomplete="off ">
                        <div class="mb-2 ">
                            <label class="form-label" for="form_dates">Dates</label>
                            <div class="datepicker-container datepicker-container-left">
                                <input class="form-control" type="text" name="bookingDate" id="form_dates" placeholder="Choose your dates">
                            </div>
                        </div>
                        <div class="mb-2 ">
                            <label class="form-label" for="area-form">Area</label>
                            <select class="selectpicker form-control " name="area " id="area-form" data-style="btn-selectpicker " title=" ">
                                <option value="seoul" >서울 </option>
                                <option value="gyeonggi ">경기 </option>
                                <option value="jeolla">전라 </option>
                                <option value="gyeongsang">경상</option>
                                <option value="chungcheong">충청 </option>
                                <option value="jeju">제주 </option>
                            </select>
                        </div>
                        <div class="text-center">
                            <input type="submit " class="btn btn-outline-warning btn-lg " value="filter ">
                        </div>

                    </form>
                    <div class="mb-1 mt-2 pe-1 ">
                        <a href="#" data-bs-toggle="modal" data-bs-target="#findComp"><img src="./image/postit_add.png " alt=" " style="width: 280px; "></a>
                    </div>

                    <!-- 동행 구하기 메모 모달 -->
                    <div class="modal fade" id="findComp" tabindex="-1" aria-labelledby="findCompLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-dark-light">
                                    <h1 class="modal-title fs-5 fw-bold" id="findCompLabel">동행 구하기 메모 작성</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body" style="background-image: url(./image/monoon_back.png);">
                                    <form>
                                        <div class="row">
                                            <div class="form-group col-6">
                                                <label for="depart_date" class="form-label">여행출발일</label>
                                                <input type="date" class="form-control" id="depart_date">
                                            </div>
                                            <div class="form-group col-6">
                                                <label class="form-label" for="end_date">여행종료일</label>
                                                <input type="date" class="form-control" id="end_date">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="area-form">지역</label>
                                                <select class="selectpicker form-control " name="area " id="area-form" data-style="btn-selectpicker " title=" ">
                                                <option value="seoul" >서울 </option>
                                                <option value="gyeonggi ">경기 </option>
                                                <option value="jeolla">전라 </option>
                                                <option value="gyeongsang">경상</option>
                                                <option value="chungcheong">충청 </option>
                                                <option value="jeju">제주 </option>
                                            </select>
                                            </div>
                                        </div>

                                        <div class="form-group pt-3">
                                            <label class="form-label" for="find_text">내용</label>
                                            <textarea class="form-control find_text" id="find_text" name="find_text" cols="10" rows="4" placeholder="40자 이내로 작성하세요."></textarea>
                                            <div class="text-muted pb-2 test_cnt">(0 / 40)</div>
                                        </div>
                                        <div class="form-group pt-3 text-end ">
                                            <input type="submit" class="btn btn-outline-muted " value="메모등록">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 동행 구하기 메모 모달 -->

                    <div class=" bg-primary-100 py-4 ">
                        <div class="text-center ">
                            <div class="p-2 ">
                                <p class="subtitle text-sm text-muted ">Need more friends?</p>
                                <h4 class="mb-0 ">follow the Rules,</h4>
                                <h4 class="mb-0 " style="color: #FD9F28; ">Together, </h4>
                                <h4 class=" mb-0 " style="color: #FFCD4A; ">to get there, </h4>
                            </div>
                            <div class="mt-3 container text-start ">

                            </div>

                        </div>
                    </div>
                </div>
                <!--사이드 오거나이저/ 검색 글쓰기 바 끝-->
                <!--게시 포스트잇 시작-->
                <div class="col-lg-9 ">
                    <div class="d-flex justify-content-between align-items-center flex-column flex-md-row ">
                        <div class="ps-7 me-3 text-end ">
                            <p class="mb-3 mb-md-0 "><strong>12</strong> results found</p>
                        </div>

                    </div>
                    <div class=" ps-6 row ">
                        <!-- place item-->
                        <div class="col-sm-6 col-xl-4 hover-animate ">
                            <div class="pe-3 pt-4 " style="background-image: url(./image/brown.png); width: 410px; height: 350px; ">
                                <div class="ps-5 pt-6 mb-3 6 pe-1 text-white fw-bold ">

                                    <p>[date] 2022.10.20~2022.10.20</p>
                                    <p class=" ">[memo] 에버랜드 단체 할인으로 같이 가실분 있으신가요? 비댓 달아주세요오!갸갸갸갸갸갸 </p>
                                    <p class=" ">[writer] 에버랜드처돌이 </p>
                                </div>
                                <div class="text-end pe-4 pt-4 ">
                                    <a href="# " class=" text-white " onclick="popup() "><i class="fa-regular fa-comments fas "> comment</i></a>
                                    <a href="# " class=" text-white "> | <i class="fas fa-trash "></i></a>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white "> | <i class="fa-solid fa-bullhorn fas "></i></a>
                                </div>
                            </div>
                        </div>

                        <!-- place item-->
                        <div class="col-sm-6 col-xl-4 hover-animate ">
                            <div class="pe-3 pt-4 " style="background-image: url(./image/brown.png); width: 410px; height: 350px; ">
                                <div class="ps-5 pt-6 mb-3 6 pe-1 text-white fw-bold ">

                                    <p>[date] 2022.10.20~2022.10.20</p>
                                    <p class=" ">[memo] 에버랜드 단체 할인으로 같이 가실분 있으신가요? 비댓 달아주세요오! </p>
                                    <p class=" ">[writer] 에버랜드처돌이 </p>
                                </div>
                                <div class="text-end pe-4 pt-4 ">
                                    <a href="# " class=" text-white " onclick="popup() "><i class="fa-regular fa-comments fas "> comment</i></a>
                                    <a href="# " class=" text-white "> | <i class="fas fa-trash "></i></a>
                                    <a href="# " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white "> | <i class="fa-solid fa-bullhorn fas "></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- place item-->
                        <div class="col-sm-6 col-xl-4 hover-animate ">
                            <div class="pe-3 pt-4 " style="background-image: url(./image/brown.png); width: 410px; height: 350px; ">
                                <div class="ps-5 pt-6 mb-3 6 pe-1 text-white fw-bold ">

                                    <p>[date] 2022.10.20~2022.10.20</p>
                                    <p class=" ">[memo] 에버랜드 단체 할인으로 같이 가실분 있으신가요? 비댓 달아주세요오! </p>
                                    <p class=" ">[writer] 에버랜드처돌이 </p>
                                </div>
                                <div class="text-end pe-4 pt-4 ">
                                    <a href="# " class=" text-white " onclick="popup() "><i class="fa-regular fa-comments fas "> comment</i></a>
                                    <a href="# " class=" text-white "> | <i class="fas fa-trash "></i></a>
                                    <a href="# " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white "> | <i class="fa-solid fa-bullhorn fas "></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- place item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate ">
                            <div class="pe-3 pt-4 " style="background-image: url(./image/brown.png); width: 410px; height: 350px; ">
                                <div class="ps-5 pt-6 mb-3 6 pe-1 text-white fw-bold ">

                                    <p>[date] 2022.10.20~2022.10.20</p>
                                    <p class=" ">[memo] 에버랜드 단체 할인으로 같이 가실분 있으신가요? 비댓 달아주세요오! </p>
                                    <p class=" ">[writer] 에버랜드처돌이 </p>
                                </div>
                                <div class="text-end pe-4 pb-2 pt-4 ">
                                    <a href="# " class=" text-white " onclick="popup() "><i class="fa-regular fa-comments fas "> comment</i></a>
                                    <a href="# " class=" text-white "> | <i class="fas fa-trash "></i></a>
                                    <a href="# " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white "> | <i class="fa-solid fa-bullhorn fas "></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- place item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate ">
                            <div class="pe-3 pt-4 " style="background-image: url(./image/brown.png); width: 410px; height: 350px; ">
                                <div class="ps-5 pt-6 mb-3 6 pe-1 text-white fw-bold ">

                                    <p>[date] 2022.10.20~2022.10.20</p>
                                    <p class=" ">[memo] 에버랜드 단체 할인으로 같이 가실분 있으신가요? 비댓 달아주세요오! </p>
                                    <p class=" ">[writer] 에버랜드처돌이 </p>
                                </div>
                                <div class="text-end pe-4 pb-2 pt-4 ">
                                    <a href="# " class=" text-white " onclick="popup() "><i class="fa-regular fa-comments fas "> comment</i></a>
                                    <a href="# " class=" text-white "> | <i class="fas fa-trash "></i></a>
                                    <a href="# " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white "> | <i class="fa-solid fa-bullhorn fas "></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- place item-->
                        <div class="col-sm-6 col-xl-4 mb-5 hover-animate ">
                            <div class="pe-3 pt-4 " style="background-image: url(./image/brown.png); width: 410px; height: 350px; ">
                                <div class="ps-5 pt-6 mb-3 6 pe-1 text-white fw-bold ">

                                    <p>[date] 2022.10.20~2022.10.20</p>
                                    <p class=" ">[memo] 에버랜드 단체 할인으로 같이 가실분 있으신가요? 비댓 달아주세요오! </p>
                                    <p class=" ">[writer] 에버랜드처돌이 </p>
                                </div>
                                <div class="text-end pe-4 pb-2 pt-4 ">
                                    <a href="# " class=" text-white " onclick="popup() "><i class="fa-regular fa-comments fas "> comment</i></a>
                                    <a href="# " class=" text-white "> | <i class="fas fa-trash "></i></a>
                                    <a href="# " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white "> | <i class="fa-solid fa-bullhorn fas "></i></a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <nav aria-label="Page navigation example ">
                        <ul class="pagination pagination-template d-flex justify-content-end ">
                            <li class="page-item ">
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
            <!--게시 포스트잇 끝-->
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
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none ">
        <!-- Main block - menus, subscribe form-->
        <div class="py-5 bg-gray-200 text-muted ">
            <div class="container ">
                <div class="row ">
                    <div class="col-lg-4 mb-5 mb-lg-0 ">
                        <img src="./image/togetherLogo.png " height="60 " width="140 " alt=" ">
                        <div class="text-black mb-4 ps-3 ms-sm-4 " style="font-family:pM; ">TOGETHER, to GET THERE</div>
                        <div class="mt-4 pt-2 ps-3 ms-sm-4 ">
                            <span class="text-muted text-sm ">김나임ㅣ김태은ㅣ박혜연ㅣ선형채ㅣ윤하영ㅣ정수아ㅣ정원일</span>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-5 mb-lg-0 pt-4 ms-4 ">
                        <h6 class="text-dark mb-2 ">CONTACT
                            <ul class="list-unstyled ">
                                <li class="mt-sm-2 " style="font-family:pEl; letter-spacing:0px; ">
                                    <a class="text-muted " href="category-rooms.html ">1544-9970</a>
                                </li>
                            </ul>
                        </h6>

                        <h6 class="text-dark mb-2 ">ADDRESS
                            <ul class="list-unstyled ">
                                <li class="mt-sm-2 " style="font-family:pEl; letter-spacing:0px; ">
                                    <a class="text-muted " href="category-rooms.html ">서울특별시 강남구 테헤란로14길 6 남도빌딩<br><br></a>
                                </li>
                            </ul>
                        </h6>
                    </div>

                    <div class="col-lg-3 pt-4 " style="font-family:pB; ">
                        <h6 class="fs-5 text-dark mb-2 ">정기구독 & 뉴스레터</h6>
                        <p class="mb-3 "> 투게더의 소식을 정기적으로 받아보세요</p>
                        <form action="# " id="newsletter-form ">
                            <div class="input-group mb-3 ">
                                <input class="form-control bg-transparent border-dark border-end-0 " type="email " placeholder="Your Email Address " aria-label="Your Email Address ">
                                <button class="btn btn-outline-dark border-start-0 " type="submit "> <i class="fa fa-paper-plane text-lg "></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright section of the footer-->
        <div class="py-4 fw-light bg-gray-800 text-gray-300 ">
            <div class="container ">
                <div class="row align-items-center ">
                    <div class="col-md-6 text-center text-md-start ">
                        <p class="text-sm mb-md-0 ">&copy; 2022, TOGETHER. All rights reserved.
                        </p>
                    </div>
                    <div class="col-md-6 ">
                        <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end ">
                            <li class="list-inline-item "><img class="w-2rem " src="img/visa.svg " alt="... "></li>
                            <li class="list-inline-item "><img class="w-2rem " src="img/mastercard.svg " alt="... "></li>
                            <li class="list-inline-item "><img class="w-2rem " src="img/paypal.svg " alt="... "></li>
                            <li class="list-inline-item "><img class="w-2rem " src="img/western-union.svg " alt="... "></li>
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