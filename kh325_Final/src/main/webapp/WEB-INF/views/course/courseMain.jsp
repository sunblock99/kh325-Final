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
    <link rel="stylesheet" href="${path}/resources/css/course_detail.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
        src: url(${path}/resources/font/Pretendard-ExtraBold.ttf);
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
    <!-- Slider main container-->
    <div class="swiper-container pt-4" style="height:500px">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper">
            <div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url('${path}/resources/img/course/courseMain/대한민국구석구석_태안_꽂지\ 해수욕장_1920x1080.png');">
                <div class="container h-100">
                    <div class="d-flex h-100 text-white overlay-content align-items-center" style="margin-top:6%">
                        <div class="w-100">
                            <div class="row">
                                <div class="col-lg-6">
                                    <p class="subtitle text-white letter-spacing-3 mb-3 font-weight-light text-pB">Imagine Your Korea</p>
                                    <h2 class="display-3 fw-bold mb-3 text-pEb" style="line-height: 1; font-size:80px">대한민국 구석구석 여행코스</h2>
                                    <p class="mb-5 text-pB">투게더에서 제공하는 여행코스로 지금 떠나보세요</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-left:160px">
        <div class="row mt-5">
            <p class="subtitle text-sm  mb-0 text-pB" style="color:#907B65;">Recommended Travel Plan</p>
              <h5 class="col-md-2 mb-3 text-pEb">추천여행코스</h5>
            	<a class="col-md-4 d-flex a-hover btn-link-cate-lgfont justify-content-end" href="${path}/course/courseRecommended">
                더보기
                <i class="fas fa-angle-double-right"></i></a>

        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="row inline-wrapper ">
                    <!-- 1번 item-->
                <c:if test="${!empty recommCourseMain}">
				<c:forEach var="MainRecommCourse" items="${recommCourseMain}">     
                    <div class="col-sm-6 mb-4 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card  border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="img-fluid" style="width: 402px !important;  height: 268px !important;"  src="<c:choose><c:when test="${MainRecommCourse.firstImage != null}"><c:out value="${MainRecommCourse.firstImage}"/></c:when><c:when test="${MainRecommCourse.firstImage == null}"><c:out value="http://tong.visitkorea.or.kr/cms/resource/46/2779046_image2_1.jpg"/></c:when></c:choose>" />
                                <a class="tile-link" href="${path}/course/recommCourseDetail?contentId=${MainRecommCourse.contentId}"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class="heart_pink card-fav-icon position-relative z-index-50" name="clickHeart" href="#">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center ">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9 overflow-hidden" style="white-space:nowrap; text-overflow: ellipsis;"><a class=" text-black" href="#"><c:out value="${MainRecommCourse.title}"/></a>
                                    </p>
                                    <div class="d-flex col-md-3 inline-block" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><c:forEach begin="1" end="${MainRecommCourse.cntRevStar}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MainRecommCourse.cntRevStar < 5}"><c:forEach begin="${MainRecommCourse.cntRevStar+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                        </p>
                                        <span class="text-primary justify-center"><c:out value="${MainRecommCourse.cntRevStar}"/>/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i><c:out value="${MainRecommCourse.areaName}"/>&nbsp;<c:out value="${MainRecommCourse.detailAreaName}"/></p>
                                    <div class=" card-text text-muted
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info"><c:out value="${MainRecommCourse.overview}"/></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     </c:forEach>
			</c:if>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4 ms-7">
                        <table class="d-flex">
                            <tr>
                                <td colspan="3 ">
                                    <a href="https://www.durunubi.kr/ "><img src="${path}/resources/img/course/courseMain/bicycle.png" style=" width:100%; height:34rem; ">
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3 "><img src="${path}/resources/img/course/courseMain/eventZero.png " style=" width:100%; height: 100%; "></td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=9e2ea586-458d-4510-9f12-2f0cd61f7c43 "><img class="ms-0 " src="${path}/resources/img/course/courseMain/eventFirsrt.png " style=" width:100%; height:100%; ">
                                    </a>
                                </td>
                                <td>
                                    <a href="https://korean.visitkorea.or.kr/trss/applyintro.do?utm_source=main_showcase "><img class="ms-0 " src="${path}/resources/img/course/courseMain/eventSecond.png " style=" width:100%; height: 100%; ">
                                    </a>
                                </td>
                                <td>
                                    <a href="https://kto-event.or.kr/safe_tourist_place/ "><img class="ms-0 " src="${path}/resources/img/course/courseMain/eventThird.png " style=" width:100%; height: 100% ">
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row me-7 mt-4 " style=" margin-left:160px ">
        <div class="row ">
            <p class="subtitle text-sm  mb-0 text-pB " style="color:#907B65;">Make Your Own Plan </p>
            <h5 class="mb-0 text-pEb">나만의 여행코스</h5>
            <div class="mt-3 ">
                <a href="${path}/course/courseMyCourse "><img src="${path}/resources/img/course/courseMain/goToMyCourse.png " style="width:100% "></a>
            </div>
        </div>
        <div class="row inline-wrapper mt-4 " style="height:520px ">
            <!-- place item1-->
            <div class="col-sm-3 mb-2 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                <div class="card border-0 shadow ">
                    <div class="card-img-top overflow-hidden gradient-overlay "> <img class="" style="width: 367px !important;  height: 245px !important;" src="${path}<c:out value="${MyCourseMain.get(0).getMyCourseMainImage()}"/>" alt="Modern, Well-Appointed Room " />
                        <a class="tile-link " href="${path}/course/courseDetail?myCourseNo=${MyCourseMain.get(0).getMyCourseNo()}"></a>
                        <div class="card-img-overlay-bottom z-index-20 ">
                            <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="${MyCourseMain.get(0).getUserAvatar()}"  />
                                <div><c:out value="${MyCourseMain.get(0).getUserName()}"/></div>
                            </div>
                        </div>
                        <div class="card-img-overlay-top text-end">
                            <a class=" heart_pink card-fav-icon position-relative z-index-50  " name="clickHeart" href="#">
                                <i class="fas fa-heart svg-icon"></i>
                            </a>
                        </div>
                    </div>
                    <div class="card-body d-flex align-items-center ">
                        <div class="w-100 ">
                            <h6 class="card-title "><a class="text-decoration-none text-dark " href="#"><c:out value="${MyCourseMain.get(0).getMyCourseTitle()}"/></a></h6>
                            <div class="d-flex card-subtitle mb-3 ">
                                <p class="flex-grow-1 mb-0 text-muted text-sm "><c:out value="${MyCourseMainDetail1.get(0).getAddr1()}"/></p>
                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><c:forEach begin="1" end="${MyCourseMain.get(0).getCntRevStar()}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MyCourseMain.get(0).getCntRevStar() < 5}"><c:forEach begin="${MyCourseMain.get(0).getCntRevStar()+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                </p>
                            </div>
                            <p class="card-text text-muted " style="margin-bottom: 0rem; "><span class="h-100 text-primary ">Travel</span> </p>
                            <ul class="overflow-hidden " style="height:120px ">
                            <c:if test="${!empty MyCourseMainDetail1}">
				<c:forEach var="MyCourseDetail" items="${MyCourseMainDetail1}">
                                <li class="mb-1 ">
                                    <a class="text-muted " href="${path}/tourDetailInfo.do?contentId=${MyCourseDetail.contentId}&contentTypeId=${MyCourseDetail.contentTypeId}"><c:out value="${MyCourseDetail.title}"/></a>
                                </li>
                               </c:forEach>
			</c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
                   <!-- place item2-->
            <div class="col-sm-3 mb-2 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                <div class="card border-0 shadow ">
                    <div class="card-img-top overflow-hidden gradient-overlay "> <img class="" style="width: 367px !important;  height: 245px !important;" src="${path}<c:out value="${MyCourseMain.get(1).getMyCourseMainImage()}"/>" alt="Modern, Well-Appointed Room " />
                        <a class="tile-link " href="${path}/course/courseDetail?myCourseNo=${MyCourseMain.get(1).getMyCourseNo()}"></a>
                        <div class="card-img-overlay-bottom z-index-20 ">
                            <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="${MyCourseMain.get(1).getUserAvatar()}" alt="Pamela " />
                                <div><c:out value="${MyCourseMain.get(1).getUserName()}"/></div>
                            </div>
                        </div>
                        <div class="card-img-overlay-top text-end">
                            <a class=" heart_pink card-fav-icon position-relative z-index-50  " name="clickHeart" href="#">
                                <i class="fas fa-heart svg-icon"></i>
                            </a>
                        </div>
                    </div>
                    <div class="card-body d-flex align-items-center ">
                        <div class="w-100 ">
                            <h6 class="card-title "><a class="text-decoration-none text-dark " href="#"><c:out value="${MyCourseMain.get(1).getMyCourseTitle()}"/></a></h6>
                            <div class="d-flex card-subtitle mb-3 ">
                                <p class="flex-grow-1 mb-0 text-muted text-sm "><c:out value="${MyCourseMainDetail2.get(0).getAddr1()}"/></p>
                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><c:forEach begin="1" end="${MyCourseMain.get(1).getCntRevStar()}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MyCourseMain.get(1).getCntRevStar() < 5}"><c:forEach begin="${MyCourseMain.get(1).getCntRevStar()+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                </p>
                            </div>
                            <p class="card-text text-muted " style="margin-bottom: 0rem; "><span class="h-100 text-primary ">Travel</span> </p>
                            <ul class="overflow-hidden " style="height:120px ">
                            <c:if test="${!empty MyCourseMainDetail2}">
				<c:forEach var="MyCourseDetail" items="${MyCourseMainDetail2}">
                                <li class="mb-1 ">
                                    <a class="text-muted " href="${path}/tourDetailInfo.do?contentId=${MyCourseDetail.contentId}&contentTypeId=${MyCourseDetail.contentTypeId}"><c:out value="${MyCourseDetail.title}"/></a>
                                </li>
                               </c:forEach>
			</c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
                   <!-- place item3-->
            <div class="col-sm-3 mb-2 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                <div class="card border-0 shadow ">
                    <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " style="width: 367px !important;  height: 245px !important;" src="${path}<c:out value="${MyCourseMain.get(2).getMyCourseMainImage()}"/>" alt="Modern, Well-Appointed Room " />
                        <a class="tile-link " href="${path}/course/courseDetail?myCourseNo=${MyCourseMain.get(2).getMyCourseNo()}"></a>
                        <div class="card-img-overlay-bottom z-index-20 ">
                            <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="${MyCourseMain.get(2).getUserAvatar()}"  />
                                <div><c:out value="${MyCourseMain.get(2).getUserName()}"/></div>
                            </div>
                        </div>
                        <div class="card-img-overlay-top text-end">
                            <a class=" heart_pink card-fav-icon position-relative z-index-50  " name="clickHeart" href="#">
                                <i class="fas fa-heart svg-icon"></i>
                            </a>
                        </div>
                    </div>
                    <div class="card-body d-flex align-items-center ">
                        <div class="w-100 ">
                            <h6 class="card-title "><a class="text-decoration-none text-dark " href="#"><c:out value="${MyCourseMain.get(2).getMyCourseTitle()}"/></a></h6>
                            <div class="d-flex card-subtitle mb-3 ">
                                <p class="flex-grow-1 mb-0 text-muted text-sm "><c:out value="${MyCourseMainDetail3.get(0).getAddr1()}"/></p>
                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><c:forEach begin="1" end="${MyCourseMain.get(2).getCntRevStar()}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MyCourseMain.get(2).getCntRevStar() < 5}"><c:forEach begin="${MyCourseMain.get(2).getCntRevStar()+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                </p>
                            </div>
                            <p class="card-text text-muted " style="margin-bottom: 0rem; "><span class="h-100 text-primary ">Travel</span> </p>
                            <ul class="overflow-hidden " style="height:120px ">
                            <c:if test="${!empty MyCourseMainDetail3}">
				<c:forEach var="MyCourseDetail" items="${MyCourseMainDetail3}">
                                <li class="mb-1 ">
                                    <a class="text-muted " href="${path}/tourDetailInfo.do?contentId=${MyCourseDetail.contentId}&contentTypeId=${MyCourseDetail.contentTypeId}"><c:out value="${MyCourseDetail.title}"/></a>
                                </li>
                               </c:forEach>
			</c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
                   <!-- place item4-->
            <div class="col-sm-3 mb-2 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                <div class="card  border-0 shadow ">
                    <div class="card-img-top overflow-hidden gradient-overlay "> <img class="img-fluid " style="width: 367px !important;  height: 245px !important;" src="${path}<c:out value="${MyCourseMain.get(3).getMyCourseMainImage()}"/>" alt="Modern, Well-Appointed Room " />
                        <a class="tile-link "  href="${path}/course/courseDetail?myCourseNo=${MyCourseMain.get(3).getMyCourseNo()}"></a>
                        <div class="card-img-overlay-bottom z-index-20 ">
                            <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="${MyCourseMain.get(3).getUserAvatar()}"  />
                                <div><c:out value="${MyCourseMain.get(3).getUserName()}"/></div>
                            </div>
                        </div>
                        <div class="card-img-overlay-top text-end">
                            <a class=" heart_pink card-fav-icon position-relative z-index-50  " name="clickHeart"  href="#">
                                <i class="fas fa-heart svg-icon"></i>
                            </a>
                        </div>
                    </div>
                    <div class="card-body d-flex align-items-center ">
                        <div class="w-100 ">
                            <h6 class="card-title "><a class="text-decoration-none text-dark " href="#"><c:out value="${MyCourseMain.get(3).getMyCourseTitle()}"/></a></h6>
                            <div class="d-flex card-subtitle mb-3 ">
                                <p class="flex-grow-1 mb-0 text-muted text-sm "><c:out value="${MyCourseMainDetail4.get(0).getAddr1()}"/></p>
                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><c:forEach begin="1" end="${MyCourseMain.get(3).getCntRevStar()}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MyCourseMain.get(3).getCntRevStar() < 5}"><c:forEach begin="${MyCourseMain.get(3).getCntRevStar()+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                </p>
                            </div>
                            <p class="card-text text-muted " style="margin-bottom: 0rem; "><span class="h-100 text-primary ">Travel</span> </p>
                            <ul class="overflow-hidden " style="height:120px ">
                            <c:if test="${!empty MyCourseMainDetail4}">
				<c:forEach var="MyCourseDetail" items="${MyCourseMainDetail4}">
                                <li class="mb-1 ">
                                    <a class="text-muted " href="${path}/tourDetailInfo.do?contentId=${MyCourseDetail.contentId}&contentTypeId=${MyCourseDetail.contentTypeId}"><c:out value="${MyCourseDetail.title}"/></a>
                                </li>
                               </c:forEach>
			</c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
  
        </div>
    </div>
    </div>
    </div>
    <div class="mt-5 ">

        <a href="href=https://www.ecotourism.or.kr/ "><img src="${path}/resources/img/course/courseMain/ecoTourism.png " width="100% " height="300em "></a>

    </div>

    <!-- Footer-->
	 <jsp:include page="/WEB-INF/views/common/footer.jsp"/> 
	<!-- JavaScript files-->
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
    
     <script>
            for (var i = 0; i < 8; i++) { // 갤러리 박스가 12개라 임시로 12개 해둠,,
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
</body>

</html>