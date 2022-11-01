<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="tour" value="${tour}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TOGEHTER, to GET THERE</title>
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
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <link rel="stylesheet" href="${path}/resources/css/course.detail.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- 좋아요 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/like.css">
</head>

<style>
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
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
    /*폰트 끝*/
    
    .detail-pic {
    	width : 278px;
    	height : 200px;
    	object-fit : cover;
    }
    
    .course-pic {
    	width : 301px;
    	height : 215px;
    	object-fit : cover;
    }
        
</style>

<jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
			<jsp:param value="예아바디" name="title"/>
</jsp:include>


<body class="py-7">
  
    <!-- Hero Section-->
    <section class="pt-5 pb-5 d-flex align-items-end bg-cover"
      style="background-image: url('${path}/resources/image/tourDetailEvent.png');
      background-size: flex-start;">
        <div class="container overlay-content">
            <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
                <div class="mb-4 mb-lg-0 my-4">
                    <div class="badge-etcinfo-detail px-3 py-2 mb-2 fs-6 text-uppercase-tour">
	                    <c:if test="${tour.contentTypeId eq 12}">tourist attraction</c:if>
	                    <c:if test="${tour.contentTypeId eq 14}">cultural facility</c:if>
	                    <c:if test="${tour.contentTypeId eq 15}">event</c:if>
	                    <c:if test="${tour.contentTypeId eq 28}">leisure sports</c:if>
	                    <c:if test="${tour.contentTypeId eq 38}">shopping</c:if>
	                    <c:if test="${tour.contentTypeId eq 39}">restaurant</c:if>       
                    </div>
                    <h1 class="display-4 text-black text-pB">${tour.title}</h1>
                    <p class="text-pB fs-5 ms-1">${tour.addr1}</p>
                    <c:if test="${empty review}"><p class="text-pB fs-6 ms-1 text-muted">남겨진 리뷰가 없습니다</p></c:if>
                    <c:if test="${!empty review}">
                    <p class="mb-0 d-flex align-items-center" style="color: rgb(255, 183, 0);">
                        <i class="ps-1 fa fa-1x fa-star"></i>
                        <i class="fa fa-1x fa-star"></i>
                        <i class="fa fa-1x fa-star"></i>
                        <i class="fa fa-1x fa-star"></i>
                        <i class="fa fa-1x fa-star text-gray-500 me-4"></i>
                    </p>
                    </c:if>
                </div>
            </div>
        </div>
    </section>
    
    <!-- ===== 상세정보 시작 ===== -->
    <section class="py-4 pt-lg-6">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">

                    <!-- 사진 -->
                    <c:if test="${!empty imgDetail || tour.firstImage ne null}">
                    <div class="">
                        <h3 class="mb-4 text-pBlack fs-2">갤러리</h3>
                        <div class="row gallery ms-n1 me-n1 text-block">
                            
                            <c:forEach items="${imgDetail}" var="tourImage" begin="0" end="5" >
	                            <div class="col-lg-4 col-6 px-1 mb-2">
	                            <c:if test="${!empty imgDetail}">
	                                <a href="<c:out value="${tourImage.originImgUrl}" />">
	                                <img class="detail-pic" src="<c:out value="${tourImage.originImgUrl}" />" alt="..."></a>
	                             </c:if>
	                             </div>   
							</c:forEach>
							
	                             <c:if test="${tour.firstImage ne null}">
	                       			<div class="col-lg-4 col-6 px-1 mb-2">
	                                <a href="<c:out value="${tour.firstImage}" />">
	                                <img class="img-fluid" src="<c:out value="${tour.firstImage}" />" alt="..."></a>
	                            </div>
	                           </c:if>
                        </div>
                    </div>
                    </c:if>
                    
                    <!-- 소개 -->
                    <div class="text-block">
                        <h3 class="mb-3 text-pBlack fs-2">소개</h3>
                        <p class="text-muted fs-5" style="word-break:keep-all;">${tour.overview}</p>
                        <br>
                        <p class="text-block text-muted fs-5"><i class="fa fa-home me-3"></i>
                        <br>${tour.homePage}<c:if test="${tour.homePage eq null}">홈페이지 정보없음</c:if> </p>

                    </div>


                   <!-- 지도 -->
                   <div class="mt-5">
                    <!-- Listing Location-->
                    <h3 class="mb-4 fs-2 text-pBlack">위치</h3>
                    <div class="map-wrapper-300 mb-3">
                     <div id="map" style="width:850px;height:300px;"></div>
	                    <br>
                    </div>
                </div>


                    <!-- 무장애여행-->
                    <div class="text-block">
                   <c:if test="${tour.tourFreeTable.parking ne null}">
                        <h3 class="mb-4 text-pBlack fs-2">무장애여행</h3>
                        <ul class="amenities-list list-inline" style="font-family: pB;">
                        <c:if test="${tour.tourFreeTable.parking ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.parking}"/></span>
                                </div>
                            </li>
                          </c:if>
                        
                        <c:if test="${tour.tourFreeTable.route ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.route}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.publicTransport ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.publicTransport}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.ticketOffice ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.ticketOffice}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.promotion ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.promotion}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.wheelchair ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.wheelchair}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.exit ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.exit}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.elevator ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.elevator}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                          
                        <c:if test="${tour.tourFreeTable.restroom ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.restroom}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.auditorium ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.auditorium}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.room ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.room}"/></span>
                                </div>
                            </li>
                          </c:if>
                          
                        <c:if test="${tour.tourFreeTable.handicapEtc ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.handicapEtc}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.braileBlock ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.braileBlock}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.helpDog ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.helpDog}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.guideHuman ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.guideHuman}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.audioGuide ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.audioGuide}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.bigPrint ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.bigPrint}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.brailePromotion ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.brailePromotion}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.guideSystem ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.guideSystem}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.blindHandicapEtc ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.blindHandicapEtc}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.signGuide ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.signGuide}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.videoGuide ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.videoGuide}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.hearingRoom ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.hearingRoom}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.hearingHandicapEtc ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.hearingHandicapEtc}"/></span>
                                </div>
                            </li>
                          </c:if>
                          

                        <c:if test="${tour.tourFreeTable.stroller ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.stroller}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.lactationRoom ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.lactationRoom}"/></span>
                                </div>
                            </li>
                          </c:if>

                        <c:if test="${tour.tourFreeTable.infantsFamilyEtc ne null}">
                            <li class="list-item mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="icon-circle bg-tourinfo-detail-disabled me-2">
                                    <i class="fa fa-check"></i></div>
                                    <span class="fs-5 text-pSb"><c:out value="${tour.tourFreeTable.infantsFamilyEtc}"/></span>
                                </div>
                            </li>
                          </c:if>
                        </ul>
                       </c:if>
                        

                        <!-- 좋아요 ㅣ 코스추가 버튼 -->
                        <div class="row position-relative justify-content-lg-center pt-4 pb-4">
                            <!-- 코스추가 기능 -->
                            <div class="col-1">
                                <div class="wrapper mt-0">
                                    <a class="like-button" data-bs-toggle="modal" data-bs-target="#addCourse">
                                        <i class="material-icons not-liked bouncy">
                                            <svg class="svg-icon theme-line-1 text-danger">
                                                <use xlink:href="#map-location-1"></use></svg>
                                        </i>

                                        <i class="material-icons is-liked bouncy" data-bs-toggle="modal" data-bs-target="#dropCourse">
                                            <svg class="svg-icon theme-line-1">
                                                <use xlink:href="#map-location-1"></use></svg>
                                        </i>
                                        <span class="like-overlay"></span>
                                    </a>

                                    <div class="text-center mt-2 text-pB" style="font-size: 15px;">코스담기</div>
                                </div>
                            </div>
                            <!-- 코스추가 기능 -->
                          
                          <!-- 여행코스 모달1 : addCourse-->
                          <div class="modal fade" id="addCourse" tabindex="-1" aria-labelledby="addCourseLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                          <h1 class="modal-title fs-5 fw-bold text-pB ms-1" id="addCourseLabel">코스 담기</h1>
                                          <button type="button" class="btn-close me-1" data-bs-dismiss="modal" aria-label="Close"></button>
                                      </div>
                          
                                      <div class="modal-body">
	                                     <input type="text" name="" value="" hidden>
	                                        <div class="row">
	                                          <div class="form-group">
	                                           <form id="test" action="${path}/addContent">    
	                                            <label class="form-label" for="area-form">나의 코스 목록</label>  
	                                            <input type="text" name="userNo" value="${loginMember.userNo}" hidden>
	                                            <input type="text" name="contentId" value="${tour.contentId}" hidden>  
	                                            <input type="text" name="contentTypeId" value="${tour.contentTypeId}" hidden>     
	                                                         
							                  <select class="selectpicker form-control text-pB" name="myCourseNo" id="myCourseNo" data-style="btn-selectpicker" >
							                  <c:if test="${!empty listForCourseCreate}">      
							                 <c:forEach var="i" begin="0" end="${listForCourseCreate.size()-1}">    
							                 <c:if test="${listForCourseCreate.get(i).getUserNo() eq loginMember.userNo}"> 
							                    <option value="${listForCourseCreate.get(i).getMyCourseNo()}"><c:out value="${listForCourseCreate.get(i).getMyCourseTitle()}"/></option>
							                    </c:if> 
							                  </c:forEach>
							                   </c:if> 
							                  </select>
							                
	                                            </form>
	                                          </div>
	                                        </div>
                                        
	                                        <div class="row form-group pt-4 pb-2 text-pB">
	                                        
	                                          <form class="col-6" action="" method="post" name="">
	                                          	<input data-bs-toggle="modal" data-bs-target="#makeCourse" class="btn btn-warning"
	                                          	style="letter-spacing:-1px;" value="새로 만들기">
	                                          </form>
	                          
	                                          <form class="col-6" action="" method="post" name="">
	                                          	<input class="btn btn-warning float-end" type="submit" form="test" style="letter-spacing:-1px;" value="내 코스 담기">
	                                          </form>
	                                       </div>
                                      </div>
                                      
                                  </div>
                              </div>
                          </div>
                          
                          <!-- 여행코스 모달2 : makeCourse -->
                          <div class="modal fade" id="makeCourse" tabindex="-1" aria-labelledby="makeCourseLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <h1 class="modal-title fs-5 fw-bold text-pB ms-1" id="makeCourseLabel">새 코스 만들기</h1>
                                          <button type="button" class="btn-close me-1" data-bs-dismiss="modal" aria-label="Close"></button>
                                      </div>
                                      <div class="modal-body">
                                          <form action="${path}/createCourse" method="post" name="" id="test2">
                                            <input type="text" name="userNo" value="${loginMember.userNo}" hidden>
	                                            <input type="text" name="contentId" value="${tour.contentId}" hidden>  
	                                            <input type="text" name="contentTypeId" value="${tour.contentTypeId}" hidden>   
                                              <div class="row">
                                                <div class="form-group pt-3">
                                                  <label class="form-label" for="find_text">코스 이름</label>
                                                  <textarea class="form-control find_text" id="content" name="myCourseTitle" cols="10" rows="1" placeholder="10자 이내로 작성하세요."></textarea>
                                                </div>
                          
                                              </div>
                                              <div class="form-group pt-5 text-end col-12 text-pB">
                                                  <input type="submit" class="btn btn-warning col-3" form="test2" value="코스 만들기">
                                              </div>
                                          </form>
                                      </div>
                                  </div>
                              </div>
                          </div>

                          <!-- 여행코스 해제 : dropCourse -->
                          <div class="modal fade" id="dropCourse" tabindex="-1" aria-labelledby="dropCourseLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5 fw-bold text-pB ms-1" id="dropCourseLabel">나의 코스에서 삭제 하시겠습니까?</h1>
                                        <button type="button" class="btn-close me-1" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="row modal-body text-pR">
                                          &nbsp; &nbsp; 삭제하면 되돌릴 수 없습니다
                                        <form action="" method="post" name="">
                                          <input type="text" name="userNo" value="" hidden>
                                          <div class="form-group pt-5 float-end text-pB">
                                            <input class="btn btn-muted" type="submit" value="삭제하기" name="userNo" value="">
                                          </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 코스추가 기능 끝 -->
                            
                            
                            <!-- 좋아요 기능 -->
                            <div class="col-1">
                                <div class="wrapper mt-0">
                                    <a onclick="location.href='${path}/tourLike.do?contentId=${tour.contentId}'" class="like-button">
                                        <i class="material-icons not-liked bouncy">
                      					<svg class="svg-icon text-danger">
                        				<use xlink:href="#heart-1"></use></svg></i>
                        				
                                        <i class="material-icons is-liked bouncy">
                      					<svg class="svg-icon text-white">
                        				<use xlink:href="#heart-1"></use></svg></i>
                        				
                                        <span class="like-overlay"></span>
                                    </a>
                                    <div class="text-center mt-2 me-0 text-pB" style="font-size: 16px;">좋아요</div>
                                </div>
                            </div>
                          <!-- 좋아요 기능 -->
                        </div>
                    </div>


                    <!-- 리뷰 -->
                    <div class="text-block text-pB">
                        <h5 class="mb-4 fs-2 text-pBlack">리뷰 목록 </h5>
                        <c:if test="${empty review}"><h5 class="mb-4 fs-5 text-muted text-pB">남겨진 리뷰가 없습니다</h5></c:if>
                        <c:if test="${!empty review}">
                        <c:forEach items="${review}" var="review">
                        <div class="d-flex d-block d-sm-flex review">
                            <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                                <img class="d-block avatar avatar-xl p-2 mb-2" src="${review.userAvatar}" alt="${review.userName}님">
                            </div>
                            <div>
                                <h6 class="mt-2 mb-1 text-pB fs-5">${review.userName}</h6>
                                
                                <div class="mb-2">
	                                <c:forEach begin="1" end="${review.star}" step="1">
										<i class="fa fa-star text-warning "></i>
									</c:forEach>
									<c:if test="${review.star < 5}">
										<c:forEach begin="${review.star+1}" end="5" step="1">
										<i class="fa fa-xs fa-star text-gray-200"></i>
										</c:forEach>
									</c:if>
								</div>

                                <p class="text-muted text-md">${review.content}</p>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                        

                        <div class="py-5">
                           
                           <c:if test="${loginMember ne null}">
                            <button class="btn btn-outline-warning" style="letter-spacing:-1px; font-size:15px;" id="leaveReview" type="button" 
                            data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">
                  			리뷰 쓰기</button>
                            </c:if>
                            
                           <form class="form" id="contact-form" method="post" action="${path}/tourDetailInfo/leaveReview.do">
                            <div class="collapse mt-4" id="leaveReview">
                                <h5 class="mb-4 text-pB">리뷰를 남겨주세요</h5>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="mb-4">
                                                <label class="form-label text-pB" for="name">이름 *</label>
                                                <input type="hidden" name ="contentId" value="${tour.contentId}">
                                                <input type="hidden" name="contentTypeId" value="${tour.contentTypeId}">
                                                <input type="hidden" name="userNo" value="${loginMember.userNo}">
                                                <input class="form-control text-pB" type="text" name="name" id="name" placeholder="닉네임을 입력해주세요" required="required" value="${loginMember.userName}">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="mb-4">
                                                <label class="form-label text-pB" for="star">별점을 남겨주세요 *</label>
                                                <select class="form-select focus-shadow-0" name="star" id="star">
                            <option value=5>&#9733;&#9733;&#9733;&#9733;&#9733;
                              (5/5)</option>
                            <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734;
                              (4/5)</option>
                            <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734;
                              (3/5)</option>
                            <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734;
                              (2/5)</option>
                            <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734;
                              (1/5)</option>
                          </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-4 text-pB">
                                        <label class="form-label text-pB" for="review">내용 *</label>
                                        <textarea class="form-control text-pB" rows="4" name="content" id="content" placeholder="내용을 작성해주세요" required="required"></textarea>
                                    </div>
                                    <button class="btn btn-warning-review" type="submit">리뷰 남기기</button>
                            </div>
                          </form>
                        </div>
                    </div>
                </div>

                <!-- 공통정보 -->
                <div class="col-lg-4">
                    <div class="ps-xl-5">
                        <div class="card border-0 shadow mb-5">
                            <div class="card-header bg-gray-100 py-4 border-0">
                                <div class="d-flex align-items-center
                    justify-content-between">
                                    <div>
                                        <p class="mb-0 text-sidebar-title-event fs-5">BASIC INFORMATION</p>
                                        <p class="mb-0 fs-3 text-pBlack" style="word-break: keep-all;">기본정보</p>
                                    </div>
                                    <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem
                      ms-3 text-muted flex-shrink-0">
                      <use xlink:href="#fountain-pen-1"> </use>
                    </svg>
                                </div>
                            </div>
                            <div class="card-body ">
                                <ul class="list-unstyled mb-0 text-pB">

                                    <li class="col-lg-12 mb-2 justify-content-evenly">
                                        <a class="text-gray-00 text-sm text-decoration-none" href="#">
                                            <i class="text-warning col-1 fa fa-exclamation-circle fs-6"></i>
                                            <span class="col-1 text-black fs-6" style="word-break: keep-all;">우편번호</span>
                                            <span class="text-muted ms-3 float-end" style="word-break: keep-all;"><c:out value="${tour.zipCode}"/></span>
                                        </a>
                                    </li>

                                    <li class="col-lg-12 mb-2">
                                        <a class=" text-sm text-decoration-none" href="#">
                                            <i class="text-warning col-1 fa fa-map-marked fs-6"></i>
                                            <span class="col-1 text-black fs-6" style="word-break: keep-all;">주소</span>
                                            <span class="text-muted ms-3 float-end style="word-break: keep-all;"">
                                            <c:out value="${tour.addr1}"/>
                                            <c:if test="${tour.addr2 != null}">
                                            	<c:out value="${tour.addr2}"/>
                                            </c:if>
                                            </span>
                                        </a>
                                    </li>
                                    
                                    <li class="col-lg-12 mb-2">
                                        <a class=" text-sm text-decoration-none a-orign-text" href="#">
                                            <i class="text-warning col-1 fa fa-phone fs-6"></i>
                                            <span class="col-1 text-black fs-6" style="word-break: keep-all;">전화번호</span>
                                            <span class="text-muted ms-3 float-end" style="word-break: keep-all;">
                                            ${tour.tel}
                                            <c:if test="${tour.tel == null}"><c:out value="정보없음"/></c:if>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>


                        <!-- 상세정보 -->
                        <div class="card border-0 shadow mb-5">
                            <div class="card-header bg-gray-100 py-4 border-0">
                                <div class="d-flex align-items-center
                    justify-content-between">
                                    <div>
                                        <p class="mb-0 text-sidebar-title-event fs-5">DETAIL INFORMATION</p>
                                        <p class="mb-0 fs-3 text-pBlack">상세정보
                                        </p>
                                    </div>
                                    <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem
                      ms-3 text-muted flex-shrink-0">
                      <use xlink:href="#wall-clock-1"> </use>
                    </svg>
                                </div>
                            </div>

                            <!-- 관광 상세정보 -->
                            <div class="card-body">
                                <table class="table text-sm mb-0">
                                	
							<!-- 12 : 관광지 -->
									<c:if test="${tour.contentTypeId == 12 && detail ne null}">
									<c:if test="${detail.heritage1 ne 0 || detail.heritage2 ne 0 || detail.heritage3 ne 0}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">분류</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                    <c:if test="${detail.heritage1 ne null && detail.heritage1 eq 1}"><c:out value="세계문화유산 "/></c:if>
		                                    <c:if test="${detail.heritage2 ne null && detail.heritage1 eq 1}"><c:out value="세계자연유산 "/></c:if>
		                                    <c:if test="${detail.heritage3 ne null && detail.heritage1 eq 1}"><c:out value="세계기록유산 "/></c:if>
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
                                    	<c:if test="${detail.infoCenter ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">문의</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                  ${detail.infoCenter}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	 <c:if test="${detail.openDate ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">개장일</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.openDate}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.restDate ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">쉬는날</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.restDate}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.expGuide ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">체험안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.expGuide}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.expAgeRange ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">체험가능연령</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.expAgeRange}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.accomCount ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">수용인원</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.accomCount}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.useSeason ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">이용시기</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.useSeason}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.useTime ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">이용시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.useTime}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.parking ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차시설</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parking}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkBabyCarriage ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">유모차대여</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkBabyCarriage}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkCreditCard ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">신용카드사용여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                               ${detail.chkCreditCard}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkPet ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">반려동물동반</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkPet}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:forEach items="${repeatInfo}" var="repeatInfo">
	                                    <tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">${repeatInfo.infoName}</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${repeatInfo.infoText}
	                                        </td>
	                                    </tr>
	                                    </c:forEach>
	                                    
                                    </c:if>
                                    
                        <!-- 14 : 문화시설 -->
									<c:if test="${tour.contentTypeId == 14}">
                                    	<c:if test="${detail.culScale ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">규모</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.culScale}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.useFee ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">이용요금</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.useFee}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.discountInfo ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">할인정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.discountInfo}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.spendTime ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">관람소요시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.spendTime}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.parkingFee ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차요금</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parkingFee}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.infoCenterCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">문의및안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.infoCenterCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.accomCountCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">수용인원</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.accomCountCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.useTimeCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">이용시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.useTimeCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.restDateCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">쉬는날</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.restDateCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.parkingCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차시설</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parkingCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.chkBabyCarriageCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">유모차대여</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkBabyCarriageCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.chkPetCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">반려동물동반</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkPetCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:if test="${detail.chkCreditCardCulture ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">카드사용정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkCreditCardCulture}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:forEach items="${repeatInfo}" var="repeatInfo">
	                                    <tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">${repeatInfo.infoName}</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${repeatInfo.infoText}
	                                        </td>
	                                    </tr>
	                                    </c:forEach>
	                                 </c:if>
	                                 
	                             <!-- 15 : 행사/공연/축제 -->
									<c:if test="${tour.contentTypeId == 15}">
                                    	<c:if test="${detail.sponsor1 ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주최자정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.sponsor1}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.sponsor1Tel ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주최자연락처</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.sponsor1Tel}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.sponsor2 ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주관사정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.sponsor2}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.sponsor2Tel ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주관사연락처</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.sponsor2Tel}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.eventEndDate ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">행사종료일</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.eventEndDate}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.playTime ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">공연시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.playTime}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.eventPlace ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">행사장소</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.eventPlace}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.eventHomePage ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">행사홈페이지</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.eventHomePage}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.ageLimit ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">관람가능연령</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.ageLimit}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.bookingPlace ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">예매처</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.bookingPlace}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.placeInfo ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">행사장위치안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.placeInfo}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.subEvent ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">부대행사</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.subEvent}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.evProgram ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">행사프로그램</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                               ${detail.evProgram}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.eventStartDate ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">행사시작일</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.eventStartDate}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.useTimeFestival ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">이용요금</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.useTimeFestival}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.discountInfoFestival ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">할인정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.discountInfoFestival}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.spendTimeFestival ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">관람소요시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.spendTimeFestival}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.festivalGrade ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">축제등급</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.festivalGrade}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:forEach items="${repeatInfo}" var="repeatInfo">
	                                    <tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">${repeatInfo.infoName}</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${repeatInfo.infoText}
	                                        </td>
	                                    </tr>
	                                    </c:forEach>
	                                 </c:if>
	                                 
	                             <!-- 28 : 레포츠 -->
									<c:if test="${tour.contentTypeId == 28}">
                                    	<c:if test="${detail.accomcountLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">수용인원</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.accomcountLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkbabycarriageLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">유모차대여</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkbabycarriageLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkcreditcardLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">카드사용정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkcreditcardLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkpetLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">반려동물동반</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkpetLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.expagerangeLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">체험가능연령</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.expagerangeLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.infocenterLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">문의및안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.infocenterLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.openPeriod ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">개장기간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.openPeriod}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.parkingfeeLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차요금</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parkingfeeLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.parkingLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차시설</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parkingLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.reservation ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">예약안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.reservation}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.restdateLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">쉬는날</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.restdateLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.scaleLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">규모</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.scaleLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.usefeeLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">입장료</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.usefeeLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.usetimeLeports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">이용시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.usetimeLeports}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
	                                    <c:forEach items="${repeatInfo}" var="repeatInfo">
	                                    <tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">${repeatInfo.infoName}</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${repeatInfo.infoText}
	                                        </td>
	                                    </tr>
	                                    </c:forEach>
	                                </c:if>
	                                
	                              <!-- 38 : 쇼핑 -->
									<c:if test="${tour.contentTypeId == 38}">
                                    	<c:if test="${detail.chkbabyCarriage ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">유모차대여</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkbabyCarriage}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkcreditCard ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">카드사용정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkcreditCard}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.chkpetShopping ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">반려동물동반</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkpetShopping}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.cultureCenter ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">문화센터바로가기</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.cultureCenter}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.fairDay ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">장서는날</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.fairDay}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.infocenterShopping ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">문의및안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.infocenterShopping}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.opendateShopping ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">개장일</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.opendateShopping}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.openTime ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">영업시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.openTime}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.parkingShopping ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차시설</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parkingShopping}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.restdateShopping ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">쉬는날</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                               ${detail.restdateShopping}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.restroom ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">화장실설명</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.restroom}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.saleItem ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">판매품목</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.saleItem}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.saleItemcost ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">판매품목별가격</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.saleItemcost}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.scaleShopping ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">규모</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.scaleShopping}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.shopGuide ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">매장안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.shopGuide}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                 </c:if>
	                                 
	                                  <!-- 39 : 음식점 -->
									<c:if test="${tour.contentTypeId == 39}">
                                    	<c:if test="${detail.chkcreditcardFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6 ">카드사용정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkcreditcardFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
                                    	<c:if test="${detail.treatMenu ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6 ">취급메뉴</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.treatMenu}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
                                    	<c:if test="${detail.firstMenu ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">대표메뉴</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.firstMenu}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.infocenterFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;" style="word-break: keep-all;">문의및안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.infocenterFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.kidsFacility ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">어린이놀이방여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                <c:if test="${detail.kidsFacility eq 0}"><c:out value="없음"></c:out></c:if>
		                                <c:if test="${detail.kidsFacility eq 1}"><c:out value="있음"></c:out></c:if>
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.opendateFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">개업일</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.opendateFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.opentimeFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">영업시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.opentimeFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.packing ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">포장가능</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.packing}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.parkingFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차시설</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parkingFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.reservationFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">예약안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.reservationFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.restdateFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">쉬는날</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.restdateFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.scaleFood ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">규모</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.scaleFood}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.seat ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">좌석수</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.seat}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                    	<c:if test="${detail.smoking ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">금연/흡연여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.smoking}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
                                    	<c:if test="${detail.lcnsNo ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">인허가번호</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.lcnsNo}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                </c:if>

                                    
                                    <!-- 숙박 -->
                                	<c:if test="${tour.contentTypeId == 32}">
                                  		<c:if test="${detail.accomCountLodging ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">수용가능인원</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.accomCountLodging}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.benikia ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">베니키아여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.benikia}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.checkInTime ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">입실시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.checkInTime}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.checkOutTime ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">퇴실시간</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.checkOutTime}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.chkCooking ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">객실내취사여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.chkCooking}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.foodPlace ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">식음료장</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.foodPlace}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.goodStay ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">굿스테이여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.goodStay}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.hanok ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">한옥여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.hanok}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.infoCenterLodging ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">문의및안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.haninfoCenterLodgingok}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.parkingLodging ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">주차시설</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.parkingLodging}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.pickUp ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">픽업서비스</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.pickUp}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.roomCount ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">객실수</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.roomCount}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.reservationLodging ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">예약안내</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.reservationLodging}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.reservationUrl ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">예약안내홈페이지</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.reservationUrl}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.roomType ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">객실유형</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.roomType}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.scaleLodging ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">규모</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.scaleLodging}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.subFacility ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">부대시설(기타)</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.subFacility}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.barbecue ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">바비큐장여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.barbecue}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.beauty ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">뷰티시설정보</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.beauty}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.beverage ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">식음료장여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.beverage}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.bicycle ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">자전거대여여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.bicycle}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.campfire ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">캠프파이여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.campfire}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.fitness ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">헬스장여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.fitness}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.karaoke ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">노래방여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.karaoke}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.publicBath ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">공용샤워실여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.publicBath}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.publicPc ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">공용PC방여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.publicPc}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.sauna ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">사우나실여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.sauna}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.seminar ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">세미나실여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.seminar}
	                                        </td>
	                                    </tr>
	                                    </c:if>

                                  		<c:if test="${detail.sports ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">스포츠시설여부</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.sports}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
                                  		<c:if test="${detail.refundRegulation ne null}">
                                    	<tr>
	                                    <th class="ps-0 fs-6" style="word-break: keep-all;">환불규정</th>
	                                    <td class="pe-0 text-end text-pSb text-gray-600" style="word-break: keep-all;">
		                                ${detail.refundRegulation}
	                                        </td>
	                                    </tr>
	                                    </c:if>
	                                    
                       				</c:if>
                       				
                       				
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="py-3 bg-gray-100">
        <div class="container">
            <h3 class="mb-1" style="font-family:pBlack">추천 관광코스</h3>
            <p class="subtitle text-sm text-warning mb-3">You may also like </p>
            <div class="col-lg-auto">
                <div class="row mt-2">

                    <div class="col-md-11">
                        <span class="courseName"><c:out value="${detailCourseList.size()}"/>코스</span>
                        <span class="h5" style="font-family: pB;"><c:out value="${detailCourseList.get(0).getMyCourseTitle()}"/></span>
                    </div>
                </div>
                <!-- Slider main container-->
                <div class="swiper-container nav nav-tabs swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}"
                    role="tablist">

                    <!-- Additional required wrapper-->
                     <div class="swiper-wrapper pb-5">
                                <!-- Slides-->
                                  <c:if test="${!empty detailCourseList}">
										<c:forEach var="MyCourseSearch" items="${detailCourseList}" varStatus="status"> 
                                <div class="swiper-slide h-auto px-1">
                                    <!-- place item-->
                                   
                                   
                                    <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                                        <div class="card h-100 border-0 shadow">
                                            <div class="card-img-top  overflow-hidden gradient-overlay">
                                                <img class="course-pic" src="${MyCourseSearch.firstImage}" />
                                                <a class="tile-link" href="${path}/tourDetailInfo.do?contentId=${MyCourseSearch.contentId}&contentTypeId=${MyCourseSearch.contentTypeId}"></a>
                                                <div class="card-img-overlay-bottom z-index-20 ">
                                                    <div class="d-flex text-white text-sm align-items-center ">
                                                        <div style="font-family: pB; font-size:larger"><em><c:out value="${status.index +1}"/>코스</em></div>
                                                    </div>
                                                </div>
                                                <div class="card-img-overlay-top text-end">
                                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " onclick="location.href='${path}/tourLike.do?contentId=${tour.contentId}'">
                                                        <i class="fas fa-heart svg-icon"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="card-body d-flex align-items-center">
                                                <div class="row w-100 txt_line ">

                                                    <p class="card-title col-md-7"><a class="courseList_title text-black" href="#"><c:out value="${MyCourseSearch.detailTitle}"/></a>
                                                    </p>
                                                    <div class="d-flex col-md-3" style="text-align: center">
                                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><c:forEach begin="1" end="${MyCourseSearch.detailCntRevStar}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MyCourseSearch.detailCntRevStar < 5}"><c:forEach begin="${MyCourseSearch.detailCntRevStar+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                                        </p>
                                                        <span class="text-primary justify-center"><c:out value="${MyCourseSearch.detailCntRevStar}"/>/5</span>
                                                    </div>
                                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i><c:out value="${MyCourseSearch.addr1}"/></p>
                                                    <div class=" card-text text-muted 
                                                        text-sm text-black-50 txt_line">
                                                        <div class="courseList_info"><c:out value="${MyCourseSearch.overview}"/>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                                    
                             
                                     </c:forEach>
                				 </c:if>
                            </div>
                </div>
            </div>
        </div>
    </div>
   
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
    <!-- Map-->
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
    <!-- Available tile layers-->
    <script src="${path}/resources/js/map-layers.js">
    </script>
    <script src="${path}/resources/js/map-detail.js"></script>
    <script>
        $(document).ready(function() {
            $('.like-button').click(function() {
                $(this).toggleClass('is-active');
            })
        })
    </script>
    
<!--     <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cf195a29b50143fef5883a438669e5bb"></script> -->
    
     <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec2d8185dedc7836784431638389dd3d"></script>
                     
     <script>
                  
                     var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                     mapOption = { 
                         center: new kakao.maps.LatLng('${tour.mapY}', '${tour.mapX}'), // 지도의 중심좌표
                         level: 6 // 지도의 확대 레벨
                     };

	                 var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	                 // 마커가 표시될 위치입니다 
	                 var markerPosition  = new kakao.maps.LatLng('${tour.mapY}', '${tour.mapX}'); 
	
	                 // 마커를 생성합니다
	                 var marker = new kakao.maps.Marker({
	                     position: markerPosition
	                 });
	
	                 // 마커가 지도 위에 표시되도록 설정합니다
	                 marker.setMap(map);
	                 
	              // 지도에 확대 축소 컨트롤을 생성한다
		                var zoomControl = new kakao.maps.ZoomControl();
		
		                // 지도의 우측에 확대 축소 컨트롤을 추가한다
		                map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		                // 마커 이미지의 주소
		                var markerImageUrl = "${path}/resources/img/marker3.png",
		                    markerImageSize = new kakao.maps.Size(40, 42), // 마커 이미지의 크기
		                    markerImageOptions = {
		                        offset: new kakao.maps.Point(20, 42) // 마커 좌표에 일치시킬 이미지 안의 좌표
		                    };
		
		                // 마커 이미지의 이미지 크기 입니다
		                var imageSize = new kakao.maps.Size(24, 35);
		
		                // 마커 이미지를 생성합니다    
		                var markerImage = new kakao.maps.MarkerImage(markerImageUrl, imageSize);
		
		                for (let i = 0; i < positions.length; i++) {
		                    var data = positions[i];
		                    displayMarker(data);
		                }
		
		                // 지도에 마커를 표시하는 함수입니다    
		                function displayMarker(data) {
		                    var marker = new kakao.maps.Marker({
		                        map: map,
		                        position: data.latlng,
		                        image: markerImage
		                    });
		                    var overlay = new kakao.maps.CustomOverlay({
		                        yAnchor: 1,
		                        position: marker.getPosition()
		                    });
		                    
		                    if (!data.tel){
		                    	data.tel= '&nbsp;&nbsp;&#45;-- ';
		                    }
		
		                    // var content = document.getElementById('clickMarkerInfo');
		                    // var content = document.getElementById('popup_map');
		                    var content = document.createElement('div');
		                    content.innerHTML = '<div class="wrap" id="popup_map">' +
		                        '    <div class="info">' +
		                        '        <div class="title">' +
		                        data.title +
		                        '        </div>' +
		                        '        <div class="body">' +
		                        '            <div class="img">' +
		                        '                <img src="' +
		                        data.image +
		                        '" width="73" height="70">' +
		                        '           </div>' +
		                        '            <div class="desc">' +
		                        '                <div class="text-sm">' +
		                        '<MARQUEE>' +
		                        data.address +
		                        '</MARQUEE>' +
		                        '</div>' +
		                        '                <div class="jibun">'+
		                        	data.tel +
		                        '</div>' +
//	 	                        '                <div>'+
//	 	                        data.hp +
//	 	                        '</div>' +
		                        '                <div class="pt-1"><a href="https://www.kakaocorp.com/main" target="_blank" class="link">상세페이지 →</a></div>' +
		                        '            </div>' +
		                        '        </div>' +
		                        '    </div>' +
		                        '</div>';
		                    // content.innerHTML = data.title;
		                    // content.style.cssText = 'background: white; border: 1px solid black';
		
		                    var closeBtn = document.getElementById('closeBtn');
		                    var closeBtn = document.createElement('button');
		                    closeBtn.innerHTML = 'X';
		                    closeBtn.style.cssText = 'background: rgba(0, 0, 0,0); color: rgba(0, 0, 0,0); border: none';
		                    closeBtn.onclick = function () {
		                        overlay.setMap(null);
		                    };
		
		                    content.appendChild(closeBtn);
		                    overlay.setContent(content);
		
		                    var isClick = new kakao.maps.event.addListener(marker, 'click', function () {
		                        overlay.setMap(map);
		                        return true;
		                    });
		
		                    if (isClick === true) {
		                        overlay.setMap(null);
		                    }
		
		                    // kakao.maps.event.addListener(marker, 'click', function() {
		                    //     overlay.setMap(null);
		                    // });
		
		
		                }							    
    
        //  버튼 클릭 이벤트 
        var div2 = document.getElementsByClassName("div2");

        function handleClick(event) {
            console.log(event.target);
            // console.log(this);
            // 콘솔창을 보면 둘다 동일한 값이 나온다

            console.log(event.target.classList);

            if (event.target.classList[1] === "clicked") {
                event.target.classList.remove("clicked");
            } else {
                for (var i = 0; i < div2.length; i++) {
                    div2[i].classList.remove("clicked");
                }

                event.target.classList.add("clicked");
            }
        }

        function init() {
            for (var i = 0; i < div2.length; i++) {
                div2[i].addEventListener("click", handleClick);
            }
        }

        init();

        //  버튼 클릭 이벤트 끝 

        //  코스 클릭시 위에 체크박스 해제 

        // 버튼 클릭시 체크박스 해제
        $(function() {

            $("input[name=allNonChk]").click(function() {
                $(":checkbox").prop("checked", false);
            });
        });
        $(function() {

            $("input[id=allNonChk]").click(function() {
                $(":checkbox").prop("checked", false);
            });
        });

        $(document).ready(function() {
            $('input[type="checkbox"][name="course"]').click(function() {
                if ($(this).prop('checked')) {
                    $('input[type="checkbox"][name="place"]').prop('checked', false);
                    $(this).prop('checked', true);
                }
            });
        });


        //  클릭시 div 확장 

        function onDisplay() {
            $('#noneDiv').show();
        }
        
</script>

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////     -->


    <script>
        $(document).on('click', '.tile-link.active', function() {
            var href = $(this).attr('href').substring(0);
            $(this).removeClass('active');
            $('.tab-pane[id="' + href + '"]').removeClass('active');
        })
    </script>
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js">
    </script>
    <script src="${path}/resources/js/datepicker-detail.js">
    </script>
</body>

</html>