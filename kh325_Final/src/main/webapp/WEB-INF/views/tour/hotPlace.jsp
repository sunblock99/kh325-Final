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
<link rel="stylesheet"
	href="${path}/resources/vendor/nouislider/nouislider.css">
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
<link rel="stylesheet"
	href="${path}/resources/vendor/magnific-popup/magnific-popup.css">

<!-- theme stylesheet-->
<link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="${path}/resources/css/customKNI.css">
<link rel="stylesheet" href="${path}/resources/font.css">
<!-- Favicon-->
<link rel="shortcut icon" href="${path}/resources/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

</head>

<style>
    /* 배경 원 */
    .hot-circle {
        background-size: 900px 900px;
        z-index: 50;
        background-image: url(${path}/resources/image/hotPlaceBackCircle.png);
        background-repeat: no-repeat;
        background-position-x: -630px;
        background-position-y: 100px;
    }
    
    .hot-circle2 {
        background-size: 400px 400px;
        z-index: -100;
        background-image: url(${path}/resources/image/hotPlaceBackCircle.png);
        background-repeat: no-repeat;
        background-position-x: 1700px;
        background-position-y: 900px;
    }
	 /*폰트 적용*/
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
	</style>


<jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
			<jsp:param value="예아바디" name="title"/>
</jsp:include>

<!--  style="background-image: url(/html/image/hotPlaceBackCircle.png); background-repeat: no-repeat;" -->

<body class="hot-circle2">
    <section class="hot-circle" style="background-color: #ffddb688;">
        <div class="container py-4 pt-7">
            <div class="container-typing row">

                <!-- 타이핑 -->
                <div class="col-lg-7 mb-md-0" style="margin-top:15vh;">
                    <p class="fs-4 text-muted pb-3">지금 떠오르는 핫스팟을 투게더에서 확인 해보세요!</p>
                    <div class="display-4">
                        <p style="font-family: pEb;">현재 많은 이들이 찾고 있는 곳은? <br></p>
                        <p class="mt-4">
                            <span style="font-family: pB;" class="typed-text"></span>
                            <span class="cursor">&nbsp;</span>

                            <!-- 타이핑 띠 -->
                            <div class="progress rounded-0" style="height: 8px; top: 72px;">
                                <div class="progress-bar" role="progressbar" style="width: 0px;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>

                        </p>
                    </div>

                    <!-- 버튼 -->
                    <div class="row pt-lg-5 mb-3" style="font-family: pR; font-size: 25px; line-height:45px;">
                        <div class="col-lg-3 d-grid me-0" style="text-align:center;">
                            <div class="wrapper-switch w-100">
                                <input type="checkbox" <c:if test="${hotPlaceList[1].contentTypeId eq 12}">checked</c:if> id="switch-1" onclick="location.href='${path}/tour/hotPlace?contentTypeId=12'"/>
	                                <label for="switch-1" class="switch_label">
				                    	<span style="font-family: pB; font-size: 25px; line-height:45px;">관광지</span>
				                    </label>
                            </div>
                        </div>
                        <div class="col-lg-3 d-grid me-0" style="text-align:center;">
                            <div class="wrapper-switch w-100">
	                               <input type="checkbox" <c:if test="${hotPlaceList[1].contentTypeId eq 39}">checked</c:if> id="switch-2" onclick="location.href='${path}/tour/hotPlace?contentTypeId=39'">
	                               	<label for="switch-2" class="switch_label">
	                      			 	<span style="font-family: pB; font-size: 25px; line-height:45px;">음식점</span>
				                    </label>
                            </div>
                        </div>
                    </div>
                </div>
                

                <!-- 공간활용 -->
                <div class="col-1"></div>

                <!-- 사진 -->
                <div class="col-md-3">
                    <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
                        <div class="d-flex">
                            <div class="dark-overlay mytour-size ps-7 pe-7 pb-3 pt-6 card shadow-lg border-0 border-0 hover-animate" style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=d9fa86a0-cddf-4f5a-a3ae-97e83f5d4039);">
                                <a class="tile-link" href="category.html"> </a>
                                <div class="z-index-50 d-flex h-100 text-white justify-content-center py-6 py-lg-7">
                                    <h3 class="mb-0" style="font-family: pB;">제주도 감귤 마을</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진 끝 -->
            </div>
        </div>


        <!----------------- 핫플레이스 swiper ----------------->
        <section class="col-12 py-3" style="background-color: #ffffff8b;">
            <div class="px-7 me-5 mt-6 swiper-container swiper-container-hot swiper-init justify-content-center" data-swiper='{"slidesPerView":4,"spaceBetween":1,"loop":false,"roundLengths":true,
                      "breakpoints":{"991":{"slidesPerView":2},"565":{"slidesPerView":1}},
                      "pagination":{"el":".swiper-pagination","clickable":true,"dynamicBullets":true}}'>

                <div class="fs-3 ms-5 ps-2 align-items-center" style="font-family: 'pB'; color: #221b13;">
                    TOGETHER 이용자들의 많은 선택을 받은 곳은?</div>

                <!-- 핫플레이스 영역 -->
                <div class="container-hotplace swiper-wrapper pb-5 mb-6 pt-4">

                    <!-- 핫플레이스 카드 시작 -->
                  <c:forEach items="${hotPlaceList}" var="HotPlace">
                  <c:if test="${HotPlace.contentTypeId eq 12 || HotPlace.contentTypeId eq 39}">
                    <div class="swiper-slide h-auto px-2">
                        <article class="card-list" onclick="location.href='${path}/tourDetailInfo.do?contentId=${HotPlace.contentId}&contentTypeId=${HotPlace.contentTypeId}'">
                            <!-- 배경이미지  -->
	                           <div class="gradient-overlay-img" style="background-image: url(<c:if test="${HotPlace.firstImage == null}"><c:out value="${path}/resources/image/noImage.png"/></c:if>
	                           	 <c:if test="${HotPlace.firstImage != null}"><c:out value="${HotPlace.firstImage}"/></c:if>); cursor:pointer; height: auto; width: auto;">
	                                <div class="card-list__img">
	                                    <a href="${path}/tourDetailInfo.do?contentId=${HotPlace.contentId}&contentTypeId=${HotPlace.contentTypeId}" class="card-list_link"></a>
	                                </div>

                                <!-- 소개 정보 -->
                                <div class="card-list__info">
                                    <a href="#" class="a-hot-title">
                                       <span class="card-list__category card-list__category-hover" style="font-family:pB; font-size:15px;">
                                       <c:if test="${HotPlace.contentTypeId eq 12}"><c:out value="관광지" /></c:if>
                                       <c:if test="${HotPlace.contentTypeId eq 39}"><c:out value="음식점" /></c:if>
                                       </span>
                                    	<h3 class="card-list__title card-list__title-hover text-overflow-elip-1" style="font-family:pB"><c:out value="${HotPlace.title}" /></h3>
                                        	<span class="card-list__by card-list__by-hover a-hot-loc text-overflow-elip-1" style="font-family:pB; font-size:15px;">
                          					<span style="color: rgba(255, 178, 105, 0.63);">in </span><c:out value="${HotPlace.addr1}" /></span>
                          			                			
                             </a>
                           </div>
                         </div>
                       </article>
                     </div>
                  </c:if>
                   </c:forEach>
              </div>

                    

                </div>
            </div>
        </section>
    </section>
</body>


<!-- Footer-->
<jsp:include page="/WEB-INF/views/common/footer.jsp">
			<jsp:param value="예아바디" name="title"/>
</jsp:include>


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

    // 타이핑
    const typedTextSpan = document.querySelector(".typed-text");
    const cursorSpan = document.querySelector(".cursor");

    const textArray = ["분위기 좋은 맛집", "힐링 휴양지", "색다른 체험", "반려동물과의 여행"];
    const typingDelay = 200;
    const erasingDelay = 100;
    const newTextDelay = 2000; // Delay between current and next text
    let textArrayIndex = 0;
    let charIndex = 0;

    function type() {
        if (charIndex < textArray[textArrayIndex].length) {
            if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
            typedTextSpan.textContent += textArray[textArrayIndex].charAt(charIndex);
            charIndex++;
            setTimeout(type, typingDelay);
        } else {
            cursorSpan.classList.remove("typing");
            setTimeout(erase, newTextDelay);
        }
    }

    function erase() {
        if (charIndex > 0) {
            if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
            typedTextSpan.textContent = textArray[textArrayIndex].substring(0, charIndex - 1);
            charIndex--;
            setTimeout(erase, erasingDelay);
        } else {
            cursorSpan.classList.remove("typing");
            textArrayIndex++;
            if (textArrayIndex >= textArray.length) textArrayIndex = 0;
            setTimeout(type, typingDelay + 1100);
        }
    }

    document.addEventListener("DOMContentLoaded", function() { // On DOM Load initiate the effect
        if (textArray.length) setTimeout(type, newTextDelay + 250);
    });
    
    
    
</script>
<!-- jQuery-->
<script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- Bootstrap Select-->
<script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>
    var basePath = ''
</script>
<!-- Main Theme JS file    -->
<script src="${path}/resources/js/theme.js"></script>
</body>

</html>