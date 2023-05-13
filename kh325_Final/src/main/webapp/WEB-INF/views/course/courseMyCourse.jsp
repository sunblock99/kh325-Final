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
            <div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url('${path}/resources/img/course/recommendedCourseList/대한민국구석구석_충북_단양_카페산_1920x1080.png');">
                <div class="container h-100">
                    <div class="d-flex h-100 text-white overlay-content align-items-center" style="margin-top:6%">
                        <div class="w-100">
                            <div class="row">
                                <div class="col-lg-6">
                                    <p class="subtitle text-white letter-spacing-3 mb-3 font-weight-light text-pB">Make Your Own Plan</p>
                                    <h2 class="display-3 fw-bold mb-3 text-pEb" style="line-height: 1; font-size:80px">나만의 여행코스</h2>
                                    <p class="mb-5 text-pB">투게더에서 제공하는 관광정보로 자신만의 여행코스를 만들어보세요</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
    <section class="bg shadow mt-0">
        <div class="p-3 p-lg-4" style="border: 10rem; ">
            <div class="tab-content ">
                <form action="${path}/course/courseMyCourse" method="get">
                    <div class="container">
                        <div class="row">
                            <select class="selectpicker text-pB"  name="searchSchedule" id="schedule" title="일정 " data-style="btn-form-control ">                  
                                <option class="text-pB" value="당일여행" <c:if test="${searchSchedule.contains('당일여행')}">selected</c:if>>당일여행</option>
                                <option class="text-pB" value="1박2일" <c:if test="${searchSchedule.contains('1박2일')}">selected</c:if>>1박2일</option>
                                <option class="text-pB" value="2박3일이상" <c:if test="${searchSchedule.contains('2박3일이상')}">selected</c:if>>2박3일이상</option>
                              </select>
                            <select class="selectpicker text-pB" name="searchThema" id="thema" title="테마 " data-style="btn-form-control ">
                                <option class="text-pB" value="가족코스" <c:if test="${searchThema.contains('가족코스')}">selected</c:if>>가족코스</option>
                                <option class="text-pB" value="혼자여행" <c:if test="${searchThema.contains('혼자여행')}">selected</c:if>>혼자여행</option>
                                <option class="text-pB" value="도보코스" <c:if test="${searchThema.contains('도보코스')}">selected</c:if>>도보코스</option>
                                <option class="text-pB" value="힐링코스" <c:if test="${searchThema.contains('힐링코스')}">selected</c:if>>힐링코스</option>
                                <option class="text-pB" value="맛코스" <c:if test="${searchThema.contains('맛코스')}">selected</c:if>>맛코스</option>
                                <option class="text-pB" value="캠핑코스" <c:if test="${searchThema.contains('캠핑코스')}">selected</c:if>>캠핑코스</option>
                                <option class="text-pB" value="반려동물과함께" <c:if test="${searchThema.contains('반려동물과함께')}">selected</c:if>>반려동물과함께</option>
                                <option class="text-pB" value="나의코스 " <c:if test="${searchThema.contains('나의코스')}">selected</c:if>>나의코스</option>
                              </select>
                              
                              <script type="text/javascript">                                           
					                 var selectValue = "${searchSchedule}";                          
					                    var selectedElement = document.getElementById("schedule");
					                       var options = selectedElement.options;                  
					                          for(var i = 0; i < options.length; i++){                
					                              if(options[i].value == selectValue){                     
					                                    selectedElement.selectedIndex = i;                      
					                                       break;                                                  
					                                 }                                                        
					                           }           
  
	  						 </script>   
	  						 <script type="text/javascript"> 
	  						    var selectValue = "${searchThema}";                          
							                    var selectedElement = document.getElementById("thema");
							                       var options = selectedElement.options;                  
							                          for(var i = 0; i < options.length; i++){                
							                              if(options[i].value == selectValue){                     
							                                    selectedElement.selectedIndex = i;                      
							                                       break;                                                  
							                                 }                                                        
							                           }   
							                          </script> 
                            <div class="col-lg-2">
                                <button class="btn h-100 ms-3 text-pB" style=" background-color:#907B65; color: white; " type="submit" >Search </button>
                            </div>
                            <div class="col-lg-6 text-end">
                                <a class="btn h-100 text-pB" style="background-color:#907B65; color: white; " href="">나만의 코스 만들기 </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <section class="py-5 ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <p class="mb-3 mb-md-0 text-pB"><strong><c:out value="${countMyCoursebyIndex.size()}"/></strong> results found</p>
                </div>
                <div class="col-md-6 text-end">
                    <label class="form-label me-2 text-pB" for="form_sort ">Sort by</label>
                    <select class="selectpicker " name="sort " id="form_sort " data-style="btn-selectpicker " title=" ">
              <option class="text-pB" value="sortBy_0 ">Most popular   </option>
              <option class="text-pB" value="sortBy_2 ">Newest   </option>
              <option class="text-pB" value="sortBy_3 ">Oldest   </option>
              <option class="text-pB" value="sortBy_4 ">Closest   </option>
            </select>
                </div>
            </div>
            <div class="row mt-4">
            <c:if test="${!empty myCourseList}">
				<c:forEach var="i" begin="1" end="${myCourseList.size()-1}" step="1">
				<c:if test="${myCourseList.get(i-1).getMyCourseNo() != myCourseList.get(i).getMyCourseNo()}">
				
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card  border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="" style="width: 415px !important;  height: 241px !important;" src="<c:out value="${myCourseList.get(i-1).getMyCourseMainImage()}"/>" alt="Modern, Well-Appointed Room " />
                            <a class="tile-link" href="${path}/course/courseDetail?myCourseNo=${myCourseList.get(i-1).getMyCourseNo()}"></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="${myCourseList.get(i-1).getUserAvatar()}" />
                                    <div><c:out value="${myCourseList.get(i-1).getUserName()}"/></div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end">
                                <a class=" heart_pink card-fav-icon position-relative z-index-50  "  name="clickHeart" href="#">
                                    <i class="fas fa-heart svg-icon"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center ">
                            <div class="w-100 ">
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href=""><c:out value="${myCourseList.get(i-1).getMyCourseTitle()}"/></a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum()).getAddr1()}"/></p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><c:forEach begin="1" end="${myCourseList.get(i-1).getCntRevStar()}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${myCourseList.get(i-1).getCntRevStar() < 5}"><c:forEach begin="${myCourseList.get(i-1).getCntRevStar()+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                        </p>
                                        <span class="text-primary justify-center"><c:out value="${myCourseList.get(i-1).getCntRevStar()}"/>/5</span>                            
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                <ul class="overflow-hidden " style="height:120px ">          
                                <c:if test="${myCourseList.get(i-1).getIndexNum() > 3}">     
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum()).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +1).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +2).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +3).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                    <c:if test="${myCourseList.get(i-1).getIndexNum() == 3}">
                  
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum()).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +1).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +2).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                    <c:if test="${myCourseList.get(i-1).getIndexNum() == 2}">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum()).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +1).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                    <c:if test="${myCourseList.get(i-1).getIndexNum() == 1}">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum()).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                <c:if test="${i == myCourseList.size()-1}">
                <!-- place item-->
                <div class="col-sm-6 col-lg-4 mb-5 hover-animate " data-marker-id="59c0c8e33b1527bfe2abaf92 ">
                    <div class="card border-0 shadow ">
                        <div class="card-img-top overflow-hidden gradient-overlay "> <img class="" style="width: 415px !important;  height: 241px !important;" src="<c:out value="${myCourseList.get(i).getMyCourseMainImage()}"/>" alt="Modern, Well-Appointed Room " />
                            <a class="tile-link " href="${path}/course/courseDetail?myCourseNo=${myCourseList.get(i).getMyCourseNo()}"></a>
                            <div class="card-img-overlay-bottom z-index-20 ">
                                <div class="d-flex text-white text-sm align-items-center "><img class="avatar avatar-border-white flex-shrink-0 me-2 " src="${myCourseList.get(i-1).getUserAvatar()}" />
                                    <div><c:out value="${myCourseList.get(i).getUserName()}"/></div>
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
                                <h6 class="card-title "><a class="text-decoration-none text-dark " href=""><c:out value="${myCourseList.get(i).getMyCourseTitle()}"/></a></h6>
                                <div class="d-flex card-subtitle mb-3 ">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum()+1).getAddr1()}"/></p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end "><c:forEach begin="1" end="${myCourseList.get(i-1).getCntRevStar()}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${myCourseList.get(i-1).getCntRevStar() < 5}"><c:forEach begin="${myCourseList.get(i-1).getCntRevStar()+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                        </p>
                                        <span class="text-primary justify-center"><c:out value="${myCourseList.get(i-1).getCntRevStar()}"/>/5</span>  
                                </div>
                                <p class="card-text text-muted "><span class="h-100 text-primary ">Travel</span> </p>
                                        <ul class="overflow-hidden " style="height:120px ">          
                                <c:if test="${myCourseList.get(i-1).getIndexNum() > 3}">     
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +1).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +2).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +3).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +4).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                    <c:if test="${myCourseList.get(i-1).getIndexNum() == 3}">
                  
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +1).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +2).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +3).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                    <c:if test="${myCourseList.get(i-1).getIndexNum() == 2}">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +1).getDetailTitle()}"/></a>
                                    </li>
                                      <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +2).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                    <c:if test="${myCourseList.get(i-1).getIndexNum() == 1}">
                                    <li class="mb-1 ">
                                        <a class="text-muted " href="knowledge-base-topic.html "><c:out value="${myCourseList.get(i - myCourseList.get(i-1).getIndexNum() +1).getDetailTitle()}"/></a>
                                    </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                </c:forEach>
			</c:if>
		
                <!-- Pagination -->
                <nav aria-label="Page navigation example ">
                    <ul class="pagination pagination-template d-flex justify-content-center ">
                        <li class="page-item-course ">
                            <a class="page-link-course" onclick="movePage('${path}/course/courseMyCourse?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left "></i></a>
                        </li>
                        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                    	<c:if test="${pageInfo.currentPage == status.current}">
                        <li class="page-item-course active "><a class="page-link-course ">${status.current}</a></li>
                        </c:if>
                        <c:if test="${pageInfo.currentPage != status.current}">
                        <li class="page-item-course "><a class="page-link-course" onclick="movePage('${path}/course/courseMyCourse?page=${status.current}');">${status.current}</a></li>
                       </c:if>
                       </c:forEach>
                       <li class="page-item-course ">
                            <a class="page-link-course " onclick="movePage('${path}/course/courseMyCourse?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right "></i></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>

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
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js "></script>
    <!-- Map-->
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js " integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=" "></script>

    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js ">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js ">
    </script>
    <script src="${path}/resources/js/datepicker-category.js ">
    </script>
   
  
	<script>
            function movePage(pageUrl) {
            	 var searchSchedule = document.getElementById("schedule"); //지역코드
                 if(searchSchedule.selectedIndex != 0){
                    pageUrl += '&searchSchedule=' + searchSchedule.options[selectedElement.selectedIndex].value;
                 }
              /*    alert(pageUrl); */
            	 
                 var searchThema = document.getElementById("thema"); //지역코드
                 if(searchThema.selectedIndex != 0){
                     pageUrl += '&searchThema=' + searchThema.options[selectedElement.selectedIndex].value;
                 }
                
	        /*     alert(pageUrl); */
	            location.href = encodeURI(pageUrl);
            }
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