<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TOGETHER, to GET THERE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/custom_suah copy.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="${path}/resources/css/font.css">
</head>

<style>
    .container-typing {
        /* height: 60vh; */
        display: flex;
        justify-content: left;
        align-items: center;
    }
    
    .container-typing .type {
        font-size: 3rem;
        padding: 0.5rem;
        font-weight: bold;
        /* letter-spacing: 0.1rem; */
        text-align: left;
        overflow: hidden;
    }
    
    .p span.typed-text {
        font-weight: normal;
        color: #dd7732;
    }
    
    .container-typing p span.cursor {
        display: inline-block;
        background-color: #ccc;
        margin-left: 0.1rem;
        width: 3px;
        animation: blink 1s infinite;
    }
    
    .container-typing p span.cursor.typing {
        animation: none;
    }
</style>


<body style="padding-top: 92px;">
    <!-- =================== 블랙 헤더 html =================== -->
    <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
			<jsp:param value="예아바디" name="title"/>
	</jsp:include>
	<div class="col-12 mt-5"></div>
    <!-- 상단 사진 시작 -->
    <section class="hero-home" style="display:flex; min-height: 500px !important;">
        <div class="swiper-container hero-slider">
            <div class="swiper-wrapper dark-overlay">
                <div class="swiper-slide "><img src=" https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=922d7670-e7e2-4c2b-8834-7a74f6515753" style="width: 1903px; height: 504px; ">
                </div>
                <div class="swiper-slide "><img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4f2cc26e-c9a0-46cc-bf86-6ebb3564a311" style="width: 1903px; height: 504px; ">
                </div>
                <div class="swiper-slide "><img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=c0c8f558-dbd2-4f7d-876d-8bfae710f595" style="width: 1903px; height: 504px; ">
                </div>
                <div class="swiper-slide "><img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=2e497978-8c06-49df-aaec-af20d6327bdd " style="width: 1903px; height: 504px; ">
                </div>
            </div>
        </div>
        <div class="container py-6 text-white z-index-20 ">
            <div class="row ">
                <div class="col-xl-12 ">
                    <div class="row ">
                        <div class="col-lg-12 justify-content-between" style="padding-top: 3rem !important;">
                            <p class="subtitle text-white letter-spacing-3 font-weight-light" style="font-size: 2.5rem !important;">Today's Events</p>
                            <h1 class="display-1 fw-bold event_calendar_font" id="h1">
                                <span class="cal">C</span>
                                <span class="cal">A</span>
                                <span class="cal">L</span>
                                <span class="cal">E</span>
                                <span class="cal">N</span>
                                <span class="cal">D</span>
                                <span class="cal">A</span>
                                <span class="cal">R</span>
                            </h1>
                            <!-- <p class="pt-2 letter-spacing-2 text-lg text-white" style="font-size: 1.4rem;">달력에서 오늘의 행사를 찾아보세요</p> -->
                            <span style="font-family: pB;" class="typed-text pt-2 letter-spacing-2 text-lg text-white"></span>
                            <span class="cursor">&nbsp;</span>
                            <div class="progress rounded-0" style="height: 4px; width: 400px;">
                                <div class="progress-bar" role="progressbar" style="width: 0px;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="0"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 상단 사진 끝 -->



    <section class="container-fluid bg-gray-100 py-6 p-6 flex">
        <div class="row">
            <!-- 달력 시작 -->
            <div class="col-6 pt-2 flex">
                <div id="calendar" style="height: 955px;"></div>
            </div>
            <!-- 달력 끝 -->

            <!-- 행사 리스트 시작 -->
            <div class="col-6">
                <div class="container">
                    <!-- 행사 소개글 시작 -->
                    <div class="container row mb-5" style="
                    padding-right: 0px;
                    padding-left: 0px;
                    margin-right: 0px;
                    margin-left: 0px;
                ">
                        <div class="row col-12">
                            <div class="col-md-8 d-md-flex align-items-center pb-2 eventlist_font">축제 리스트</div>
                            <div class="col-md-4 d-md-flex align-items-md-end pb-2 justify-content-end " style="border-bottom: 1px solid #C0C2C5; font-family: 'pEb' !important;
                    font-size: 1.15rem !important;
                    "><a class="text-muted  " href="${path}/eventSearch.do">
                                See more details<i class="fas fa-angle-double-right ms-2 "></i></a></div>
                        </div>
                    </div>
                    <!-- 행사 소개글 끝 -->

                    <div class="row">
                    
                    <c:forEach items="${calendarList}" var="Tour">
                        <div class="card_p4_mb4_rounded3 up-hover ">
                            <div class="row_g-3_blog ">
                                <div class="col-lg-5 ">
                                    <!-- Categories -->
                                    <a href="${path}/tourDetailInfo.do?contentId=${Tour.contentId}&contentTypeId=${Tour.contentTypeId}" class="badge_text-bg-danger_mb-2_blog "><i
                                        class="fas_fa-circle_me-2_small_fw-bold "></i>진행중</a>
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="${path}/tourDetailInfo.do?contentId=${Tour.contentId}&contentTypeId=${Tour.contentTypeId}" class="btn-link text-reset stretched-link fw-bold"><c:out value="${Tour.title}"/></a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3 ">
                                        <div>
                                            <h5 class="mb-1"><a href="${path}/tourDetailInfo.do?contentId=${Tour.contentId}&contentTypeId=${Tour.contentTypeId}" class="stretched-link text-reset btn-link" style="font-size: 1.2rem !important;">${Tour.addr1}</a></h5>
                                            <ul class="nav align-items-center small ">
                                                <li class="nav-item me-3 ">
                                                    &#91;${Tour.detailEventTable.eventStartDate}&#32;&#126;&#32;${Tour.detailEventTable.eventEndDate}&#93;</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4 ps-4">
                                    <p class="detail_short">${Tour.overview}</p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3 ">
                                    <img class="rounded-3_blog " src='<c:out value="${Tour.firstImage}"/>' alt="Card image ">
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <!-- Pagination -->
                        <style>
                            .page-item.active .page-link {
                                z-index: 3;
                                color: #fff;
                                background-color: #ffca2c !important;
                                border-color: #ffca2c;
                            }
                        </style>

                        <!-- Pagination -->
                        <nav aria-label="Page navigation example ">
	                <ul class="pagination pagination-template d-flex justify-content-center p-5">
	                    <li class="page-item ">
	                        <span onclick="movePage('${path}/calendar?page=${pageInfo.prevPage}');" class="page-link"><span style="color: #000000;">Previous</span></span>
	                    </li>
	                    <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                    	<c:if test="${pageInfo.currentPage == status.current}">
	                   			 <li class="page-item active">
	                   			 		<a class="page-link">
	                   			 			<span style="color: #000000;">${status.current}</span>
	                   			 		</a>
	                   			 </li>
	                   		</c:if>
	                		<c:if test="${pageInfo.currentPage != status.current}">
	                   			 <li class="page-item">
	                   			 		<a onclick="movePage('${path}/calendar?page=${status.current}');" class="page-link">
	                   			 			<span style="color: #000000;">${status.current}</span>
	                   			 		</a>
	                   			 </li> 
	                   		</c:if>
	                     </c:forEach>
	                    <li class="page-item">
	                        <a onclick="movePage('${path}/calendar?page=${pageInfo.nextPage}');" class="page-link" ><span style="color: #000000;">Next</span></a>
	                    </li>
	                </ul>
	            </nav>
                    </div>
                </div>
                <!-- 행사 리스트 끝 -->
            </div>
    </section>


<script>
        function movePage(pageUrl) {
// 			alert(pageUrl);
            location.href = encodeURI(pageUrl);
        }
    </script>


    <!-- 광고 시작 -->
    <section class="py-4 position-relative dark-overlay "><img class="bg-image" src="https://images.unsplash.com/photo-1420582282039-a6d11404cb66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80" alt=" ">
        <div class="container">
            <div class="overlay-content text-white py-lg-5 bubbles">
                <h3 class="fw-normal text-shadow mb-2" style=" font-size: 2.5rem;
                font-weight: 300;
                line-height: 1.3;">프로계획러 사용자가 직접 만든</h3>
                <h3 class="fw-bold text-shadow mb-3" style=" font-size: 3rem; font-family:'pSb'; font-weight: 400; line-height: 1.3;">풀코스 여행</text>
                </h3>
                <button type="button" onclick="location.href='${path}/course/courseMain'" class="btn btn-light">Go for My Trip</button>
            </div>
        </div>
    </section>
    <!-- 광고 끝 -->



    <!-- Footer-->
   <jsp:include page="/WEB-INF/views/common/footer.jsp"/> 


    <!-- JavaScript files-->


    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js "></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js "></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js "></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js "></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js "></script>
    <!-- Calendar Js -->
    <script src="${path}/resources/vendor/calendar.jsp/js/bootstrap-calendar.js "></script>
    <script src="${path}/resources/vendor/calendar.jsp/js/bootstrap-calendar.min.js "></script>

    <script>
        function zoomIn(event) {
            event.target.style.transform = "scale(1.5) ";
            event.target.style.zIndex = 50;
            event.target.style.transition = "all 0.5s ";
        }

        function zoomOut(event) {
            event.target.style.transform = "scale(1) ";
            event.target.style.zIndex = 0;
            event.target.style.transition = "all 0.5s ";
        }
    </script>
    
    

    <script>
        // Created for an Articles on:
        // https://www.html5andbeyond.com/bubbling-text-effect-no-canvas-required/

        jQuery(document).ready(function($) {

            // Define a blank array for the effect positions. This will be populated based on width of the title.
            var bArray = [];
            // Define a size array, this will be used to vary bubble sizes
            var sArray = [4, 6, 8, 10];

            // Push the header width values to bArray
            for (var i = 0; i < $('.bubbles').width(); i++) {
                bArray.push(i);
            }

            // Function to select random array element
            // Used within the setInterval a few times
            function randomValue(arr) {
                return arr[Math.floor(Math.random() * arr.length)];
            }

            // setInterval function used to create new bubble every 350 milliseconds
            setInterval(function() {

                // Get a random size, defined as variable so it can be used for both width and height
                var size = randomValue(sArray);
                // New bubble appeneded to div with it's size and left position being set inline
                // Left value is set through getting a random value from bArray
                $('.bubbles').append('<div class="individual-bubble" style="left: ' + randomValue(bArray) + 'px; width: ' + size + 'px; height:' + size + 'px;"></div>');

                // Animate each bubble to the top (bottom 100%) and reduce opacity as it moves
                // Callback function used to remove finsihed animations from the page
                $('.individual-bubble').animate({
                    'bottom': '100%',
                    'opacity': '-=0.7'
                }, 3000, function() {
                    $(this).remove()
                });


            }, 350);

        });
    </script>

    <script>
        $(document).ready(function() {
            $('.like-button').click(function() {
                $(this).toggleClass('is-active');
            })
        })
    </script>

    <script>
        // 타이핑
        const typedTextSpan = document.querySelector(".typed-text");
        const cursorSpan = document.querySelector(".cursor");

        const textArray = ["달력에서 오늘의 행사를 찾아보세요"];
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

</body>

</html>