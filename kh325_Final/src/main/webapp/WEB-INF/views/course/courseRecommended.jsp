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
            <div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url('${path}/resources/img/course/recommendedCourseList/대한민국구석구석_강원_영월_선돌_1920x1080.png');">
                <div class="container h-100">
                    <div class="d-flex h-100 text-white overlay-content align-items-center" style="margin-top:6%">
                        <div class="w-100">
                            <div class="row">
                                <div class="col-lg-6">
                                    <p class="subtitle text-white letter-spacing-3 mb-3 font-weight-light text-pB">Recommended Travel Plan</p>
                                    <h2 class="display-3 fw-bold mb-3 text-pEb" style="line-height: 1; font-size:80px ">추천여행코스</h2>
                                    <p class="mb-5 text-pB">전국 구석구석 투게더에서 엄선한 여행지들을 방문해보세요</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid py-5 px-lg-5">
        <div class="row">
            <div class="col-lg-3 pt-3" style="width: 20%;">
                <form class="pe-xl-3" action="${path}/course/courseRecommended" method="get" autocomplete="off">
                    <div>
                        <div class="mb-4 ">
                            <label class="form-label text-pB" for="form_neighbourhood">방문하고 싶은 지역을 선택해보세요
                            </label>
                            <select class="selectLocation text-pB" name="searchAreaCode" id="areaCode" data-live-search="true" data-selected-text-format="count &gt; 1" title="지역">
          <option value="1" <c:if test="${searchAreaCode.contains('1')}">selected</c:if>>서울</option>
          <option value="6" <c:if test="${searchAreaCode.contains('6')}">selected</c:if>>부산</option>
          <option value="4" <c:if test="${searchAreaCode.contains('4')}">selected</c:if>>대구</option>
          <option value="2" <c:if test="${searchAreaCode.contains('2')}">selected</c:if>>인천</option>
          <option value="5" <c:if test="${searchAreaCode.contains('5')}">selected</c:if>>광주</option>
          <option value="3" <c:if test="${searchAreaCode.contains('3')}">selected</c:if>>대전</option>
          <option value="7" <c:if test="${searchAreaCode.contains('7')}">selected</c:if>>울산</option>
          <option value="8" <c:if test="${searchAreaCode.contains('8')}">selected</c:if>>세종</option>
          <option value="31" <c:if test="${searchAreaCode.contains('31')}">selected</c:if>>경기</option>
          <option value="32" <c:if test="${searchAreaCode.contains('32')}">selected</c:if>>강원</option>
          <option value="33" <c:if test="${searchAreaCode.contains('33')}">selected</c:if>>충북</option>
          <option value="34" <c:if test="${searchAreaCode.contains('34')}">selected</c:if>>충남</option>
          <option value="35" <c:if test="${searchAreaCode.contains('35')}">selected</c:if>>경북</option>
          <option value="36" <c:if test="${searchAreaCode.contains('36')}">selected</c:if>>경남</option>
          <option value="37" <c:if test="${searchAreaCode.contains('37')}">selected</c:if>>전북</option>
          <option value="38" <c:if test="${searchAreaCode.contains('38')}">selected</c:if>>전남</option>
          <option value="39" <c:if test="${searchAreaCode.contains('39')}">selected</c:if>>제주</option>
        </select>
          <script type="text/javascript">                                           
					                 var selectValue = "${searchAreaCode}";                          
					                    var selectedElement = document.getElementByName("searchAreaCode");
					                       var options = selectedElement.options;                  
					                          for(var i = 0; i < options.length; i++){                
					                              if(options[i].value == selectValue){                     
					                                    selectedElement.selectedIndex = i;                      
					                                       break;                                                  
					                                 }                                                        
					                           }                                                         
	   </script>   
                        </div>
                        <div class="collapse" id="moreFilters">
                            <div>
                                 <ul class="list-unstyled mb-0">
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                                            <label class="form-check-label" for="amenities_0">강남구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                                            <label class="form-check-label" for="amenities_1">도봉구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                                            <label class="form-check-label" for="amenities_2">동대문구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                                            <label class="form-check-label" for="amenities_3">동작구                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_4" name="amenities[]">
                                            <label class="form-check-label" for="amenities_4">마포구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                            <label class="form-check-label" for="amenities_5">서대문구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_6" name="amenities[]">
                                            <label class="form-check-label" for="amenities_6">서초구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_7" name="amenities[]">
                                            <label class="form-check-label" for="amenities_7">성동구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_8" name="amenities[]">
                                            <label class="form-check-label" for="amenities_8">성북구                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_9" name="amenities[]">
                                            <label class="form-check-label" for="amenities_9">송파구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_10" name="amenities[]">
                                            <label class="form-check-label" for="amenities_10">양천구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_11" name="amenities[]">
                                            <label class="form-check-label" for="amenities_11">강동구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_12" name="amenities[]">
                                            <label class="form-check-label" for="amenities_12">영등포구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_13" name="amenities[]">
                                            <label class="form-check-label" for="amenities_13">용산구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">은평구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">종로구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">중구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">중랑구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">강북구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">강서구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">관악구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">광진구                               </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">구로구                              </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">금천구                             </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">노원구                               </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="mb-4">
                            <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters" data-expanded-text="Less filters" data-collapsed-text="More filters">세부지역</button>
                        </div>
                        <div class="mb-4 mt-4">
                            <button class="btn btn-primary" type="submit"> <i class="fas fa-filter me-1"></i>Filter</button>
                        </div>
                    </div>
                </form>
            </div>


            <div class="col-lg-9">
                <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
                    <div class="me-3">
                        <p class="mb-3 mb-md-0 text-pB"><strong><c:out value="${total}"></c:out></strong> results found</p>
                    </div>
                    <div>
                        <label class="form-label me-2 text-pB" for="form_sort">Sort by</label>
                        <select class="selectpicker text-pB" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                <option class="text-pB"value="sortBy_0">Most popular   </option>
              </select>
                    </div>
                </div>
                <div class="row">
                    <!-- 1번 item-->
                 <c:if test="${!empty recommCourseList}">
				<c:forEach var="MainRecommCourse" items="${recommCourseList}">     
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                        <div class="card border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay">
                                <img class="" style="width: 427px !important;  height: 285px !important;" src="<c:if test="${MainRecommCourse.firstImage eq null}"><c:out value="${path}/resources/image/noImage1.png"/></c:if><c:if test="${MainRecommCourse.firstImage ne null}"><c:out value="${MainRecommCourse.firstImage}"/></c:if>" />
                                <a class="tile-link" href="${path}/course/recommCourseDetail?contentId=${MainRecommCourse.contentId}"></a>
                                <div class="card-img-overlay-top text-end">
                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " name="clickHeart" href="#">
                                        <i class="fas fa-heart svg-icon"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="row w-100 txt_line ">
                                    <p class="card-title col-md-9"><a class="courseList_title text-black" href="#"><c:out value="${MainRecommCourse.title}"></c:out></a>
                                    </p>
                                    <div class="d-flex col-md-3" style="text-align: center">
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                        </p>
                                        <span class="text-primary justify-center">4/5</span>
                                    </div>
                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i><c:out value="${MainRecommCourse.areaName}"></c:out>&nbsp;<c:out value="${MainRecommCourse.detailAreaName}"/></p>
                                    <div class=" card-text text-muted 
                                    text-sm text-black-50 txt_line">
                                        <div class="courseList_info"><c:out value="${MainRecommCourse.overview}"></c:out></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        			</c:forEach>
			</c:if>
                    <!-- Pagination -->
                    <nav aria-label="Page navigation example ">
                        <ul class="pagination pagination-template d-flex justify-content-center ">
                            <li class="page-item-course ">
                                <a class="page-link-course" onclick="movePage('${path}/course/courseRecommended?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left "></i></a>
                            </li>
                             <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                    	<c:if test="${pageInfo.currentPage == status.current}">
                            <li class="page-item-course active "><a class="page-link-course ">${status.current}</a></li>
                          </c:if>
                           <c:if test="${pageInfo.currentPage != status.current}">
                            <li class="page-item-course "><a class="page-link-course " onclick="movePage('${path}/course/courseRecommended?page=${status.current}');">${status.current}</a></li>          
                            </c:if>
	                     </c:forEach>
	                     <li class="page-item-course ">
                                <a class="page-link-course" onclick="movePage('${path}/course/courseRecommended?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right "></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
     
    <script>
            function movePage(pageUrl) {
            	 var searchAreaCode = document.getElementById("areaCode"); //지역코드
                 if(searchAreaCode.selectedIndex != 0){
                    pageUrl += '&searchAreaCode=' + searchAreaCode.options[selectedElement.selectedIndex].value;
                 }
        
       
	      /*       alert(pageUrl); */
	            location.href = encodeURI(pageUrl);
            }
            </script>
    

       <!-- Footer-->
	 <jsp:include page="/WEB-INF/views/common/footer.jsp"/> 
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
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js ">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js ">
    </script>
    <script src="${path}/resources/js/datepicker-category.js ">
    </script>
    <!-- Price Slider-->
    <script src="${path}/resources/vendor/nouislider/nouislider.min.js "></script>
    <script>
        var snapSlider = document.getElementById('slider-snap');

        noUiSlider.create(snapSlider, {
            start: [40, 110],
            snap: false,
            connect: true,
            step: 1,
            range: {
                'min': 40,
                'max': 110
            }
        });
        var snapValues = [
            document.getElementById('slider-snap-value-from'),
            document.getElementById('slider-snap-value-to')
        ];
        var inputValues = [
            document.getElementById('slider-snap-input-from'),
            document.getElementById('slider-snap-input-to')
        ];
        snapSlider.noUiSlider.on('update', function(values, handle) {
            snapValues[handle].innerHTML = values[handle];
            inputValues[handle].value = values[handle];
        })
    </script>
    
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
</body>

</html>