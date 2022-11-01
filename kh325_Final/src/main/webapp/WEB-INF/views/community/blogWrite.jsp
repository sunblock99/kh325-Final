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
    <script>
        function addTags() {
            var str = document.getElementById("addTag").value;
            var str = '#' + str + ',';
            var tagList = document.getElementById("tagList").value + ' ' + str;
            document.getElementById("tagList").value = tagList;
            document.getElementById("addTag").value = '';
            document.getElementById("addTag").focus();
            return;
        }
    </script>
    <link rel="stylesheet" href="css/font.css">
    <style>
    /*폰트 적용*/
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Black.ttf);
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-ExtraBold.ttf);
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Bold.ttf);
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-SemiBold.ttf);
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Medium.ttf);
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Regular.ttf);
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Light.ttf);
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-ExtraLight.ttf);
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Thin.ttf);
    }
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
    /*폰트 끝*/
    </style>
</head>

<body>
    <jsp:include page="/WEB-INF/views/common/whiteHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <!--상단 헤더 히어로 시작-->
    <section class="d-flex align-items-center dark-overlay bg-cover mb-2" style="background-image: url(https://cdn.pixabay.com/photo/2022/04/28/19/47/republic-of-korea-7161860_960_720.jpg); padding-top: 72px;">
        <div class="container py-6 py-lg-6 text-white overlay-content text-center">
            <div class="row">
                <div class="col-xl-10 mx-auto">
                    <h1 class="display-3 fw-bold text-shadow">기록, 旅程</h1>
                    <p class="text-lg text-shadow">way Back Home</p>
                </div>
            </div>
        </div>
    </section>
    <!--상단 헤더 히어로 끝-->
    <!-- 글쓰기 폼 시작 -->
    <section class="py-6 mb-3">
        <div class="container">
            <form action="${path}/community/journeyWrite" method="post" enctype="multipart/form-data">
            <c:set var="now" value="<%=new java.util.Date()%>" />
            <input type="text" name="userNo" value="${loginMember.userNo }" hidden="hidden"/>
                <div class="row">
                    <div class="px-lg-7 px-3">
                        <h2 class="text-pEb">
                            Post your <span style="color: #907B65;">Story</span>
                        </h2>
                        <div class="mb-3 py-2 text-end text-pM">
                            <a href=""><img class="avatar p-1 me-2" src="${loginMember.userAvatar}" alt=""></a>
                             Written by <a class="fw-bold" href="#" style="color: #907B65;">${loginMember.userName }</a><span class="mx-1">|</span> 
                             <fmt:formatDate value="${now}" type="date" dateStyle="full" />  <span class="mx-1">|</span>
                        </div>
                        <div class="mb-3 text-pB">
                            <label class="form-label" for="title">TITLE</label>
                            <input class="form-control" name="title" type="text">
                        </div>
                        <div class="mb-3 text-pB">
                            <label class="form-label" for="text">SUB TITLE</label>
                            <input type="text" name="subTitle" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label text-pB" for="image">Main image</label>
                            <input type="file" accept="image/*" name="upfile" id="image" class="form-control">
                        </div>
                        <div class="mb-3 text-pB border-bottom pb-4">
                            <div class="row">
                                <label class="form-label text-pB" for="form_type">해시태그</label>
                                <div class="col-lg-3">
                                    <input type="text" name="addTag" id="addTag" class="form-control">
                                </div>
                                <div class="col-lg-1" style="padding:0px">
                                    <p class="btn btn-outline-warning" onclick="addTags();" style="width: 100%;"> 등록</p>
                                </div>
                                <div class="col-lg-8 mx-auto ">
                                    <input type="text" class=" form-control bg-gray-100 " name="hashTag" id="tagList" value="#가을, #행복,">
                                </div>
                            </div>
                        </div>
                        <div class="row pt-3">
                            <div class="mb-3">
                                <label class="form-label text-pB" for="content">content</label>
                                <textarea class="form-control" name="content" id="content" cols="30" rows="21"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col-6 text-start">
                                <input type="submit" class="btn btn-outline-warning" value="to Blog main">
                            </div>
                            <div class=" col-6 text-end">
                                <input type="submit" class="btn btn-outline-warning" value="post submit">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- 글쓰기 폼 시작 -->
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
    <script src="${path }/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${path }/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${path }/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path }/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path }/resources/js/theme.js"></script>
</body>

</html>