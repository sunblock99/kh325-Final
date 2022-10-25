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
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
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
    /*폰트 적용*/
    
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Black.ttf);
    }
    
    .text-pBlack {
        font-family: 'pBlack';
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url${path}/resources/(font/Pretendard-ExtraBold.ttf);
    }
    
    .text-pEb {
        font-family: 'pEb';
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Bold.ttf);
    }
    
    .text-pB {
        font-family: 'pB';
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-SemiBold.ttf);
    }
    
    .text-pSb {
        font-family: 'pSb';
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Medium.ttf);
    }
    
    .text-pM {
        font-family: 'pM';
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        letter-spacing: 1px;
        src: url(${path}/resources/font/Pretendard-Regular.ttf);
    }
    
    .text-pR {
        font-family: 'pR';
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Light.ttf);
    }
    
    .text-pL {
        font-family: 'pL';
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-ExtraLight.ttf);
    }
    
    .text-pEl {
        font-family: 'pEl';
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Thin.ttf);
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
    <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <section class="py-5">
        <div class="container" style="padding-top:30px;">
            <div class="row">
                <div class="col-lg-3 me-lg-auto">
                    <div class="card border-0 shadow mb-6 mb-lg-0">
                        <div class="card-header bg-gray-100 py-4 border-0 text-center" style="background-color: #FFF1CC!important;">
                            <h3 class="text-pB">나의 회원정보</h3>
                            <p class=" text-xs mb-4 text-pB" style="color:#987107">오늘도 투게더와 함께 멋진 여행을 계획해보세요.</p>
                            <a class="d-inline-block " href="#"><img class="d-block avatar avatar-xxl p-2 mb-2" src="${path}/resources/img/avatar/avatar-10.jpg" alt=""></a>
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
                                    <a href="${path}/myPage/profile">
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
                                    <a href="${path}/myPage/bookmark">
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
                                    <a href="${path}/myPage/review">
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
                                    <a href="${path}/myPage/community">
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
                                    <a href="${path}/community/gallery">
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
                                    <a href="${path}/myPage/myCourse">
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
                        <c:forEach var="Review" items="${reviewList}">
                        <div class="d-block mb-5">
                            <div>
                                <h5 class="mt-2 mb-1 text-pEb"><c:out value="${Review.title}"/></h5>
                                <div class="mb-2">
                                    <c:if test="${Review.star == 1}">
                                    <i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i>
                                    </c:if>
                                    <c:if test="${Review.star == 2}">
                                    <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i>
                                    </c:if>
                                    <c:if test="${Review.star == 3}">
                                    <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i>
                                    </c:if>
                                    <c:if test="${Review.star == 4}">
                                    <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                    </c:if>
                                    <c:if test="${Review.star == 5}">
                                    <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                    </c:if>
                                </div>
                                <p class="text-muted text-sm "><c:out value="${Review.content}"/></p>
                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm" style="float:right;">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>수정</span> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="${path}/">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>수정
                                    </span>&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    <a href="${path}/myPage/deleteReview?reviewNo=${Review.reviewNo}">
                                    <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>삭제
                                    </span></a>
                                	
                                </p>
                            </div>
                        </div>
                        </c:forEach>
               <!--          <hr>
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
                        --> 
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