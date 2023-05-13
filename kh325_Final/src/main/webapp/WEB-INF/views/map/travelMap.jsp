<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<!-- <head> -->
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
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
        integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
        crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- <link rel="stylesheet" href="${path}/resources/css/style.myMap.css" id="theme-stylesheet"> -->
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/addMap.css">
<%--     <link rel="stylesheet" href="${path}/resources/css/font.css"> --%>
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">

    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <script src="https://kit.fontawesome.com/d5ea4955cb.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>

<%-- 	<jsp:include page="/WEB-INF/views/common/darkHeader.jsp"> --%>
<%--     <jsp:param value="여행지도" name="title" /> --%>
<%--     </jsp:include> --%>
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
        letter-spacing: 1px;
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
</style>
<header class="header header-absolute fixed-top" style="font-size:50px;">
    <nav class="navbar navbar-expand-lg navbar-dark shadow fixed-top bg-white" style="padding-bottom:0rem">
        <div class="container-fluid">
          <div class="d-flex align-items-center">
            <!-- 로고 시작 -->
            <a class="navbar-brand py-3 px-5" href="${path }/" style="line-height:0;">
              <img class="ps-3" src="${path}/resources/image/togetherLogo.png" width="40%" height="60%">
            </a>
            <!-- 로고 끝-->

            <!-- 공간활용 용도-->
            <div class="input-label-absolute input-label-absolute-left
              input-expand ms-lg-2 ms-xl-3"></div>
          </div>

          <!-- =============== 메뉴바 영역 =============== -->
          <div class="collapse navbar-collapse px-6 " id="navbarCollapse"
            style="font-family: pL;">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item dropdown">
                <a class="fs-3 nav-link-header-black text-pSb me-2" id="homeDropdownMenuLink" href="${path}/"
                  aria-haspopup="true" aria-expanded="false">홈</a>
              </li>

              <!-- 상단바메뉴 시작 -->
               <li class="nav-item position-static text-pB">
                   <li class="nav-item dropdown">
                       <a class="fs-3 nav-link-header-black dropdown-toggle me-4" id="docsDropdownMenuLink" href="#" 
                       data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 관광정보</a>
                       <div class="dropdown-menu dropdown-menu-end text-pSb" aria-labelledby="docsDropdownMenuLink">
                           <h6 class="dropdown-header fs-5 text-pSb">관광정보</h6>
                           <a class="hvr dropdown-item fs-5" href="${path}/tour/hotPlace">HOT PLACE </a>
                           <a class="hvr dropdown-item fs-5" href="${path}/tourSearch.do">관광지 정보</a>
                           <a class="hvr dropdown-item fs-5" href="${path}/eventSearch.do">지역별 축제ㅣ행사 </a>
                           <a class="hvr dropdown-item fs-5" href="${path}/calendar">날짜별 축제ㅣ행사</a>
                       </div>
                   </li>
               </li>
               
			   <li class="nav-item position-static text-pB">
                  <li class="nav-item dropdown">
                      <a class="fs-3 nav-link-header-black dropdown-toggle me-4" id="docsDropdownMenuLink" href="#" 
                      data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 커뮤니티</a>
                      <div class="dropdown-menu dropdown-menu-end text-pSb" aria-labelledby="docsDropdownMenuLink">
						<h6 class="dropdown-header fs-5 text-pSb">커뮤니티</h6>
                          <a class="hvr dropdown-item fs-5" href="${path}/community">커뮤니티 메인</a>
                          <a class="hvr dropdown-item fs-5" href="${path}/community/freeboardList">자유게시판 </a>
                          <a class="hvr dropdown-item fs-5" href="${path }/community/gallery">갤러리</a>
                          <a class="hvr dropdown-item fs-5" href="${path }/community/companionList">동행 구하기</a>
                          <a class="hvr dropdown-item fs-5" href="${path }/community/journeyList">여행 후기</a>
                      </div>
                  </li>
               </li>

			   <li class="nav-item position-static text-pB">
                  <li class="nav-item dropdown">
                      <a class="fs-3 nav-link-header-black dropdown-toggle me-4" id="docsDropdownMenuLink" href="#" 
                      data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">여행정보</a>
                      <div class="dropdown-menu dropdown-menu-end text-pSb" aria-labelledby="docsDropdownMenuLink">
						<h6 class="dropdown-header fs-5 text-pSb">여행정보</h6>
                          <a class="hvr dropdown-item fs-5" href="${path }/course/courseMain">여행코스</a>
                          <a class="hvr dropdown-item fs-5" href="${path}/map/travelMap">여행지도 </a>
                      </div>
                  </li>
               </li>
				              
              
              <c:if test="${loginMember eq null}">
              <li class="nav-item"><a class="fs-3 nav-link-header-black" href="${path}/loginView">로그인</a></li>
              </c:if>
              
              <c:if test="${loginMember ne null && loginMember.managerStatus eq 'N'}">
              <li class="nav-item dropdown"><a class="fs-3 nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink"
                href="login.html"data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <c:out value="${loginMember.userName}" /> 님</a>
                <div class="dropdown-menu dropdown-menu-end"
                    aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                    <a class="fs-5 text-pSb hvr dropdown-item"
                      href="${path }/myPage/profile">마이페이지</a>
                    <a class="fs-5 text-pSb hvr dropdown-item"
                      href="${path }/logout">로그아웃</a>
                </div>
              </li>
              </c:if>

              
              <!-- 관리자 로그인 성공 시 -->
              <c:if test="${loginMember.managerStatus eq 'Y'}">
              <li class="nav-item dropdown"><a class="fs-3 nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink"
                href="login.html"data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <c:out value="${loginMember.userName}" /> 님</a>
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink text-pB">
                  <a class="hvr dropdown-item fs-5 text-pSb" href="${path }/myPage/profile">마이페이지</a>
                  <a class="hvr dropdown-item fs-5 text-pSb" href="${path }/manager/dashBoard">관리자페이지</a>
                  <a class="hvr dropdown-item fs-5 text-pSb" href="${path }/logout">로그아웃</a>
              </div>
              </li>
              </c:if>
            </ul>
          </div>
        </div>
      </nav>
      <!-- 상단바메뉴 끝 -->
      <!-- =============== 메뉴바 영역 끝 =============== -->
    </header>
<%-- <c:set var="searchType" value="${param.searchType}"/> --%>
<%-- <c:if test="${empty searchType}"> --%>
<%-- 	<c:set var="searchType" value="${'tour'}"/> --%>
<%-- </c:if> --%>

	<body style="padding-top: 72px;">
	    <section>
	        <div class="container-fluid">
	            <div class="row">
	                <div class="col-lg-4 py-4 p-xl-4">
	                    <div class="py-5 p-xl-2 text-pB">
	                        <!-- <div><img src="https://papers.co/wallpaper/papers.co-od09-nature-travel-kit-25-wallpaper.jpg" style="width: 100%;"></div> -->
	                        <!-- <h1 class="text-serif mb-4" style="background-image: url(https://papers.co/wallpaper/papers.co-od09-nature-travel-kit-25-wallpaper.jpg)">여 행 지 도</h1> -->
	                        <!-- <h1 class="ms-4 text-shadow"><i class="fa-regular fa-compass" style="color: #FD9F28;"></i> &nbsp;여 행 지 도</h1> -->
	                        <h6 class="ms-2 fw-bold text-center pt-5" style="color: #907B65;">
	                            &nbsp; TOGETHER</h6>
	                        <h6 class="fs-1 ms-2 pb-2 text-center">여행지도</h6>
	                        <hr>
	                        <form action="#">
	                            <div class="row">
	                                <!-- 카테고리 체크박스 시작 -->
	                                <div class="pc_depth1 text-center">
	                                
	                            <label class="option_item px-2">
	                            	<c:if test="${travelMapList[1].contentTypeId eq '12'}">
	                                <input type="radio"  name="searchType" value="tour" onclick="location.href='${path}/map/travelMap?contentTypeId=12'" style="display: none;" class="checkbox" checked>
	                            	</c:if>
	                            	<c:if test="${travelMapList[1].contentTypeId ne '12'}">
	                                <input type="radio"  name="searchType" value="tour" onclick="location.href='${path}/map/travelMap?contentTypeId=12'" style="display: none;" class="checkbox" >
	                            	</c:if>
	                                <div class="option_inner travel">
	                                    <div class="icon ">
	                                        <i class="fa-solid fa-map-location-dot"></i>
	                                    </div>
	                                    <div class="name" style="word-break : keep-all">관광지</div>
	                                </div> 
	                            </label>
	                            <label class="option_item px-2">				
	                            	<c:if test="${travelMapList[1].contentTypeId eq '39'}">
	                                <input type="radio"  name="searchType" value="restaurant" onclick="location.href='${path}/map/travelMap?contentTypeId=39'" style="display: none;" class="checkbox" checked>
	                            	</c:if>																		
	                            	<c:if test="${travelMapList[1].contentTypeId ne '39' }">
	                                <input type="radio"  name="searchType" value="restaurant" onclick="location.href='${path}/map/travelMap?contentTypeId=39'" style="display: none;" class="checkbox">
	                            	</c:if>																		
	                                <div class="option_inner restaurant">
	                                    <div class="icon"><i class="fa-solid fa-utensils"></i></div>
	                                    <div class="name" style="word-break : keep-all">식당</div>
	                                </div>
	                            </label>
	                            <label class="option_item px-2">
	                            	<c:if test="${travelMapList[1].contentTypeId eq '32' }">
	                                <input type="radio"  name="searchType" value="hotel" onclick="location.href='${path}/map/travelMap?contentTypeId=32'" style="display: none;" class="checkbox" checked>
	                                </c:if>
	                            	<c:if test="${travelMapList[1].contentTypeId ne '32' }">
	                                <input type="radio"  name="searchType" value="hotel" onclick="location.href='${path}/map/travelMap?contentTypeId=32'" style="display: none;" class="checkbox">
	                                </c:if>
	                                <div class="option_inner hotel">
	                                    <div class="icon"><i class="fa-solid fa-bed"></i></div>
	                                    <div class="name" style="word-break : keep-all">숙소</div>
	                                </div>
	                            </label>
	                            <label class="option_item px-2">
	                            	<c:if test="${travelMapList[1].contentTypeId eq '28' }">
	                                <input type="radio"  name="searchType" value="leports" onclick="location.href='${path}/map/travelMap?contentTypeId=28'" style="display: none;" class="checkbox" checked>
	                                </c:if>
	                            	<c:if test="${travelMapList[1].contentTypeId ne '28' }">
	                                <input type="radio"  name="searchType" value="leports" onclick="location.href='${path}/map/travelMap?contentTypeId=28'" style="display: none;" class="checkbox">
	                                </c:if>
	                                <div class="option_inner cafe">
	                                    <div class="icon"><i class="fa-solid fa-person-hiking"></i></div>
	                                    <div class="name" style="word-break : keep-all">레포츠</div>
	                                </div>
	                            </label>
	                            <br>
	                            <label class="option_item px-2">
	                            	<c:if test="${travelMapList[1].contentTypeId eq '14' }">
	                                <input type="radio"  name="searchType" value="facility" onclick="location.href='${path}/map/travelMap?contentTypeId=14'"style="display: none;" class="checkbox" checked>
	                                </c:if>
	                            	<c:if test="${travelMapList[1].contentTypeId ne '14' }">
	                                <input type="radio"  name="searchType" value="facility" onclick="location.href='${path}/map/travelMap?contentTypeId=14'"style="display: none;" class="checkbox">
	                                </c:if>
	                                <div class="option_inner parking">
	                                    <div class="icon"><i class="fa-solid fa-building-columns"></i></div>
	                                    <div class="name" style="word-break : keep-all">문화시설</div>
	                                </div>
	                            </label>
	                            
	                            <!-- 카테고리 체크박스 끝 -->
	                            <!-- 코스 시작 -->
	                            <label class="option_item px-2">
	                                <c:if test="${travelMapList[1].contentTypeId eq '38' }">
	                                <input type="radio"  name="searchType" value="recommend" onclick="location.href='${path}/map/travelMap?contentTypeId=38'" style="display: none;" class="checkbox" checked/>
	                                </c:if>
	                                <c:if test="${travelMapList[1].contentTypeId ne '38' }">
	                                <input type="radio"  name="searchType" value="recommend" onclick="location.href='${path}/map/travelMap?contentTypeId=38'" style="display: none;" class="checkbox"  />
	                                </c:if>
	                                <div class="option_inner recommend">
	                                    <div class="icon"><i class="fa-solid fa-cart-shopping"></i></div>
	                                    <div class="name" style="word-break : keep-all">쇼핑</div>
	                                </div>
	                            </label>
	                            <label class="option_item px-2">
	                            	<c:if test="${travelMapList[1].contentTypeId eq '25' }">
	                                <input type="radio"  name="searchType" value="travelCourse" onclick="location.href='${path}/map/travelMap?contentTypeId=25'" style="display: none;" class="checkbox" checked />
	                            	</c:if>
	                            	<c:if test="${travelMapList[1].contentTypeId ne '25' }">
	                                <input type="radio"  name="searchType" value="travelCourse" onclick="location.href='${path}/map/travelMap?contentTypeId=25'" style="display: none;" class="checkbox"/>
	                            	</c:if>
	                                <div class="option_inner travelCourse">
	                                    <div class="icon"><i class="fa-solid fa-arrows-split-up-and-left"></i>
	                                    </div>
	                                    <div class="name" style="word-break : keep-all">여행코스</div>
	                                </div>
	                            </label>
	                            <label class="option_item pb-4 px-2">
	                            	<c:if test="${travelMapList[1].contentTypeId eq '50' }">
	                                <input type="radio"  name="searchType" value="myCourse" onclick="location.href='${path}/map/travelMap?contentTypeId=50'" style="display: none;" class="checkbox" checked />
	                            	</c:if>
	                            	<c:if test="${travelMapList[1].contentTypeId ne '50' }">
	                                <input type="radio"  name="searchType" value="myCourse" onclick="location.href='${path}/map/travelMap?contentTypeId=50'" style="display: none;" class="checkbox" />
	                            	</c:if>
	                                <div class="option_inner myTrip">
	                                    <div class="icon"><i class="fa-solid fa-street-view"></i></div>
	                                    <div class="name" style="word-break : keep-all">나의여행</div>
	                                </div>
	                            </label>
<!-- 	                            <label class="option_item"> -->
<!-- 	                                <div class="option_inner" style="cursor: default;"></div> -->
<!-- 	                            </label> -->
<!-- 	                            <label class="option_item"> -->
<!-- 	                                <div class="option_inner" style="cursor: default;"></div> -->
<!-- 	                            </label> -->
	                            <!-- 코스 끝 -->
	                        </div>
	                            </div>
	                        </form>
	
	                        <div class=" menu_cont mt-3 text-pB">
	                        
	                        
<%-- 	                        <c:if test="${empty travelMapList}"> --%>
							<c:if test="${travelMapList[1].contentTypeId eq '25' }">
	                        <c:forEach var="courseMap" items="${courseMapList}">
	                            <div class="d-flex d-block d-sm-flex review2">
	                                <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
	                                <img class="d-block picSize round "
	                                        src="${courseMap.firstImage }" onerror="this.src='http://www.kogl.or.kr/upload_recommend/%EC%A7%80%EC%97%AD%EB%B3%84%EB%AC%B8%ED%99%94%EC%9E%AC/%EC%B6%A9%EC%B2%AD%EB%82%A8%EB%8F%84/%EA%B3%B5%EC%A3%BC/thumb_%EC%8B%9C%EB%8F%84%EC%9C%A0%ED%98%95%EB%AC%B8%ED%99%94%EC%9E%AC%EC%A0%9C93%ED%98%B8_%ED%8F%AC%EC%A0%95%EC%82%AC%EB%AC%B8%EB%A3%A8_%EC%A0%95%EB%A9%B4.jpg'">
<%-- 	                                        src="${TravelMap.firstImage }" onerror="this.src='${path}/resources/images/defaultImage.png'"> --%>
										<div class="pt-3" style="width:8rem;">	                                    
<!-- 		                                    <div class=" text-sm mb-2" style=" display: flex; width:8rem;">총 거리 :  -->
		                                    	<div class=" text-sm mb-2" style=" font-weight: bold; text-align:center; color: #907B65;">총 거리 : ${courseMap.distance}</div>
<!-- 		                                    </div> -->
<!-- 		                                    	<div class=" text-sm mb-2" style=" display: flex;">총 소요시간 :  -->
		                                    <div class=" text-sm mb-2" style=" font-weight: bold; text-align:center; color: #907B65;">총 소요시간 : ${courseMap.takeTime}</div>
<!-- 		                                    </div> -->
	                                    </div>
	                                </div>
	                                <div class="width100">
	                                    <h6 class="py-1 text-lg">
<%-- 	                                        <a href="${path}/board/view?no=${TravelMap.contentId}" class="a-orign-text" onclick="onDisplay();">${TravelMap.title}</a> --%>
	                                         <button  style="border:0; outline: 0; background-color: rgba(0,0,0,0); font-weight: bold; text-align:left; " onclick="panTo('${courseMap.mapY}', '${courseMap.mapX}')">${courseMap.title}</button> 
<%-- 	                                        <a href="#" onclick="panTo'${TravelMap.mapX}', '${TravelMap.mapY}'); return false;" class="a-orign-text">${TravelMap.title}</a> --%>
	                                    </h6>
	                                    <div class="text-muted text-sm">${courseMap.overview}</div>
	                                    <div class="pe-4 pt-1 float-end">
	                                    </div>
	                                </div>
	                            </div>
	                            </c:forEach>
							</c:if>
							
	                        <c:forEach var="TravelMap" items="${travelMapList}" varStatus="status">
	                            <div class="d-flex d-block d-sm-flex review2">
	                                <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img
	                                        class="d-block picSize round "
	                                        src="${TravelMap.firstImage }" onerror="this.src='http://www.kogl.or.kr/upload_recommend/%EC%A7%80%EC%97%AD%EB%B3%84%EB%AC%B8%ED%99%94%EC%9E%AC/%EC%B6%A9%EC%B2%AD%EB%82%A8%EB%8F%84/%EA%B3%B5%EC%A3%BC/thumb_%EC%8B%9C%EB%8F%84%EC%9C%A0%ED%98%95%EB%AC%B8%ED%99%94%EC%9E%AC%EC%A0%9C93%ED%98%B8_%ED%8F%AC%EC%A0%95%EC%82%AC%EB%AC%B8%EB%A3%A8_%EC%A0%95%EB%A9%B4.jpg'">
<%-- 	                                        src="${TravelMap.firstImage }" onerror="this.src='${path}/resources/images/defaultImage.png'"> --%>
	                                </div>
	                                <div class="width100">
	                                    <div class=" text-sm mb-2" style="font-weight: bold; color: #907B65; ">${TravelMap.contentTypeName}
	                                    </div>
	                                    <h6 class="py-1 text-lg">
<%-- 	                                        <a href="${path}/board/view?no=${TravelMap.contentId}" class="a-orign-text" onclick="onDisplay();">${TravelMap.title}</a> --%>
											<c:if test="${travelMapList[1].contentTypeId eq '50' }">
	                                         <button class="text-shadow" style="border:0; outline: 0; background-color: rgba(0,0,0,0); font-weight: bold; text-align:left;" onclick="panTo('${TravelMap.mapY}', '${TravelMap.mapX}')">
	                                         	${status.count}. ${TravelMap.title}</button> 
											</c:if>			                                         
											<c:if test="${travelMapList[1].contentTypeId ne '50' }">
	                                         <button class="text-shadow" style="border:0; outline: 0; background-color: rgba(0,0,0,0); font-weight: bold; text-align:left;" onclick="panTo('${TravelMap.mapY}', '${TravelMap.mapX}')">${TravelMap.title}</button> 
											</c:if>			                                         
<%-- 	                                        <a href="#" onclick="panTo'${TravelMap.mapX}', '${TravelMap.mapY}'); return false;" class="a-orign-text">${TravelMap.title}</a> --%>
	                                    </h6>
	                                    <div class="text-muted text-sm">${TravelMap.addr1}</div>
	                                    <div class="pe-4 pt-1 float-end">
	                                    <c:if test="${TravelMap.star eq 0 || TravelMap.star eq 3}">
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                    </c:if>
	                                    <c:if test="${TravelMap.star eq 1}">
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                    </c:if>
	                                    <c:if test="${TravelMap.star eq 2}">
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                    </c:if>
	                                    <c:if test="${TravelMap.star eq 4}">
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-gray-300"></i>
	                                    </c:if>
	                                    <c:if test="${TravelMap.star eq 5}">
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                        <i class="fa fa-star text-warning"></i>
	                                    </c:if>
	                                    </div>
	                                </div>
	                            </div>
	                            </c:forEach>
	                        </div>
	                    </div>
	                    <!-- 지도 크기 -->
	                    <div class="col-lg-8 map-side-lg pe-lg-0" style="padding-top: 3.3rem">
	                        <div class="map-full shadow-left" id="categorySideMap">
	                        </div>
	                    </div>
	                </div>
	
	            </div>
	    </section>
	
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
	            ajax.onload = function (e) {
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
	    <!-- <script src=" https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
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
	    <!-- <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script> -->
	    <!-- Available tile layers-->
	    <script src="${path}/resources/js/map-layers.js">
	    </script>
	    <script src="${path}/resources/js/map-category.js">
	    </script>
	    <script>
	        createListingsMap({
	            mapId: 'categorySideMap',
	            jsonFile: 'js/restaurants-geojson.json',
	            //tileLayer: tileLayers[5]  - uncomment for a different map styling
	        });
	    </script>
	    <!-- Price Slider-->
	    <script src="${path}/resources/vendor/nouislider/nouislider.min.js"></script>
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
	        snapSlider.noUiSlider.on('update', function (values, handle) {
	            snapValues[handle].innerHTML = values[handle];
	            inputValues[handle].value = values[handle];
	        })
	    </script>
	
	    <!-- 지도 -->
	    <!-- <script src=" https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
	    <!-- 내꺼 js -->
	    <script type="text/javascript"
	        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cf195a29b50143fef5883a438669e5bb"></script>
	
	    <script>
	                //  지도 
	                // src = " https://code.jquery.com/jquery-3.2.1.min.js"
	
	                // type = "text/javascript"
	                // src = "//dapi.kakao.com/v2/maps/sdk.js?appkey=cf195a29b50143fef5883a438669e5bb&libraries=clusterer"
	
	                //  일반지도 
	
	                var mapContainer = document.getElementById('categorySideMap'), // 지도를 표시할 div 
	                    mapOption = {
	                        center: new kakao.maps.LatLng('${travelMapList[0].mapY}', '${travelMapList[0].mapX}'), // 지도의 중심좌표
	                        level: 4, // 지도의 확대 레벨
	                        mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
	                    };
	
	                // 지도를 생성한다 
	                var map = new kakao.maps.Map(mapContainer, mapOption);
	
	                // 마커를 표시할 위치와 title 객체 배열입니다 
	                var positions = [];
					<c:forEach items="${travelMapList}" var="TravelMap">
						positions.push({
	                	id: '${TravelMap.contentId}',
	                	type: '${TravelMap.contentTypeId}',
	                	title: '${TravelMap.title}',
	                    latlng: new kakao.maps.LatLng('${TravelMap.mapY}', '${TravelMap.mapX}'),
	                    image: '${TravelMap.firstImage}',
	                    address: '${TravelMap.addr1}',
	                    tel: '${TravelMap.tel}',
	               		});
	                </c:forEach>
	                
	                
	                <c:if test="${travelMapList[1].contentTypeId eq '25' }">
	                var positions = [];
					<c:forEach items="${courseList}" var="course">
						positions.push({
	                	id: '${course.contentId}',
	                	title: '${course.subName}',
	                    latlng: new kakao.maps.LatLng('${course.subMapY}', '${course.subMapX}'),
	                    image: '${course.subdetailImg}',
	                    address: '${course.subdetailOverview}',
	               		});
	                </c:forEach>
	                </c:if>
	                
	                
	
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
	                    <c:if test="${travelMapList[1].contentTypeId eq '25' }">
	                    var marker = new kakao.maps.Marker({
	                        map: map,
	                        position: data.latlng,
	                        image: markerImage
	                    });
	                    </c:if>
	                    
	                    
	                    var overlay = new kakao.maps.CustomOverlay({
	                        yAnchor: 1,
	                        xAnchor: -0.2,
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
// 	                        '                <div>'+
// 	                        data.hp +
// 	                        '</div>' +
	                        '                <div class="pt-1"><a href="${path}/tourDetailInfo.do?contentId='+
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
	
	                
	                <c:if test="${travelMapList[1].contentTypeId eq '50' || travelMapList[1].contentTypeId eq '25'}">
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
	                </c:if>
	
	
	
	
	
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
	
	</body>

</html>