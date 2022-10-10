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
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/like.css">

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
	letter-spacing: 1px;
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

.blockquote-blog{
    padding: 1rem;
    margin: 0 0 1rem;
    margin-bottom: 1rem;
    font-size: 1.25rem;
    border-left: 2px solid #FD9F28;
    font-weight: bolder
    !important;
}

    </style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
    <!--히어로 헤더 시작-->
    <section class="d-flex align-items-center dark-overlay bg-cover mb-2" style="font-family: pB; background-image: url(https://cdn.pixabay.com/photo/2022/04/28/19/47/republic-of-korea-7161860_960_720.jpg); padding-top: 72px;">
        <div class="container py-6 py-lg-6 text-white overlay-content text-center">
            <div class="row">
                <div class="col-xl-10 mx-auto">
                    <h1 class="display-3 fw-bold text-shadow">기록, 旅程</h1>
                    <p class="text-lg text-shadow">way Back Home</p>
                </div>
            </div>
        </div>
    </section>
    <!--히어로 헤더 끝-->
    <!--게시글 본문-->
    <section>
        <div class="container text-pR">
            <div class="row">
                <div class="col-xl-8 col-lg-10 mx-auto">
                    <p class="py-1 mb-5 text-muted  fw-light">
                        <h1 class="py-4 text-pB text-center"> 행복의 나라로 갈테야</h1>
                        
                        <div class="text-center mb-4 pb-4">
                            <a href=""><img class="text-start avatar p-1 me-2" src="img/avatar/avatar-11.jpg" alt=""></a>
                             Written by <a class="fw-bold" href="#" style="color: #907B65;">맥가이버</a>
                             <span class="mx-2">|<span class="mx-2 text-pR">January 16, 2016 | <span class="mx-2 text-muted"> 2 comments </span>
                    </div>
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-8 col-lg-10 mx-auto">
                    <div class="text-content">
                        <figure class="figure mb-5 pb-2"><img class="figure-img img-fluid w-100" src="https://cdn.pixabay.com/photo/2016/04/20/00/41/mcdonalds-1340199_960_720.jpg" alt="Example blog post alt.">
                            <figcaption class="figure-caption text-center">맥도날드 제주점 </figcaption>
                        </figure>

                        <blockquote class="blockquote-blog">이색 테마 여행, 전국 맥도날드 일주기</blockquote>
                        <p>참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에
                            순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지참깨빵위에 순쇠고기 패티2장 특별한 소스 양상추 치즈 피클 양파까지</p>
                        
                            <div class="col-12 text-end">
                                <div class="wrapper text-end">
                                    <a href="javascript:void(0);" class="like-button">
                                        <i class="material-icons not-liked bouncy">
                                        <svg class="svg-icon text-danger">
                                            <use xlink:href="#heart-1"></use>
                                        </svg></i>
                                        <i class="material-icons is-liked bouncy">
                                        <svg class="svg-icon text-white">
                                            <use xlink:href="#heart-1"></use>
                                        </svg>
                                        </i>
                                        <span class="like-overlay"></span>
                                    </a>
                                </div>
                            </div>
                            <br><hr>
                    </div>
                    <!-- 댓글 시작-->
                    <!-- 댓글 리스트 시작-->
                    <div class="mt-5 text-pR">
                        <h6 class="text-muted mb-4">2 COMMENTS</h6>
                        <!--댓글 시작-->
                        <div class="d-flex mb-4">
                            <img class="avatar avatar-lg p-1 flex-shrink-0 me-4" src="img/avatar/avatar-0.jpg" alt="Julie Alma">
                            <div>
                                <h5 class="text-pB">윤다나</h5>
                                <p class="text-sm text-muted"><i class="far fa-clock"></i> September 23, 2017 at 12:00 am</p>
                                <p class="text-muted">맥도날드는 마음의 고향입니다,</p>
                            </div>
                        </div>
                        <!--댓글 끝-->
                        <!--댓글 시작-->
                        <div class="d-flex mb-4"><img class="avatar avatar-lg p-1 flex-shrink-0 me-4" src="img/avatar/avatar-8.jpg" alt="Louise Armero">
                            <div>
                                <h5 class="text-pB">골드</h5>
                                <p class="text-sm text-muted"><i class="far fa-clock"></i> June 23, 2017 at 12:35 pm</p>
                                <p class="text-muted">정말 무익하고 특이한 여행이네요. 다음에는 버거킹 어떠신가요? </p>
                            </div>
                        </div>
                        <!--댓글 끝-->
                    </div>
                    <!-- / 댓글 리스트 끝-->
                    <!--   댓글 달기 시작-->
                    <div class="mb-5 pb-lg-7">
                        <div class="text-pR" id="leaveComment">
                            <div class="mt-4">
                                <h5 class="mb-4 float-end" style="color:#907B65; ">Leave a comment</h5>
                                <form class="form text-pB" id="comment-form" method="post" action="#">
                                    <div class="mb-4">
                                        <textarea class="form-control" id="comment" rows="4"></textarea>
                                    </div>
                                    <button class="btn btn-outline-dark float-end text-pB" type="submit"><i class="far fa-comment"></i> 댓글 </button>
                                    <a class="btn btn-outline-dark float-start me-2" type=""><i class="fas fa-align-left"></i> 목록 </a>
                                    <a class="btn btn-outline-dark float-start me-2" type=""><i class="fas fa-archive"></i> 수정</a>
                                    <a class="btn btn-outline-dark float-start me-2" data-bs-toggle="modal" data-bs-target="#exclaim" type="">
                                        <i class="fa-solid fa-bullhorn fas"></i> 신고 </a>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--  댓글 달기 끝-->
                    <!-- /comment form-->
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
                                <textarea class="find_text form-control bg-gray-200 " name="find_text" cols="10" rows="4" placeholder="신고 내용을 40자 이내로 작성하세요."></textarea>
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

    <script>
        $(document).ready(function() {
            $('.like-button').click(function() {
                $(this).toggleClass('is-active');
            })
        })
    </script>

</body>

</html>