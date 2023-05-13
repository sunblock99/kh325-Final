<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="detailRecommCourseList" value="${detailRecommCourseList}"/>

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
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">


</head>

<style>
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

    <section>
        <!-- Slider main container-->
        <div class="swiper-container detail-slider slider-gallery pt-4">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper">
                <!-- Slides-->
                 <c:if test="${!empty detailRecommCourseList}">
				<c:forEach var="RecommCourseDetail" items="${detailRecommCourseList}"> 
                <div class="swiper-slide">
                    <a href="${RecommCourseDetail.subDetailImg}" data-toggle="gallery-top" title=""><img style="height: 300px; width:100%;" src="<c:if test="${RecommCourseDetail.subDetailImg eq null}"><c:out value="${path}/resources/image/noImage1.png"/></c:if><c:if test="${RecommCourseDetail.subDetailImg ne null}"><c:out value="${RecommCourseDetail.subDetailImg}"/></c:if>" ></a>
                </div> 
                </c:forEach>
                 </c:if>

            </div>
            <div class="swiper-pagination swiper-pagination-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
            <div class="swiper-button-next swiper-button-white"></div>
        </div>
    </section>
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-auto">
                <div class="row mt-2">
                    <div class="col-md-1" style="    
                    padding: 0.5em 0.7em;
                    line-height: 1;
                    color: #fff;
                    text-align: center;
                    white-space: nowrap;
                    vertical-align: baseline ;
                background:#FD9F28; border-radius: 40px;color:#fff;font-weight:700; font-size: 160%;"><c:out value="${detailRecommCourseList.size()}"/>코스
                    </div>
                    <div class="col-md-11">
                        <span class="h1" style="font-family: pB;"><c:out value="${detailRecommCourseList.get(0).getDetailTitle()}"/></span>
                    </div>
                </div>
                <div class="row mb-4">
                    <ul class="col-6 list-inline mt-4 mb-2 text-pB">
                        <li class="list-inline-item me-lg-4 " style="color:#907B65; font-size: 20px;"><i class="fa-map-marker-alt fa me-1"></i><c:out value="${detailRecommCourseList.get(0).getAreaName()}"/><c:out value="${detailRecommCourseList.get(0).getDetailAreaName()}"/></li>
                        <li class="list-inline-item me-lg-4" style="color:#907B65; font-size: 20px;">
                            <i class="fa fa-regular fa-calendar px-2"></i><c:out value="${detailRecommCourseList.get(0).getSchedule()}"/>
                        </li>
                        <li class="list-inline-item me-lg-4" style="color:#907B65; font-size: 20px;">
                            <i class="fa fa-map-marked-alt h-auto px-2"></i><c:out value="${detailRecommCourseList.get(0).getTheme()}"/>
                        </li>
                    </ul>
                    <ul class="col-6 list-inline mt-4 mb-2 text-end text-pB">
                        <li class="list-inline-item me-3" style="color:#907B65; font-size: 20px;">
                            <a class="text-secondary " href="#"> <i class="fa fa-heart  h-auto px-2"></i>즐겨찾기</a>
                        </li>
                        <li class="list-inline-item me-lg-4" style="color:#907B65; font-size: 20px;">
                            <a class="text-secondary " href="#"> <i class="fa fa-bookmark  h-auto px-2"></i>나의코스</a>
                        </li>
                    </ul>
                    <hr>
                </div>
                <div class="row">
                    <p class="text-muted fw-light mb-4"><c:out value="${detailRecommCourseList.get(0).getOverview()}"/>
                    </p>
                </div>
                <hr>
                <p class="subtitle text-sm text-pB" style="color:#907B65;">Travel Plan </p>
                <h5 class="mb-4 text-pEb">여행코스 정보
                </h5>
                <div class="py-3 " style="background-color:rgb(247, 245, 240)">
                    <div class="container">

                        <!-- Nav tabs -->
                        <div class="swiper-container nav nav-tabs swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}"
                            role="tablist">

                            <!-- Additional required wrapper-->
                            <div class="swiper-wrapper pb-5">
                                <!-- Slides-->
                               <c:if test="${!empty detailRecommCourseList}">
										<c:forEach var="RecommCourseDetail" items="${detailRecommCourseList}" varStatus="status"> 
                                <div class="swiper-slide h-auto px-1">
                                    <!-- place item-->
                                   
                                    <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                                        <div class="card h-100 border-0 shadow">
                                            <div class="card-img-top  overflow-hidden gradient-overlay">
                                                <img style="width: 289px !important;  height: 216px !important;" src="<c:if test="${RecommCourseDetail.subDetailImg eq null}"><c:out value="${path}/resources/image/noImage1.png"/></c:if><c:if test="${RecommCourseDetail.subDetailImg ne null}"><c:out value="${RecommCourseDetail.subDetailImg}"/></c:if>" />
                                                <a class="tile-link" href="#myCourse${status.index +1}" data-bs-toggle="tab" role="tab"></a>
                                                <div class="card-img-overlay-bottom z-index-20 ">
                                                    <div class="d-flex text-white text-sm align-items-center ">
                                                        <div style="font-family: pB; font-size:larger"><em><c:out value="${status.index +1}"/>코스</em></div>
                                                    </div>
                                                </div>
                                                <div class="card-img-overlay-top text-end">
                                                    <a class=" heart_pink card-fav-icon position-relative z-index-50" name="clickHeart" href="#">
                                                        <i class="fas fa-heart svg-icon"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="card-body d-flex align-items-center">
                                                <div class="row w-100 txt_line ">

                                                    <p class="card-title col-md-7"><a class="courseList_title text-black" href="${path}/tourDetailInfo.do?contentId=${RecommCourseDetail.subContentId}&contentTypeId=${RecommCourseDetail.contentTypeId}"><c:out value="${RecommCourseDetail.subName}"/></a>
                                                    </p>
                                                    <div class="d-flex col-md-3" style="text-align: center">
                                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><c:forEach begin="1" end="${RecommCourseDetail.cntRevStar}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${RecommCourseDetail.cntRevStar < 5}"><c:forEach begin="${RecommCourseDetail.cntRevStar+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                                        </p>
                                                        <span class="text-primary justify-center"><c:out value="${RecommCourseDetail.cntRevStar}"/>/5</span>
                                                    </div>
                                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i><c:out value="${RecommCourseDetail.areaName}"/><c:out value="${RecommCourseDetail.detailAreaName}"/></p>
                                                    <div class=" card-text text-muted 
                                                        text-sm text-black-50 txt_line">
                                                        <div class="courseList_info"><c:out value="${RecommCourseDetail.subDetailOverview}"/>
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

                        <!-- Tabs content -->
                        <div class="container tab-content">
                        <c:if test="${!empty detailRecommCourseList}">
							<c:forEach var="i" begin="1" end="${detailRecommCourseList.size()}" step="1" varStatus="status"> 
                            <div class="tab-pane fade" id="myCourse${i}" role="tabpanel">
                                <div>
                                    <p class="mt-2 mb-2" style="font-family:pB;"><i class="fa fa-arrow-right p-lg-2 "></i><em><c:out value="${i}"/>코스 &nbsp;<c:out value="${detailRecommCourseList.get(i-1).getDetailTitle()}"/></em></p>
                                </div>
                                <div class="row gallery mb-3">
                                	<c:if test="${!empty recommCourseImageList}">
                                	<c:forEach var="RecommCourseImage" items="${recommCourseImageList}" varStatus="status"> 
                                	<c:if test="${RecommCourseImage.subNum eq i}">
                                    <div class="col-lg-4 col-6 px-1 mb-2">           
                                         <a href="${RecommCourseImage.originImgUrl}" data-fancybox="gallery" title=""><img style="height: 100%; width:100%;" src="<c:if test="${RecommCourseImage.originImgUrl eq null}"><c:out value="${path}/resources/image/noImage1.png"/></c:if><c:if test="${RecommCourseImage.originImgUrl ne null}"><c:out value="${RecommCourseImage.originImgUrl}"/></c:if>"></a>
                                    </div>
                                    </c:if>
                                    </c:forEach>
                                    </c:if>
                                </div>
                            </div>
						</c:forEach>
                           </c:if>
                        </div>
                    </div>

                </div>
                <div class="text-block">
                    <p class="subtitle text-sm text-pB" style="color:#907B65;">Location</p>
                    <h5 class="mb-5 text-pEb">여행코스 위치정보</h5>
                        <div class="map-wrapper-450 mt-3">
                            <div class="h-100" id="detailMap2"></div>
                        </div>
                </div>
                
                
              <div class="text-block">
                    <p class="subtitle text-sm text-pB" style=" color:#907B65; ">Reviews </p>
                    <h5 class="mb-4 text-pEb">여행코스 후기 </h5>
                    <c:if test="${!empty recommCourseRevList}">
					<c:forEach var="RecommCourseRev" items="${recommCourseRevList}" varStatus="status"> 
                    <div class="d-flex d-block d-sm-flex review" style="padding-top: 1rem; padding-bottom: 1rem;">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="${RecommCourseRev.userAvatar}" ><span class="text-uppercase text-muted text-sm"></span></div>
                        <div>
                            <h6 class="mt-2 mb-1"><c:out value="${RecommCourseRev.userName}"></c:out></h6>
                            <div class="mb-0"><c:forEach begin="1" end="${RecommCourseRev.star}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${RecommCourseRev.star < 5}"><c:forEach begin="${RecommCourseRev.star+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                            </div>
                            <p class="text-muted text-sm"><c:out value="${RecommCourseRev.content}"></c:out></p>
                        </div>
                    </div>           
                    </c:forEach>
					</c:if>
                    <div class="py-5">
                        <button class="btn btn-outline-warning" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
                        <div class="collapse mt-4" id="leaveReview">
                            <h5 class="mb-4 text-pB">Leave a review</h5>
                            <form class="form" id="contact-form" method="post" action="${path}/course/recommCourseRev?contentId=${detailRecommCourseList.get(0).getContentId()}">
                            	
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label text-pB" for="name">Your name *</label>
                                            <input class="form-control" type="text" name="userName" value="${loginMember.userName}" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label text-pB" for="rating" >Your rating *</label>
                                            <select class="form-select focus-shadow-0" name="star" id="cntRevStar">
                          <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                          <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                          <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                          <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                          <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                        </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label text-pB" for="email">Your email *</label>
                                    <input class="form-control" type="email" name="email" id="email" value="${loginMember.userEmail}" readonly="readonly">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label text-pB" for="review">Review text *</label>
                                    <textarea class="form-control" rows="4" name="content" id="review" placeholder="여행은 즐거우셨나요? 방문하신 장소에 대한 후기를 남겨주세요" required="required"></textarea>
                                </div>
                                <button class="btn btn-warning" type="submit">Post review</button>
                            </form>
                        </div>
                    </div>
                    <!-- Pagination -->
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-template d-flex justify-content-center ">
                            <li class="page-item-course ">
                                <a class="page-link-course " href="# "> <i class="fa fa-angle-left "></i></a>
                            </li>
                            <li class="page-item-course active "><a class="page-link-course" href="# ">1</a></li>
                            <li class="page-item-course "><a class="page-link-course " href="# ">2</a></li>
                            <li class="page-item-course "><a class="page-link-course " href="# ">3</a></li>
                            <li class="page-item-course ">
                                <a class="page-link-course " href="# "> <i class="fa fa-angle-right "></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>


      <!-- Footer-->
     <!-- Footer-->
	 <jsp:include page="/WEB-INF/views/common/footer.jsp"/> 
      <!-- Copyright section of the footer-->
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
                  
                     var mapContainer = document.getElementById('detailMap2'),
                     mapOption = { 
                         center: new kakao.maps.LatLng('${detailRecommCourseList2[0].mapY}', '${detailRecommCourseList2[0].mapX}'), // 지도의 중심좌표
                         level: 6 // 지도의 확대 레벨
//                          mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
                     };

                    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
                   
                	
                    var positions = [];
            		<c:forEach items="${detailRecommCourseList2}" var="RecommCourseDetail">
						positions.push({
							id: '${RecommCourseDetail.subContentId}',
							type: '${RecommCourseDetail.contentTypeId}',
							latlng: new kakao.maps.LatLng('${RecommCourseDetail.mapY}', '${RecommCourseDetail.mapX}'),
							title: '${RecommCourseDetail.subName}',
		                	image: '${RecommCourseDetail.subDetailImg}',
							address: '${RecommCourseDetail.detailAreaName}'
	               		});
						   </c:forEach>
                  
	                
// 					<c:forEach items="${detailCourseList}" var="MyCourseSearch">
// // 					 <c:if test="${MyCourseSearch.mapX eq null }">
// 						positions.push({
// 	                    latlng: new kakao.maps.LatLng('33.450705', '126.570677'),
// 	               		});
// // 						 </c:if>
// 	                </c:forEach>
                  
   
                    // 마커를 생성합니다
                 /*    var marker = new kakao.maps.Marker({
                        position: markerPosition
                    }); */
   
                    // 마커가 지도 위에 표시되도록 설정합니다
//                     marker.setMap(map);
                    
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
  	                        xAnchor: -0.2,
  	                        position: marker.getPosition()
  	                    });
  	                    
  	                    
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
  	                        '<div>' +
  	                        data.address +
  	                        '</div>' +
  	                        '</div>' +

  	                        '                <div class="pt-4"><a href="${path}/tourDetailInfo.do?contentId='+
  	                        		data.id + '&contentTypeId='+ data.type +
  	                        		'"  class="link">상세페이지 →</a></div>' +
  	                        '            </div>' +
  	                        '        </div>' +
  	                        '    </div>' +
  	                        '</div>';
  	                    // content.innerHTML = data.title;
  	                    // content.style.cssText = 'background: white; border: 1px solid black';
  	
  	                    var closeBtn = document.getElementById('closeBtn');
  	                    var closeBtn = document.createElement('button');
  	                    closeBtn.innerHTML = 'xx';
  	                    closeBtn.style.cssText = 'background: rgba(0, 0, 0,0); color: rgba(0, 0, 0,0); border: none ';
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
  	
  	                
  	                var paths = [];
  	                for (let i = 0; i < positions.length; i++) {
  	                    var pathDarw = positions[i].latlng;
  	                    paths.push(pathDarw);
  	                }
  	
  	                // 지도에 선을 표시한다 
  	                var polyline = new kakao.maps.Polyline({
  	                    map: map, // 선을 표시할 지도 객체 
  	                    // path: [ // 선을 구성하는 좌표 배열
  	                    //     // new kakao.maps.LatLng(33.450705, 126.570677),
  	                    //     // new kakao.maps.LatLng(33.450936, 126.569477),
  	                    //     // new kakao.maps.LatLng(33.450879, 126.569940),
  	                    //     // new kakao.maps.LatLng(33.451393, 126.570738),
  	                    //     data.latlng,
  	                    // ],
  	                    path: paths,
  	                    // endArrow: true, // 선의 끝을 화살표로 표시되도록 설정한다
  	                    strokeWeight: 3, // 선의 두께
  	                    strokeColor: '#FF846B', // 선 색
  	                    strokeOpacity: 0.8, // 선 투명도
  	                    strokeStyle: 'shortdash' // 선 스타일
  	
  	
  	                });
  	
  	
  	
  	
  	
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
  	                $(function () {
  	
  	                    $("input[name=allNonChk]").click(function () {
  	                        $(":checkbox").prop("checked", false);
  	                    });
  	                });
  	                $(function () {
  	
  	                    $("input[id=allNonChk]").click(function () {
  	                        $(":checkbox").prop("checked", false);
  	                    });
  	                });
  	
  	                $(document).ready(function () {
  	                    $('input[type="checkbox"][name="course"]').click(function () {
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

  	                
  	                //클릭시 중심좌표 이동
  	            function clickMove(mapY, mapx){
  	                // 이동할 위도 경도 위치를 생성합니다 
  	                var moveLatLon = new kakao.maps.LatLng(mapY, mapX);
  	                
  	                // 지도 중심을 이동 시킵니다
  	                map.clickMove(moveLatLon);
  	            }
  	                
  	            function panTo(mapX, mapY) {
  	                // 이동할 위도 경도 위치를 생성합니다 
  	                var moveLatLon = new kakao.maps.LatLng(mapX, mapY);
  	                
  	                // 지도 중심을 부드럽게 이동시킵니다
  	                // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
  	                map.panTo(moveLatLon);            
  	            }        
  	            </script>
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////     -->
<script>
            for (var i = 0; i < 6; i++) { // 갤러리 박스가 12개라 임시로 12개 해둠,,
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