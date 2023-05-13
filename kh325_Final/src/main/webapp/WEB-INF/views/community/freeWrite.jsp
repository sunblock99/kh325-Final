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
    <title>TOGETHER, to GET THERE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${path }/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path }/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path }/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path }/resources/css/customPHY.css">
    <link rel="stylesheet" href="${path }/resources/css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path }/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="${path }/resources/css/font.css">
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
    <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <section style="background-image: url(${path }/resources/image/circles_w.png); background-repeat: no-repeat; height: 1250px; ">
        <!--  <div class="row  py-6  " style="background-color:; padding-left: 400px; padding-right: 400px; background-image: url(./free_header3.png);">
            <div class="col-12">
            </div>
        </div> -->
        <div class="py-4 mb-3 mt-4">
            <div class="container px-lg-6 text-center pt-5 fw-bolder ">
                <p class="h4" style="color:#907B65;">자유게시판</p>
                <h1 class="h1">게시판글쓰기</h1>
                <p class="text-muted h6">투게더에 멋진 게시글을 남겨주세요</p>
            </div>
        </div>
        <c:set var="now" value="<%=new java.util.Date()%>" />
        <div class="container px-6 py-1">
            <div class="py-4 px-5">
                <div class="container">
                    <div class="mb-2 text-end">
                        <p> Written by <span class="fw-bold" href="#" style="color: #907B65;">${loginMember.userName }</span><span class="mx-1">/</span> <fmt:formatDate value="${now}" type="date" dateStyle="full" /> <span class="mx-1"></span></p>
                    </div>
                    <div class="row">
                        <div class=" mb-5 mb-md-0">
                            <form class="form" id="contact-form" method="post" action="${path }/community/writefree" enctype="multipart/form-data" >
                            	<input type="text" name="userNo" value="${loginMember.userNo }" hidden>
                                <div class="mb-4">
                                    <label class="form-label" for="email">TITLE</label>
                                    <input class="form-control" type="text" name="title" id="" placeholder="제목을 입력하세요." required="required">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label" for="message">MESSAGE</label>
                                    <textarea class="form-control" rows="16" name="content" id="content" placeholder="내용을 작성하세요." required="required"></textarea>
                                </div>
                                <div class="mb-4" style="padding-right: 500px;">
                                    <label class="form-label" for="email">FILE</label>
                                    <input class="form-control" type="file" name="upfile" id="upfile" placeholder="" value="null">
                                </div>
                                <div class="mb-4">
                                    <div class="row text-end">
                                        <div class="">
                                            <button class="btn btn-outline-warning text-black font-weight-bold" onclick="location.href='${path}/community/freeboardList'"><i class="fas fa-align-left"></i> 리스트로</button>
                                            <button class="btn btn-warning font-weight-bold " type="submit"><i class="fas fa-pen"></i> 글올리기</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
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
                        <img src="${path }/resources/image/togetherLogo.png" height="60" width="140" alt="">
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
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/visa.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/mastercard.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/paypal.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/western-union.svg" alt="..."></li>
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
    <script src="${path }/resources/vendor/jquery/jquery.min.js "></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js "></script>
    <!-- Smooth scroll-->
    <script src="${path }/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script>
    <!-- Bootstrap Select-->
    <script src="${path }/resources/vendor/bootstrap-select/js/bootstrap-select.min.js "></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path }/resources/vendor/object-fit-images/ofi.min.js "></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path }/resources/js/theme.js "></script>
</body>

</html>