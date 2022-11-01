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

    <!-- ===boxicons===-->
    <link href='http://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

    <script src="https://kit.fontawesome.com/b4c02836de.js" crossorigin="anonymous"></script>

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
        src: url0(${path}/resources/font/Pretendard-Regular.ttf);
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
    
    .card-pic {
     width: 300px;
     height: 220px;
     object-fit: cover;
    }
    

    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
    /*폰트 끝*/
</style>

<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
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
                            <a class="d-inline-block" href="#"><img class="d-block avatar avatar-xxl p-2 mb-2" src='<c:out value="${loginMember.userAvatar}"/>' alt=""></a>
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
                                        <p class="mb-0 text-pB" style="color: black"><b>즐겨찾기</b></p>
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
                    <h1 class="hero-heading mb-10 text-pEb">즐겨찾기</h1>
                    <div class="text-block">
                        <p class="text-muted text-pEb">즐겨찾기로 등록해놓은 관광 정보를 한눈에 볼 있습니다. </p>
                    </div>
                    <div class="text-block">
                        <div style="margin-top: -90px ;  margin-bottom:35px; margin-left: 40rem;">
                            <label class="form-label me-2 text-pB" for="form_sort">카테고리</label>
                            <div class="dropdown bootstrap-select">
                                <div class="dropdown bootstrap-select">
                                    <div class="dropdown bootstrap-select">
                                    <select class="selectpicker text-pB" name="sortBy" id="sortBy" title="<c:out value="${bookmarkCate }"/>" data-style="btn-selectpicker" onchange="requestBoard()">
			                          	<option class="text-pB" value="" disabled>게시판</option>
			                          	<c:if test="${!empty param.bookmarkCate }">
			                            	<option value="${param.bookmarkCate }" selected>${param.bookmarkCate}</option>
			                            </c:if>
			                            <option class="text-pB" value="DETAIL_TOUR">관광지</option>
			                            <option class="text-pB" value="DETAIL_HOTEL">숙박업소</option>
			                            <option class="text-pB" value="DETAIL_RESTAURANT">음식점</option>
			                            <option class="text-pB" value="DETAIL_ETC">기타</option>
			                        </select>
                                       <!--   <select class="selectpicker text-pB" name="sort" id="form_sort" data-style="btn-selectpicker" title="" tabindex="null">
                              <option class="text-pB" value="sortBy_0">관광지   </option>
                              <option class="text-pB" value="sortBy_1">숙박업소   </option>
                              <option class="text-pB" value="sortBy_2">음식점   </option>
                              <option class="text-pB" value="sortBy_3">기타   </option>
                            </select>-->
                                        <div class="dropdown-menu ">
                                            <div class="inner show" role="listbox" id="bs-select-1" tabindex="-1">
                                                <ul class="dropdown-menu inner show" role="presentation"></ul>
                                            </div>
                                        </div>
                                    </div>
                                     <script type="text/javascript">
				                    
				                    	function requestBoard() {
				                    		console.log("gg")
				                    		var sort = $("#sortBy option:selected").val();
				                	    	var contextPath = '<c:out value='${path}'/>';
				                	    	var path = '${path}/myPage/bookmark?sortBy='+sort+'&page=1';
				                	    	console.log(path);
				                	    	location.replace(path);
				                    	}
				                    
				                    </script>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <!-- place item-->
							<c:forEach var="Bookmark" items="${bookmarkList}">
                            <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92" style="height: 370px;" href="${path}tourDetailInfo.do?contentId=${tour.contentId}">
                                <div class="card h-100 border-0 shadow" >
                                    <div class="card-img-top overflow-hidden gradient-overlay" style="object-fit:full;">
                                        <img class="card-pic" src='<c:if test="${Bookmark.image == null}"><c:out value="${path}/resources/image/noImage1.png"/></c:if><c:if test="${Bookmark.image != null}"><c:out value="${Bookmark.image}"/></c:if>'/>
                                        <a class="tile-link" href="${path}/tourDetailInfo.do?contentId=${Bookmark.contentId}&contentTypeId=${Bookmark.contentTypeId}"></a>
                                        <div class="card-img-overlay-top text-end">
                                            <a class="card-fav-icon position-relative z-index-50" href="${path}/myPage/deleteBookmark?likeNo=${Bookmark.likeNo}" style="background-color:black;">
                                                <i class="fa fa-trash" style="color:white" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="card-body d-flex align-items-center" style="padding-top: 0px;height: 119.2px;padding-bottom: -5;padding-bottom: 0px;">
                                        <div class="row w-100 txt_line ">
                                            <p class="card-title col-md-9" style="padding-top: 12px;margin-bottom: 10px;">
                                                <a class=" text-black" style=" display: -webkit-box;
												    display: -ms-flexbox;
												    display: box;
												    margin-top: 1px;
												    max-height: 80px;
												    overflow: hidden;
												    vertical-align: top;
												    text-overflow: ellipsis;
												    word-break: break-all;
												    -webkit-box-orient: vertical;
												    -webkit-line-clamp: 1" href="detail-rooms.html"><c:out value="${Bookmark.title}"/></a>
                                            </p>
<!--                                             <div class="d-flex col-md-3" style="text-align: center"> -->
<!--                                                 <p class="flex-shrink-1 mb-0 card-stars text-xs text-start" style="margin-top: 15px;"> -->
<%--                                                 	<c:if test="${Bookmark.star == 1}"> --%>
<!--                                                     <i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i> -->
<%--                                                 	</c:if> --%>
<%--                                                 	<c:if test="${Bookmark.star == 2}"> --%>
<!--                                                     <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i> -->
<%--                                                 	</c:if> --%>
<%--                                                 	<c:if test="${Bookmark.star == 3}"> --%>
<!--                                                     <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i> -->
<%--                                                 	</c:if> --%>
<%--                                                 	<c:if test="${Bookmark.star == 4}"> --%>
<!--                                                     <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i> -->
<%--                                                 	</c:if> --%>
<%--                                                 	<c:if test="${Bookmark.star == 5}"> --%>
<!--                                                     <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i> -->
<%--                                                 	</c:if> --%>
                                                
<!--                                                 </p> -->

<!--                                             </div> -->
                                            <p class="text-sm text-black-50 card-subtitle mb-2">
                                                <i class="fa fa-map-marker text-secondary opacity-4 me-1" style=" display: -webkit-box;
												    display: -ms-flexbox;
												    display: box;
												    margin-top: 1px;
												    max-height: 80px;
												    overflow: hidden;
												    vertical-align: top;
												    text-overflow: ellipsis;
												    word-break: break-all;
												    -webkit-box-orient: vertical;
												    -webkit-line-clamp: 1" 
												    aria-hidden="true" >&nbsp;&nbsp;<c:out value="${Bookmark.address}"/></i> </p>
                                            <div class=" card-text text-muted 
                                                                text-sm text-black-50 txt_line">
                                                <div class="courseList_info"> <c:out value="${Bookmark.overview}"/></div>
                                                <p class="card-text d-flex justify-content-between text-gray-800 text-sm mt-3" style="float:right;">

                                                    <span>
                                                    </span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							</c:forEach>
                        </div>
                        
 					<div class="mt-2 justify-contents-center" style="width: 348px; margin-left: -45%;">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination" style="margin-left: 700px; margin-right: 500px;">
                            <li class="page-item-course"><a class="page-link-course" href="#" onclick="movePage('${path}/myPage/bookmark?page=${pageInfo.prevPage}');" aria-label="Previous">Previous</a></li>
                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                    	<c:if test="${pageInfo.currentPage == status.current}">
	                   			 <li class="page-item-course active">
	                   			 		<a class="page-link-course">
	                   			 			<span>${status.current}</span>
	                   			 		</a>
	                   			 </li>
	                   		</c:if>
	                		<c:if test="${pageInfo.currentPage != status.current}">
	                   			 <li class="page-item-course">
	                   			 		<a onclick="movePage('${path}/myPage/bookmark?page=${status.current}');" class="page-link-course">
	                   			 			<span >${status.current}</span>
	                   			 		</a>
	                   			 </li> 
	                   		</c:if>
	                     </c:forEach>
                            <li class="page-item-course"><a class="page-link-course" href="#" onclick="movePage('${path}/myPage/bookmark?page=${pageInfo.nextPage}');" aria-label="Next">Next</a></li>
                        </ul>
                    </nav>
                	</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <jsp:include page="/WEB-INF/views/common/footer.jsp">
			<jsp:param value="예아바디" name="title"/>
</jsp:include>
<script>
        function movePage(pageUrl) {
// 			alert(pageUrl);
            location.href = encodeURI(pageUrl);
        }
    </script>

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
    <script src="js/theme.js"></script>
</body>

</html>