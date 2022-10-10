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
        @font-face {
            font-family: 'Pretendard-Regular';
            src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
            font-weight: 400;
            font-style: normal;
        }
        /* 헤더 hover 효과 */
        
        a.hvr:hover {
            color: #FD9F28;
            background-color: #FAF9F8;
            text-decoration: none;
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
    </style>
</head>

<body style="padding-top: 72px;">
    <header class="header header-absolute" style="font-size:30px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="./image/togetherLogo.png" width="30%" height="10%">
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
    <section style="background-image: url(./image/circles_w.png) ">
        <!--  <div class="row  py-6  " style="background-color:; padding-left: 400px; padding-right: 400px; background-image: url(./free_header3.png);">
            <div class="col-12">
            </div>
        </div> -->
        <div class="py-4 mb-3 mt-4">
            <div class="container px-lg-6 ">
                <div class="col-md-8 p-1">
                    <h1 class="display-5 fw-bold text-dark mb-4  py-4">자유게시판</h1>
                    <p class="subtitle" style="color: #907B65;">Best posting</p>
                    <h4>인기게시글</h4>
                </div>
                <div class="row">
                    <div class="col-4">
                        <div class="docs-item" id="ribbon">
                            <div class="mt-3">
                                <div class="card py-3 border-0 shadow ">
                                    <div class="ribbon ribbon-warning ">Third</div>
                                    <div class="ps-4 text-dark" style="padding-top: 30px;">
                                        <a href="#" class="text-decoration-none">
                                            <h6 class="h6 text-black text-decoration-none">스키장 싸게 가는 꿀팁 대방출 </h6>
                                        </a>
                                        <span class="text-muted text-sm">조회수 100 | 댓글 10</span>
                                        <p class="text-end pe-4">Written by 스키드</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 ">
                        <div class="docs-item " id="ribbon ">
                            <div class="mt-3 ">
                                <div class="card py-3 border-0 shadow ">
                                    <div class="ribbon ribbon-warning ">Third</div>
                                    <div class="ps-4 text-dark" style="padding-top: 30px;">
                                        <a href="#" class="text-decoration-none">
                                            <h6 class="h6 text-black">맥도날드 신상 꼭 드세요 꼭</h6>
                                        </a>
                                        <span class="text-muted text-sm">조회수 100 | 댓글 10</span>
                                        <p class="text-end pe-4">Written by 맥가이버</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 ">
                        <div class="docs-item" id="ribbon ">
                            <div class="mt-3 ">
                                <div class="card py-3 border-0 shadow ">
                                    <div class="ribbon ribbon-warning ">Third</div>
                                    <div class="ps-4 text-dark" style="padding-top: 30px;">
                                        <a href="#" class="text-decoration-none">
                                            <h6 class="h6 text-black">재밌는 영화 추천합니다 </h6>
                                        </a>
                                        <span class="text-muted text-sm">조회수 100 | 댓글 10</span>
                                        <p class="text-end pe-4">Written by 랭보</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container px-6">
            <div class="row">
                <div class="justify-content-start col-3  ps-4 pt-3">
                    <p class="text-muted">total 1000 messages </p>
                </div>
                <div class="d-flex justify-content-end align-items-end mb-4  col-9">
                    <form action="#" class="border rounded">
                        <div class="row">
                            <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                                <select class="selectpicker" title="검색분류" data-style="btn-form-control">
                                    <option value="small">전체</option>
                                    <option value="medium">제목</option>
                                    <option value="large">글쓴이</option>
                                    <option value="x-large">내용</option>
                                </select>
                            </div>
                            <div class="col-lg-5 d-flex align-items-center form-group">
                                <input class="form-control border-0 shadow-0" type="text" name="search" placeholder="검색 키워드를 입력하세요.">
                            </div>

                            <div class="col-lg-4 d-grid text-start ">
                                <button class="btn btn-outline-light text-black " type="submit"> Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="list-group  mb-5">
                <div class="table-responsive mb-3">
                    <table class="table table-striped ">
                        <thead class="text-white" style="background-color: #907B65;">
                            <tr class="border-0 text-center">
                                <th class="center col-1">no</th>
                                <th class="col-6">title</th>
                                <th class="col-3">writer</th>
                                <th class="col-1">file</th>
                                <th class="col-1">date</th>
                            </tr>
                        </thead>
                        <tbody class="text-sm">
                            <tr>
                                <td class="text-center">10</td>
                                <td class="">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                        안녕하세요 처음 글 남겨욧<span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">쓰니쓰니</td>
                                <td class="text-center"><i class="fas fa-file"></i></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">9</td>
                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                        노래불러요@!<span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">파인애플</td>
                                <td class="text-center"><i class="fas fa-file"></i></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">8</td>
                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                        오랜만에 글 남깁니다...<span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">포도</td>
                                <td class="text-center"><i class="fas fa-file"></i></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">7</td>

                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                        여행사 상품 가격 적당한지 봐주세요 <span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">야인</td>
                                <td class="text-center"></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">6</td>

                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                    최근에 경주 갔다 오신분 계실까요 <span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">곰곰</td>
                                <td class="text-center"><i class="fas fa-file"></i></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">5</td>

                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                    스키장 싸게 가는 꿀팁 방출 <span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">랑랑</td>
                                <td class="text-center"><i class="fas fa-file"></i></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">4</td>
                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                    심심합니다 <span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">뽀로로</td>
                                <td class="text-center"></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">3</td>
                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                    좋은 여행지 소개할게요 <span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">루피</td>
                                <td class="text-center"><i class="fas fa-file"></i></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">2</td>
                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                    날이 너무 추워졌어요 <span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">둘리</td>
                                <td class="text-center"></td>
                                <td class="">2022.10.10</td>
                            </tr>
                            <tr>
                                <td class="text-center">1</td>
                                <td class="fw-bold">
                                    <a href="#" class="fw-bold text-black text-decoration-none ">
                                    여름이 가서 너무너무 좋습니다 얏호! <span class="text-muted fw-light"> - 3 comments</span>
                                    </a>
                                </td>
                                <td class="text-center">길동</td>
                                <td class="text-center"><i class="fas fa-file"></i></td>
                                <td class="">2022.10.10</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row mb-3 mt-2">
                    <div class="col-8">
                        <nav aria-label="Page navigation example pt-1">
                            <ul class="pagination justify-content-end ">
                                <li class="page-item disabled ">
                                    <a class="page-link " href="# " tabindex="-1 ">Previous</a>
                                </li>
                                <li class="page-item "><a class="page-link " href="# ">1</a></li>
                                <li class="page-item "><a class="page-link " href="# ">2</a></li>
                                <li class="page-item "><a class="page-link " href="# ">3</a></li>
                                <li class="page-item "><a class="page-link " href="# ">4</a></li>
                                <li class="page-item "><a class="page-link " href="# ">5</a></li>
                                <li class="page-item "><a class="page-link " href="# ">6</a></li>
                                <li class="page-item ">
                                    <a class="page-link " href="# ">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="text-end col-4">
                        <button class="btn btn-outline-dark">write</button>
                    </div>
                </div>


            </div>
        </div>
    </section>
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