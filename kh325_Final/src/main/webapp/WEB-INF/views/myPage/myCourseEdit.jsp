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
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <link rel="stylesheet" href="${path}/resources/css/myPage_myCourseEdit.css">
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
    <section class="py-5">
        <div class="container ">
            <div class="row">
                <div class="col-lg-3 me-lg-auto">
                    <div class="card border-0 shadow mb-6 mb-lg-0">
                        <div class="card-header bg-gray-100 py-4 border-0 text-center" style="background-color: #FFF1CC!important;">
                            <h3 class="text-pB">나의 회원정보</h3>
                            <p class=" text-xs mb-4 text-pB" style="color:#987107">오늘도 투게더와 함께 멋진 여행을 계획해보세요.</p>
                            <a class="d-inline-block" href="#"><img class="d-block avatar avatar-xxl p-2 mb-2" src="${loginMember.userAvatar }" alt=""></a>
                            <h5 class="text-pB"><c:out value="${loginMember.userName}"/></h5>
                            <p class="text-muted text-sm mb-0 text-pB"><c:out value="${loginMember.userAddress}"/> </p>
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
                                        <p class="mb-0 text-pB" style="color: black">작성 리뷰</p>
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
                                    <a href="${path}/community/gallery?searchType=uno&searchValue=${loginMember.userNo}">
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
                    <h1 class="hero-heading mb-10 text-pEb">My Course</h1>

                    <div class="text-block">
                        <p class="text-muted text-pB">원하시는 코스를 만들어보세요. </p>
                    </div>
                    <!--<div>
                        <button class="btn btn-primary" type="submit" style="background-color: #FFF1CC;border-color: #FFF1CC; color:#FC950D! important;float: right;margin-top: 10px;margin-bottom: 20px;">코스 만들기</button></div>
                    <div class="text-block"> -->
                    <!-- <p class="subtitle text-sm text-primary">Reviews </p>
                        <h5 class="mb-4">Listing Reviews </h5> -->
                    <div class="text-block">
                    <form action="${path}/myPage/myCourseEdit/edit" method="post" name="" id="edit1">
                        <div class=" mb-5 col-12">
                            <label class="form-label" for="password-current" style="color:black">
                                    <h6 class="text-pEb">코스 이름</h6>
                                </label>
                                 <input type="hidden" name="userNo" value="${loginMember.userNo}">
                                  <input type="hidden" name="myCourseNo" value="${myCourseEditList.get(0).getMyCourseNo()}" >
	                             <input type="hidden" name="myCourseMainImage" value="${myCourseEditList.get(0).getFirstImage()}" >  
                            <input class="form-control" type="text" name="myCourseTitle" id="title" value="<c:out value="${myCourseEditList.get(0).getMyCourseTitle()}"/>">
                        </div>

                        <div class="mb-2">
                            <label class="form-label me-2 text-pEb" for="form_sort"></label>
                            <div class="dropdown bootstrap-select">
                                <div class="dropdown bootstrap-select">
                                    <div class="dropdown bootstrap-select">
                                        <div class="dropdown bootstrap-select "><select class="selectpicker" name="myCourseThema" id="thema" title="테마 " data-style="btn-selectpicker"  tabindex="null">
                              <option class="text-pEb" value="가족코스">가족코스   </option>
                              <option class="text-pEb" value="혼자여행">혼자여행   </option>
                              <option class="text-pEb" value="도보코스">도보코스   </option>
                              <option class="text-pEb" value="힐링코스">힐링코스   </option>
                              <option class="text-pEb" value="맛코스">맛코스   </option>
                              <option class="text-pEb" value="캠핑코스">캠핑코스   </option>
                              <option class="text-pEb" value="반려동물과함께">반려동물과함께   </option>
                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <label class="form-label ms-4 me-2 text-pEb" for="form_sort">코스 일정</label>
                            <div class="dropdown bootstrap-select">
                                <div class="dropdown bootstrap-select">
                                    <div class="dropdown bootstrap-select">
                                        <div class="dropdown bootstrap-select"><select class="selectpicker" name="myCourseSchedule" id="schedule" title="일정 " data-style="btn-selectpicker" tabindex="null">
                              <option class="text-pEb" value="당일여행 " >당일여행   </option>
                              <option class="text-pEb" value="1박2일">1박2일   </option>
                              <option class="text-pEb" value="2박3일이상">2박3일이상   </option>
                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                              <div class=" mb-5 col-12 mt-3">
                            <label class="form-label" for="password-current" style="color:black">
                                <h6 class="text-pEb">코스 설명</h6>
                            </label>
                            <input class="form-control" type="text" name="myCourseContent" id="content" value="<c:out value="${myCourseEditList.get(0).getMyCourseContent()}"/>"style="height:150px; border: 2px solid #ced4da;">
                        </div>

                        <div class="mb-4" style=" width:100%;  border: 1px solid #ced4da;  padding : 10px; padding-left: 15px; padding-right: 15px;">
                            <h6 class="text-pEb" style="margin-bottom: 0px;">공개여부
                                <span style="float:right;">
                                <input type="radio" name="myCourseStatus" id="yes" value="Y">
                                <label for="chkMenu03">&nbsp;&nbsp;허용</label>
                        
                                <input type="radio" name="myCourseStatus" id="no" value="N" checked="checked">
                                <label for="chkMenu04">&nbsp;&nbsp;불가</label>
                                </span>
                            </h6>
                        </div>
						</form>
						
                        <hr style="height: 3px;">
                        <h6 class="text-pEb">코스 목록</h6>
                        <hr>
	       <c:if test="${!empty myCourseEditList}">
				<c:forEach var="i" begin="0" end="${myCourseEditList.size()-1}" step="1">
<%-- 				<form action="${path}/myPage/myCourseEdit/editSnAscent" method="post" name="" id="editSnUp"> --%>
			
<%--                                   <input type="hidden" name="myCourseNo" value="${myCourseEditList.get(i).getMyCourseNo()}" > --%>
<%-- 	                             <input type="hidden" name="myCourseDetailNo" value="${myCourseEditList.get(i).getMyCourseDetailNo()}" >  --%>
<!-- 				 </form> -->
<%-- 				 	<form action="${path}/myPage/myCourseEdit/editSnDescent" method="post" name="" id="editSnDown"> --%>
		
<%--                                   <input type="hidden" name="myCourseNo" value="${myCourseEditList.get(i).getMyCourseNo()}" > --%>
<%-- 	                             <input type="hidden" name="myCourseDetailNo" value="${myCourseEditList.get(i).getMyCourseDetailNo()}" >  --%>
<!-- 				 </form> -->
<%-- 				 	<form action="${path}/myPage/myCourseEdit/deleteContent" method="post" name="" id="editDelete"> --%>
		
<%--                                   <input type="hidden" name="myCourseNo" value="${myCourseEditList.get(i).getMyCourseNo()}" > --%>
<%-- 	                             <input type="hidden" name="myCourseDetailNo" value="${myCourseEditList.get(i).getMyCourseDetailNo()}" >  --%>
<!-- 				 </form> -->
                        <div class="d-flex d-block d-sm-flex review" style="padding-top: 10px; padding-bottom: 10px;">
                            <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                            <a href="${path}/tourDetailInfo.do?contentId=${myCourseEditList.get(i).getContentId()}&contentTypeId=${myCourseEditList.get(i).getContentTypeId()}">
                                <img class="d-block avatar avatar-xl p-2 mb-2"  style="border-radius: 0%; width: 11rem; box-shadow:0 0 0rem rgb(0 0 0 / 0%)" src="<c:out value="${myCourseEditList.get(i).getFirstImage()}"/>" alt="Luke Skywalker">
                            </a>
                            </div>
                            <div>
                                <h5 class="mt-3 mb-3 text-pB"><c:out value="${myCourseEditList.get(i).getDetailTitle()}"/></h5>
                                <p class="text-muted text-sm text-pB"><c:out value="${myCourseEditList.get(i).getAddr1()}"/></p>
                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm mt-3">
                                    <a type="button" class="delete-botton"  href="${path}/myPage/myCourseEdit/deleteContent?myCourseDetailNo=${myCourseEditList.get(i).getMyCourseDetailNo()}&myCourseNo=${myCourseEditList.get(i).getMyCourseNo()}"style="border-color:white; background-color:white; bo">
                                        <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray; " aria-hidden="true "></i>삭제</span>
                                    </a>
                                        <a type="button" class="delete-botton"  href="${path}/myPage/myCourseEdit/editSnAscent?myCourseDetailNo=${myCourseEditList.get(i).getMyCourseDetailNo()}&myCourseNo=${myCourseEditList.get(i).getMyCourseNo()}" style="margin-left:470px; border-color:white; background-color:white; ">
                                        <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-arrow-circle-up opacity-5 me-1 " style="color:gray; " aria-hidden="true "></i>순서 올리기</span>
                                    </a>
                                    <a type="button" class="delete-botton"  href="${path}/myPage/myCourseEdit/editSnDescent?myCourseDetailNo=${myCourseEditList.get(i).getMyCourseDetailNo()}&myCourseNo=${myCourseEditList.get(i).getMyCourseNo()}"  style="border-color:white; background-color:white; ">
                                        <span class="me-1 text-muted text-pB">
                                    <i class="fa fa-arrow-circle-down opacity-5 me-1" style="color:gray; " aria-hidden="true "></i>순서 내리기</span>
                                    </a>
                                </p>
                            </div>
                        </div>
                     
                  </c:forEach>
			</c:if>
<!-- 			<script> -->
<!-- // 			function chk_form1() { -->
<!-- // 			document.getElementById('editDelete').submit(); -->
<!-- // 			} -->
<!-- 			</script> -->
<!-- 			<script> -->
<!-- // 			function chk_form2() { -->
<!-- // 			document.getElementById('editSnUp').submit(); -->
<!-- // 			} -->
<!-- 			</script> -->
<!-- 			<script> -->
<!-- // 			function chk_form3() { -->
<!-- // 			document.getElementById('editSnDown').submit(); -->
<!-- // 			} -->
<!-- 			</script> -->
                        <h6 class="text-pEb mt-3">코스 위치정보</h6>
                        <!--MAP-->
                        <div class="map-wrapper-450 mt-3">
                            <div class="h-100" id="detailMap"></div>
                        </div>
                        <hr>
                        <!--MAP-->
                


                        <button class="btn btn-primary text-pB"  form="edit1" type="submit" style="background-color: #FFF1CC; border-color: #FFF1CC; color:#FC950D">저장하기</button>
                    </div>



                </div>
            </div>
        </div>
    </section>
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
    <script src="${path}/resources/js/map-layers.js">
    </script>
    <script src="${path}/resources/js/map-detail.js"></script>
    <script>
        createListingsMap({
            mapId: 'detailMap',
            jsonFile: 'js/restaurants-geojson.json',
            //tileLayer: tileLayers[5]  - uncomment for a different map styling
        });
    </script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cf195a29b50143fef5883a438669e5bb"></script>

    <script>
        //  지도 
        // src = " https://code.jquery.com/jquery-3.2.1.min.js"

        // type = "text/javascript"
        // src = "//dapi.kakao.com/v2/maps/sdk.js?appkey=cf195a29b50143fef5883a438669e5bb&libraries=clusterer"

        //  일반지도 

        var mapContainer = document.getElementById('detailMap'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 2, // 지도의 확대 레벨
                mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
            };


        // 마커를 표시할 위치와 title 객체 배열입니다 
          mapOption = { 
                         center: new kakao.maps.LatLng('${myCourseEditList[0].mapY}', '${myCourseEditList[0].mapX}'), // 지도의 중심좌표
                         level: 6 // 지도의 확대 레벨
//                          mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
                     };


                    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
                    
                	
                    var positions = [];
                    <c:forEach items="${myCourseEditList}" var="MyCourseSearch">
						positions.push({
							id: '${MyCourseSearch.contentId}',
							type: '${MyCourseSearch.contentTypeId}',
	                    latlng: new kakao.maps.LatLng('${MyCourseSearch.mapY}', '${MyCourseSearch.mapX}'),
	                    title: '${MyCourseSearch.detailTitle}',
	                    image: '${MyCourseSearch.firstImage}',
	                    address: '${MyCourseSearch.addr1}',
	               		});
	                </c:forEach>

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
                '" width="100" height="70">' +
                '           </div>' +
                '            <div class="desc">' +
                '                <div class="ellipsis">' +
                '<div>' +
                data.address +
                '</div>' +
                '</div>' +
                
                '                <div class="pt-4" ><a href="${path}/tourDetailInfo.do?contentId='+
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
            closeBtn.innerHTML = 'X';
            closeBtn.style.cssText = 'background: rgba(0, 0, 0,0); color: rgba(0, 0, 0,0); border: none';
            closeBtn.onclick = function() {
                overlay.setMap(null);
            };

            content.appendChild(closeBtn);
            overlay.setContent(content);

            var isClick = new kakao.maps.event.addListener(marker, 'click', function() {
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
            strokeOpacity: 0.5, // 선 투명도
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