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
    <link rel="stylesheet" href="${path }/resources/css/customPHY.css">
    <style>
        @font-face {
            font-family: 'pBlack';
            font-weight: 900;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-Black.ttf);
        }
        
        .text-pBlack {
            font-family: 'pBlack';
        }
        
        @font-face {
            font-family: 'pEb';
            font-weight: 800;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-ExtraBold.ttf);
        }
        
        .text-pEb {
            font-family: 'pEb';
        }
        
        @font-face {
            font-family: 'pB';
            font-weight: 700;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-Bold.ttf);
        }
        
        .text-pB {
            font-family: 'pB';
        }
        
        @font-face {
            font-family: 'pSb';
            font-weight: 600;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-SemiBold.ttf);
        }
        
        .text-pSb {
            font-family: 'pSb';
        }
        
        @font-face {
            font-family: 'pM';
            font-weight: 500;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-Medium.ttf);
        }
        
        .text-pM {
            font-family: 'pM';
        }
        
        @font-face {
            font-family: 'pR';
            font-weight: 400;
            font-display: swap;
            letter-spacing: 1px;
            src: url(${path }/resources/font/Pretendard-Regular.ttf);
        }
        
        .text-pR {
            font-family: 'pR';
        }
        
        @font-face {
            font-family: 'pL';
            font-weight: 300;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-Light.ttf);
        }
        
        .text-pL {
            font-family: 'pL';
        }
        
        @font-face {
            font-family: 'pEl';
            font-weight: 200;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-ExtraLight.ttf);
        }
        
        .text-pEl {
            font-family: 'pEl';
        }
        
        @font-face {
            font-family: 'pThin';
            font-weight: 100;
            font-display: swap;
            src: url(${path }/resources/font/Pretendard-Thin.ttf);
        }
        
        .text-pThin {
            font-family: 'pThin';
        }
        
        div {
            font-family: 'pR';
            letter-spacing: -1px;
        }
        /*폰트 끝*/
        
		.txt_post {
		  overflow: hidden;
		  text-overflow: ellipsis;
		  display: -webkit-box;
		  -webkit-line-clamp: 3; /* 라인수 */
		  -webkit-box-orient: vertical;
		  word-wrap:break-word; 
		  line-height: 1.2em;
		  height: 3.6em; /* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
		}
    </style>
    <script type="text/javascript">
	    function popup(pageUrl) {
	        var url = "${path}/community/companionComment";
	        var name = "popup test";
	        var option = "width = 1000, height = 500, top = 100, left = 200, location = no"
	        window.open(pageUrl, name, option);
	    }
    </script>
</head>

<body>
    <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <!-- 헤더 히어로 시작-->
    <section class="hero py-5 py-lg-6 " style="background-image: url(${path }/resources/image/tc_land.png); size: inherit;">

        <div class="container position-relative  w-50">
            <!-- Breadcrumbs -->
            <ol class="breadcrumb ps-0  justify-content-center">
                <li class="breadcrumb-item text-pB"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active text-pB">Community </li>
            </ol>
            <h1 class="hero-heading display-4 fw-bold text-pEb" style="color:seagreen;">Community</h1>
            <div class="row ">
                <div class="col-xl-8 mx-auto ">
                    <form>
                        <p class="text-muted mb-4 text-pB">어느 날 아침눈을 뜨고 귀를 기울여 들어보니 어디선가 멀리서 북소리가 들려왔다. 아득히 먼 곳에서, 아득히 먼 시간속에서 그 북소리는 울려왔다.</p>
                        <div class="input-group text-center"><input class="form-control bg-gray-100 text-pL" type="text" placeholder="나는 왠지 긴 여행을 떠나야만 할 것 같은 생각이 들었다."><button class="btn badge-dark-light" type="submit"><i class="fa fa-search"></i></button></div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- 헤더 히어로 끝-->
    <!-- 베스트 포스트 시작-->
    <section>
        <div class="container text-pB">
            <div class="row py-5 pt-lg-0 mt-lg-n5">
                <c:forEach begin="0" end="2" step="1" var="i">
                <div class="col-lg-4 mb-1 mb-lg-0 text-center">
                    <div class="card border-0 shadow-sm hover-animate h-100">
                        <div class="card-body p-4">
                            <div class="mb-3">
                                <img src="${path }/resources/image/dbq_ye(40x2).png" alt="">
                            </div>
                            <h3 class="h5 text-pB">${bestJourney.get(i).title }</h3>
                            <p class="text-muted text-sm mb-0 word text-pB">${ bestJourney.get(i).content}</p>
                            <a class="stretched-link" href="${path }/community/journeyDetail?journeyNo=${bestJourney.get(i).journeyNo}"> <span class="sr-only">See Topic</span></a>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- 베스트 포스트 끝-->

    <section class="">
        <div class="container">
            <div class="row mb-3">
                <div class="col-md-8">
                    <p class="subtitle text-secondary text-pB">우리들의 소통 공간 </p>
                    <h2 class="h2 text-pB">Community organizer</h2>
                </div>
                <div class="col-md-4 d-lg-flex align-items-center justify-content-end"></div>
            </div>
            <!--자유게시판 시작-->
            <div class="row">
                <div class="col-lg-6 mb-2">
                    <div class="h3 text-dark d-flex mb-4">
                        <div class="col-6">
                            <a class="text-reset text-pB text-decoration-none" href="${path }/community/freeboardList"><span class="py-1 me-1 text-pB"><img src="${path }/resources/image/comm2.png" alt=""></span>자유게시판</a>
                        </div>
                        <div class="col-6 text-end pe-3">
                             <%-- <a href="${path }/community/freeboardList" class=" text-muted p-7 pt-3">+</a> --%>
                        </div>
                    </div>
                    <ul class="list-unstyled p-1 text-pB" style="font-size: 17px;">
                    	<c:if test="${!empty freeList }">
                    	<c:forEach var="freeboard" items="${freeList }">
                        <li class="mb-1 ">
                            <a class="text-decoration-none text-dark" href="${path }/community/freeDetail?freeboardNo=${freeboard.freeBoardNo}">
                                <i class="far fa-file me-2 mr-2"></i>${freeboard.title }
                            </a>
                        </li>
                        </c:forEach>
                        </c:if>
                        
                    </ul>
                </div>
                <!--자유게시판 끝-->
                <!--갤러리 시작-->
                <div class="col-lg-6 mb-2 text-pB">
                    <h2 class="h3 text-dark d-flex align-items-center mb-4 pb-1">
                        <a class="text-reset text-pB text-decoration-none" href="${path }/community/gallery"><span class="py-1 me-1 text-pB"><img src="${path }/resources/image/comm3.png" alt=""></span>사진전</a>
                    </h2>
                    <div class="row gallery ms-n1 me-n1 ">
                    	<c:forEach var="gallery" items="${galleryList}">
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="${gallery.renamedImage }"><img class="img-fluid" src="${gallery.renamedImage }" alt="..."></a>
                        </div>
                    	</c:forEach>
                        
                    </div>
                </div>
                <!--갤러리 끝-->
            </div>
        </div>
    </section>
    <!--커뮤니티 룰 시작 -->
    <section class="bg-gray-100" style="padding-top: 55px; padding-bottom: 55px;">
        <div class="container">
            <div class="text-center pb-lg-2">
                <h2 class="mb-5 text-pB" style="color: #907B65;">Follow the rules of Community </h2>
            </div>
            <div class="row">
                <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                    <div class="px-0 px-lg-3">
                        <div class="mb-3">
                            <img src="${path }/resources/image/r_1.png" alt="">
                        </div>
                        <h5 class="h5 text-pB">욕설을 삼가주세요.</h5>
                    </div>
                </div>
                <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                    <div class="px-0 px-lg-3">
                        <div class="mb-3 ">
                            <img src="${path }/resources/image/r_2.png " alt=" ">
                        </div>
                        <h5 class="h5 text-pB">상업행위는 금지합니다.</h5>
                    </div>
                </div>
                <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                    <div class="px-0 px-lg-3 ">
                        <div class="mb-3 ">
                            <img src="${path }/resources/image/r_3.png " alt=" ">
                        </div>
                        <h5 class="h5 fw-bold text-pB">타인을 비방하지 마세요.</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--커뮤니티 룰 끝 -->
    <section class="py-5 ">
        <div class="container">
            <div class="row ">
                <!--동행 시작 -->
                <div class="col-lg-5 mb-2 ">
                    <h2 class="h3 text-dark d-flex align-items-center mb-4 text-decoration-none">
                        <a class="text-reset text-decoration-none" href="${path}/community/companionList"><span class="py-1 me-1 text-pB"><img src="${path }/resources/image/comm1.png " alt=" "></span>함께가요</a>
                    </h2>
                    
                    <c:set var="index" value="0" />
                    <c:forEach varStatus="status" begin="0" end="1" step="1">
                    <div class="row ">
                    	<c:forEach var="i" begin="${index }" end="${index+1 }" step="1">
                        <div class="col-5 hover-animate" style="background-image: url(${path }/resources/image/postit_1\(250x2\).png); width: 250px; height: 250px; ">
                            <div class="pt-5 ps-4 pe-4 ">
                            	<c:if test="${!empty loginMember }">
                            		<c:if test="${loinMember.userNo == compList.get(i).userNo }">
                                		<a class="text-black text-decoration-none" onclick="popup('${path}/community/compCommentForWriter?companionNo=${compList.get(i).companionNo}&userNo=${compList.get(i).userNo}') ">
                            		</c:if>
                            		<c:if test="${loinMember.userNo ne compList.get(i).userNo }">
                                		<a class="text-black text-decoration-none" onclick="popup('${path}/community/compCommentForSender?companionNo=${compList.get(i).companionNo}&userNo=${compList.get(i).userNo}') ">
                            		</c:if>
                                </c:if>	
                            	<c:if test="${empty loginMember }">
                                	<a class="text-black text-decoration-none" href="${path }/community/companionList">
                                </c:if>	
                                    <p class="text-center blockquote-footer pt-3 text-pB">
                                    	<fmt:formatDate value="${compList.get(i).departureDate }" pattern="yyyy.MM.dd"/>~
                                    	<fmt:formatDate value="${ compList.get(i).closeDate}" pattern="yyyy.MM.dd"/>
                                    </p>
                                    <p class="text-pB">「${ compList.get(i).content}」</p>
                                    <p class="text-end text-muted text-pB">written by ${compList.get(i).userName }</p>
                                </a>
                            </div>
                        </div> 
                        </c:forEach>
                    </div>
                    <c:set var="index" value="${index+2 }" />
					</c:forEach>
                    
                </div>
                <!--동행 끝 -->
                <!-- 블로그 시작 -->
                <div class="col-lg-7 mb-2 ps-5 ">
                    <h2 class="h3 text-dark d-flex align-items-center mb-5 ">
                        <a class="text-reset text-decoration-none" href="${path }/community/journeyList"><span class="py-1 me-1 text-pB"><img src="${path }/resources/image/quote.png " alt=" "></span>블로그</a>
                    </h2>
                    <c:forEach begin="0" end="1" step="1" var="i">
                    <div class="card mb-3 shadow">
                        <div class="card-header text-white h4 text-pB" style="background-image: url(${journeyList.get(i).imgRenamed});height:90px;">
                            ${journeyList.get(i).title }
                            <a href="${path}/community/journeyDetail?journeyNo=${journeyList.get(i).journeyNo}" class="btn btn-light float-end text-pB">GO</a>
                        </div>
                        <div class="card-body " style="height: 120px; ">
                            <p class="card-text text-pEl txt_post" style="font-size:18px;">${journeyList.get(i).content }</p>

                        </div>
                    </div>
                    </c:forEach>
                    
                </div>
                <!-- 블로그 끝 -->

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
      <!-- Main Theme JS file    -->
    <script src="${path }/resources/js/theme.js "></script>
</body>

</html>