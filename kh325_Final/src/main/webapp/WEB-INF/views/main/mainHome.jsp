<%@page import="com.kh.tour.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

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
<link rel="stylesheet"
	href="${path}/resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet"
	href="${path}/resources/vendor/magnific-popup/magnific-popup.css">

<!-- theme stylesheet-->
<link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="${path}/resources/css/customKNI.css">
<link rel="stylesheet" href="${path}/resources/font.css">
<!-- Favicon-->
<link rel="shortcut icon" href="${path}/resources/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

</head>

<body style="padding-top: 0;">

	<!-- naim -->
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
</style>


<jsp:include page="/WEB-INF/views/common/whiteHeader.jsp">
			<jsp:param value="예아바디" name="title"/>
</jsp:include>

	<!-- 배경 -->
	<section class="pt-5 hero-home" style="background-color: #FD9F28;">
		<div class="swiper-container hero-slider" style="height: 82%;">
			<div class="swiper-wrapper darker-overlay">
				<div class="swiper-slide darker-overlay"
					style="background-image:url(${path}/resources/image/mainBackground.png)"></div>
				<div class="swiper-slide darker-overlay"
					style="background-image:url(${path}/resources/image/mainBackground2.jpg)"></div>
				<div class="swiper-slide darker-overlay"
					style="background-image:url(${path}/resources/image/mainBackground3.jpg)"></div>
			</div>
		</div>

		<div class="col-1"></div>
		<div class="col-12 py-5 py-md-4 text-white z-index-20">
			<div class="row">
				<div class="col-xl-10">
					<div class="py-6 text-center text-lg-start">
						<p class="fs-3 text-pSb mb-1" style="color: #fff; letter-spacing: 2px;">DISCOVER SOUTH KOREA</p>
						<h1 class="display-1 fw-bold text-pBlack text-shadow">TOGETHER</h1>
						<p class="ps-2 fs-4 text-pR">투게더와 함께 대한민국의 구석구석을 둘러보고 멋진 여행을
							계획 해보세요</p>
						<button class="mt-4 mb-5 col-lg-3 btn rounded-pill d-grid fs-5 letter-spacing-1 text-pB"
							style="background-color: #FD9F28;" type="submit" onclick="location.href='${path}/tourSearch.do?'">관광정보
							검색하기</button>
					</div>

					<!-- 검색창 시작 -->
					<div class="search-bar col-12 searchbar-shadow p-3 p-lg-1 ps-lg-3 text-pSb absolute-searchbar">
						<form action="${path}/tourSearch.do" method="get">
							<div class="row">
								<div class="col-lg-10 d-flex align-items-center form-group">
									<input style="font-size: 1.4rem;"
										class="form-control border-0 shadow-0" type="text"
										name="searchValue" placeholder=" &nbsp; 검색어를 입력 해주세요">
								</div>
								<div class="col-lg-2 d-grid" style="text-align: center;">
									<button class="btn rounded-pill h-100 fs-5 letter-spacing-4"
										style="background-color: #FD9F28;" type="submit">검색</button>
								</div>
							</div>
						</form>
					</div>
					<!-- 검색창 끝 -->

				</div>
			</div>
		</div>
	</section>

	<!-- 여행코스 시작 -->
	<section style="background-color: #FD9F28;">
		<div class="row mb-5 pb-5">

			<div class="col-1"></div>
			<div class="col-md-4">
				<p class="fs-3 mb-0"
					style="color: rgba(255, 255, 255, 0.598); font-family: pM;">MAKE IT TOGETHER</p>
				<h6 class="display-4 fw-bold text-pBlack">나만의 여행코스</h6>
				<p class="fs-2 mb-0 pt-3 text-pSb" style="color: #fff;">투게더 이용자들이 직접 기록한 여행코스</p>
				<p class="fs-3 mb-0 pt-4 text-pM" style="color: #fff;">
					오늘은 <span class="fs-3 mb-0 pt-1 todaytour-intro-id text-pM">박박만*님</span> ,
					<span class="fs-3 mb-0 pt-1 todaytour-intro-id text-pM">짜파게*님</span> 만의 <br>특별한 여행코스를 구경해보세요
				</p>
				<div class="row mt-5 pt-4 pb-3">
					<div class="col-lg-5 d-grid" style="text-align: center;">
						<button class="btn-black rounded-pill h-100"
							style="background-color: black; color: #fff;" type="button" onclick="location.href='${path}/course/courseRecommended'">
							추천코스 바로가기</button>
					</div>
					<div class="col-lg-5 d-grid" style="text-align: center;">
						<button class="btn-black rounded-pill h-100"
							style="background-color: black; color: #fff;" type="button" onclick="location.href='${path}/course/courseMyCourse'">
							나만의 코스 만들기</button>
					</div>
				</div>
			</div>
			<!-- 사진카드 -->
			<div class="col-md-3">
				<div class="d-flex align-items-lg-stretch mb-2 col-lg-4">
					<div class="d-flex align-items-lg-stretch">
						<div
							class="mytour-size ps-7 pe-7 pb-0 pt-6 card shadow-lg border-0 border-0 hover-animate"
							style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b5276bc6-398d-42e4-a8b3-706801c8d464);">
							<a class="tile-link" href="${path}/course/courseMyCourse?myCourseNo=7"> </a>
							<div
								class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
							</div>
						</div>
					</div>
				</div>
				<div class="text-end todaytour-font">
					통영을 거닐자 <span class="todaytour-font-id">박박만*님</span>
				</div>
			</div>

			<div class="col-md-3">
				<div class="d-flex align-items-lg-stretch mb-2 col-lg-4">
					<div class="d-flex">
						<div
							class="mytour-size ps-7 pe-7 pb-0 pt-6 card shadow-lg border-0 border-0 hover-animate"
							style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=46ab91aa-b241-4fdf-9d71-c3029e8e6e48); ">

							<a class="tile-link" href="${path}/course/courseMyCourse?myCourseNo=9"> </a>
							<div
								class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
								<!-- <h3 class="text-shadow text-uppercase mb-0">   </h3> -->
							</div>
						</div>
					</div>
				</div>
				<div class="text-end todaytour-font">
					강원도 인생삿 찍기여행 <span class="todaytour-font-id">짜파게*님</span>
				</div>
			</div>

		</div>
	</section>
	<!-- 여행코스 끝 -->

	<!-- 123 소개 -->
	<section
		class="contianer py-5 me-lg-5 ps-2 pe-6 pb-4 pt-5 justify-content-center">
		<div class="row">
			<div class="col-1"></div>

			<div class="col-lg-3 px-5 position-relative z-index-30">
				<p class="main-number">1</p>
				<div class="ps-lg-3">
					<h5 class="text-uppercase">Together</h5>
					<p class="mb-5 mb-lg-0 text-pM fs-5" style="word-break: keep-all;">같이 떠나요. 그곳이 어디든 소중한 이와
						함께라면 행복한 시간이 찾아올 거예요. 투게더에서 ‘동행’을 구해보세요. 새로운 인연이 기다릴 거예요.</p>
				</div>
			</div>

			<div class="col-1"></div>
			<div class="col-lg-3 px-5 position-relative z-index-30">
				<p class="main-number">2</p>
				<div class="ps-lg-3">
					<h5 class="text-uppercase ms-3">To Get There</h5>
					<p class="mb-5 mb-lg-0 ms-3 text-pM fs-5" style="word-break: keep-all;">실시간 ‘핫플레이스’부터 우리나라
						구석구석 숨겨진 명소까지. 투게더에서 제공하는 관광 정보를 바탕으로 ‘나만의 여행 계획’을 세워보세요.</p>
				</div>
			</div>

			<div class="col-1"></div>
			<div class="col-lg-3 px-5 position-relative z-index-30">
				<p class="main-number">3</p>
				<div class="ps-lg-3">
					<h5 class="text-uppercase ms-3">To Remember</h5>
					<p class="mb-5 mb-lg-0 ms-3 text-pM fs-5" style="word-break: keep-all;">여행은 즐거우셨나요. ‘리뷰’와 ‘여행
						후기’를 통해 여러분의 아름다운 추억을 되새기고 공유해주세요. 함께 나누는 만큼 오래도록 잊히지 않을 기억이 될 거예요</p>
				</div>
			</div>
			<div class="col-1"></div>

		</div>
	</section>

	<!-- 핫플레이스 시작 -->
	<section class="pb-3 pt-5 mt-2">
		<div class="row">
			<div class="col-1">
				<img src="${path}/resources/image/mainVideoBack.png" alt=""
					width="40px" height="380px">
			</div>
			<div class="col-md-3 mb-5 mb-md-0">
				<p class="fs-3 mb-0" style="color: #907B65; font-family: pM;">HOT
					PLACE</p>
				<h6 class="display-4 fw-bold text-pBlack">핫플레이스</h6>
				<p class="fs-4 mb-2 text-pSb">현재 많은 사람들이 관심있는 곳은 어딜까요?</p>
				<p class="fs-4 text-muted text-pR" style="height: -20px;">
					대한민국의 각 지역들을 대표하는 관광지 중<br> 가장 인기가 많고 이용자들이 많이 검색하는 <br>
					핫플레이스를 투게더에서 함께 확인해보세요!
				</p>
				<a
					class="d-flex a-hover a-orign-text btn-link-cate-lgfont pt-5 justify-content-end"
					href="${path}/tour/hotPlace"> 더보기 <i class="fas fa-angle-double-right ms-1"></i></a>
			</div>

			<!-- Slides-->
			<div class="mx-5 col-md-7 ps-7 pe-5">
				<div class="swiper-container guides-slider mx-n3 pt-3">
					<!-- Additional required wrapper-->
					<div class="swiper-wrapper pb-5">
						<!-- Slides-->
							<c:forEach items="${selectMainHotPlace}" var="MainHotPlace">
							<div class="swiper-slide h-auto px-2">
							<div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
								<a class="tile-link" href="${path}/tourDetailInfo.do?contentId=${MainHotPlace.contentId}&contentTypeId=${MainHotPlace.contentTypeId}"></a>
								
								<c:if test="${MainHotPlace.firstImage ne null}">
								<img class="bg-image" src='<c:out value="${MainHotPlace.firstImage}" />' alt="Card image">
								</c:if>
								<c:if test="${MainHotPlace.firstImage eq null}">
								<img class="bg-image" src='<c:out value="${path}/resources/image/noImage.png" />' alt="Card image">
								</c:if>
								
								<div class="card-body overlay-content">
									<h6 class="card-title text-shadow text-pB"><c:out value="${MainHotPlace.title}"/></h6>
									<p class="card-text text-sm text-pB">
									<c:if test="${MainHotPlace.contentTypeId eq 12}">관광지</c:if>
									<c:if test="${MainHotPlace.contentTypeId eq 39}">음식점</c:if>
									</p>
								</div>
							</div>
							</div>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 핫플레이스 끝 -->

	<div class="overflow-hidden">
		<img src="${path}/resources/image/mainMiddleLine.png" alt=""
			width="2000px" height="130px">
	</div>

	<!-- 행사 ㅣ 축제 시작 -->
	<section class="px-lg-7 py-2 ms-4 ps-7 pe-5">
		<div class="row mb-5">
			<p class="fs-4 mb-0 pt-0" style="color: #907B65; font-family: pM;">ENJOY
				TOGETHER</p>
			<div class="col-md-6">
				<h6 class="display-4 text-pBlack">행사ㅣ축제</h6>

				<div class="row mb-3">
				<c:forEach items="${selectMainEvent}" var="MainEvent">
					<div class="col-6 d-flex mt-4">
						<a class="a-orign-text" href="${path}/tourDetailInfo.do?contentId=${MainEvent.contentId}&contentTypeId=${MainEvent.contentTypeId}">
						<c:if test="${MainEvent.firstImage ne null}" />
						<img class="date-tile-event me-3 ms-3" src='<c:out value="${MainEvent.firstImage}"/>' />
						</a>
						<p class="mb-0 text-lg">
							<b><c:out value="${MainEvent.title}" /></b><br>
							<c:out value="${MainEvent.eventStartDate}" /> ~ <c:out value="${MainEvent.eventEndDate}" /> 
						</p>
					</div>
				</c:forEach>
 				</div>
				<a class="d-flex a-hover a-orign-text btn-link-cate justify-content-end py-2"
					href="${path}/eventSearch.do"> 더보기 <i class="fas fa-angle-double-right ms-1"></i></a>
			</div>


			<div class="col-md-6 z-index-50"
			style=" background-size: 500px 310px;
				    z-index: -100;
				    background-image: url(${path}/resources/image/mainVideoBack.png);
				    background-repeat: no-repeat;
				    background-position-x: 340px;
				    background-position-y: 100px;
				    overflow: visible;">
				<div class="d-flex align-items-center">
					<div class="ms-6 ps-6">
						<iframe class="ms-lg-4 mb-3 pb-4 video-shadow"
							src="https://www.youtube.com/embed/RMD91n01DuA?start=0&cc_load_policy=1&iv_load_policy=3&color=white"
							width="550" height="400" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- 행사ㅣ축제 끝 -->

	<!-- 커뮤니티 시작-->
	<section class="py-1" style="background-color: #F3F1EE">
		<div class="ps-7 pe-7">
			<div class="row mb-0">
				<div class="col-md-8">
					<p class="fs-4 mb-0 mt-5" style="color: #907B65; font-family: pM;">JOIN US TOGETHER</p>
					<h6 class="display-4 pb-0 text-pBlack">커뮤니티</h6>
				</div>

				<div class="col-sm-6 ps-lg-2 pe-4 text-pEb">
					<div class="ps-lg-1 pb-1 fs-3 text-pB opacity-75">인기 블로그</div>
					<div
						class="mt-2 py-2 me-2 container card border-0 shadow-sm hover-animate justify-content-center">
						<div class="pt-4 row">
							<a class="col-5" href="${path}/community/journeyDetail?journeyNo=10"> <img
								class="img-main-gallery"
								src="http://tong.visitkorea.or.kr/cms2/website/99/2816599.jpg"
								alt="..." /></a>

							<div class="col-7">
								<a class="a-hover community-cate-font fw-bold" href="${path}/community/journeyList">여행후기
								</a>
								<h5 class="my-1 fs-3">
									<a class="text-dark" href="${path}/community/journeyDetail?journeyNo=10">보라섬의 비밀</a>
								</h5>
								<p class="text-gray-500 text-md text-pM">
									<i class="far fa-clock me-2"></i>2022년 09월 21일
								</p>
								<p class="my-2 text-muted text-pR text-overflow-elip-3">이 신비로운 마을을 체험하기 위해서 나는 기꺼이 연차를 쓰고 전북 신안으로 향했다. 
									보라섬을 보기 위해서는 입장료 5000원이 필요하다. 야박하다고 생각말라, 보라섬이 보여주는 아름다움과 신비한 체험에 
									비하면 터무니없이 저렴한 가격이다. 그래도 아깝다고 생각되면 보라보라인이 되면 된다. 보라색 아이템을 착용하면
									입장료는 없다. 이미 당신 자체가 보라섬의 일부이니까. 나도 보라섬이 되기로 했다. 보라색 니트에 머리띠까지 
									챙겨서 당당하게 보라섬에 입장했다. 보라섬은 온통 보라색이다. 인형의 마을에 들어온 것 처럼
									이질적이면서도 아름답다. 보라섬은 박지도와 반월도를 이어 만든 섬으로 바다 위에 데크길을 만들어 놓아 한바퀴 
									돌아볼수 있도록 인프라를 조성해 놓았다. 하늘과 바다와 보라 그 환상의 조합에 푹빠져 다리 아픈줄도 몰랐다. 
									곳곳에 위치한 포토존에서 신나게 사진도 찍었다. 디저트 맛집들도 많아서 여행 내내 입이 달고 배가 불렀다. 
									너무 마음에 들었다. 떠나고 싶지 않았다. 하지만 시간은 왜 우릴 허락하지 않는건지.. 
									어쩔 수 없이 보라섬을 떠나면서 다음에는 꼭 소중한 사람과 함께 오리라 다짐했다.</p>
								<a
									class="d-flex a-hover a-orign-text btn-link-cate justify-content-end py-2"
									href="${path}/community/journeyDetail?journeyNo=10"> 더보기 <i
									class="fas fa-angle-double-right ms-1"></i></a>
							</div>
						</div>
					</div>

					<div
						class="mt-2 py-2 me-2 container card border-0 shadow-sm hover-animate justify-content-center">
						<div class="pt-4 row">
							<a class="col-5" href="${path}/community/journeyDetail?journeyNo=9"> <img
								class="img-main-gallery"
								src="https://cdn.pixabay.com/photo/2016/04/20/00/41/mcdonalds-1340199_960_720.jpg"
								alt="..." /></a>

							<div class="col-7">
								<a class="a-hover community-cate-font fw-bold" href="${path}/community/journeyList">여행후기
								</a>
								<h5 class="my-1 fs-3">
									<a class="text-dark" href="${path}/community/journeyDetail?journeyNo=9">행복의 나라로 갈테야 </a>
								</h5>
								<p class="text-gray-500 text-md text-pM">
									<i class="far fa-clock me-2"></i>2022년 10월 24일
								</p>
								<p class="my-2 text-muted text-pR text-overflow-elip-3">맥도날드 매장 분위기는 특별하다. 전 연령, 다양한 구성의 사람들이 찾아온다. 
								그 어수선함 속 자유로운 분위기에 우리 가족도 즐겁게 녹아들었던 것 같다. 
								가끔 무더운 여름밤이면 우리 가족은 늦은 밤 슬리퍼를 꿰어신고 나와 맥도날드로 피서를 갔다. 
								아이스크림 콘을 하나씩 입에 물고 시간을 보냈다. 아이스크림만 사먹었는데도 가끔 행사상품에 끼워 나가는 장난감을
								그냥 주기도 했다. 어릴 때는 내가 너무 착한 어린이라서 그런 선물들을 받는 것이라 생각하고 뿌듯해했다.
								매장에 방문한 어린이에게 재고 장난감을 선물하는 것이 글로벌 기업의 마케팅 방침이었음을 알게 된 건 꽤 오랜 시간이 지난후였다. 
								
								이사를 하고 시간이 흘러 맥도날드는 내 어린시절과 함께 멀어져갔다. 
								평범하게 대학을 나와 회사를 다니다가 사업을 시작했다. 여행 사업이었다. 사업자 등록을 하고 1년정도 지난 시점에서
								코로나가 터졌다. 사업은 속수무책으로 곤두박질 쳤다. 회사를 정리했다. 갈피를 잃고 방황했다. 어디로든 도망치고 싶었다.
								낡은 중고자동차를 헐값에 사서 무작정 대한민국 이곳저곳을 돌아다녔다.
								</p>
								<a
									class="d-flex a-hover a-orign-text btn-link-cate justify-content-end py-2"
									href="${path}/community/journeyDetail?journeyNo=9"> 더보기 <i
									class="fas fa-angle-double-right ms-1"></i></a> </a>
							</div>
						</div>
					</div>
				</div>

				<!-- <a class="d-flex a-hover a-orign-text btn btn-link-cate ps-0 justify-content-end" href="post.html">더보기
            <i class="fa fa-long-arrow-alt-right ms-2"></i></a> -->

				<div class="col-sm-6 ps-6 pe-5">
					<div class="table-responsive text-sm">
						<div class="ps-lg-1 fs-3 py-1 text-pB opacity-75">최신 게시글</div>
						<table class="table table-striped mt-3">
							</thead>
							<tbody class="text-start">
								<c:forEach items="${selectMainCommunityList}" var="MainCommunity">
								<tr>
								
									<c:if test="${MainCommunity.boardType eq 'FB'}">
									<a class="a-hover a-orign-text" href="${path}/community/freeboardList">
									<td class="community-cate-font">자유게시판</td></a>
									</c:if>
									<c:if test="${MainCommunity.boardType eq 'CB'}">
									<a class="a-hover a-orign-text" href="${path}/community/companionList">
									<td class="community-cate-font">동행구하기</td></a>
									</c:if>
									
									<td class="fw-bold community-title-font">
									
									<c:if test="${MainCommunity.boardType eq 'FB'}">
									<a class="a-hover a-orign-text" href="${path}/community/freeDetail?freeboardNo=<c:out value="${MainCommunity.freeboardNo}"/>">
									<c:out value="${fn:substring(MainCommunity.title,0,20)}" />
									</a>
									<c:if test="${fn:length(MainCommunity.title) ge 20}">...</c:if>
									</c:if>

									<c:if test="${MainCommunity.boardType eq 'CB'}">
									<a class="a-hover a-orign-text" href="${path}/community/companionList">
									<c:out value="${fn:substring(MainCommunity.title,0,20)}" />
									<c:if test="${fn:length(MainCommunity.title) ge 20}">...</c:if>
									</a>
									</c:if>
									
									</td>
									
									<td class="community-title-font"><c:out value="${MainCommunity.userName}" /></td>
								</tr>
								</c:forEach>

							</tbody>
						</table>
						<a
							class="d-flex a-hover a-orign-text btn-link-cate justify-content-end pt-4 pe-4"
							href="${path}/community"> 전체 게시글 보러가기 <i
							class="fas fa-angle-double-right ms-1"></i></a>

					</div>
				</div>
			</div>
		</div>
	</section>

	<!--갤러리 시작 -->
	<div class="col-md-12 pb-6" style="background-color: #F3F1EE">
		<div class="ps-7 pe-7">
			<p class="fs-4 mb-0 pt-5" style="color: #907B65; font-family: pM;">
				SPECIAL MOMENTS</p>
			<h6 class="mb-0 display-4 fw-bold"
				style="font-family: pBlack; letter-spacing: 2px;">갤러리</h6>

			<a
				class="d-flex a-hover a-orign-text btn-link-cate-lgfont justify-content-end pb-3"
				href="${path}/community/gallery"> 더보기 <i class="fas fa-angle-double-right ms-1"></i></a>

		</div>
		<div class="ps-7 pe-7 grid-wrapper pb-5"
			style="overflow: hidden; cursor: pointer;">
			<div>
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/58/2760758.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
			<div>
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/15/2760715.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>

			<div class="tall">
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/87/2647387.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>

			<div class="wide">
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/96/2707196.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
			<div>
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/36/2706936.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
			<div class="tall">
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/05/2719605.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
			<div class="big">
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/12/2774412.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
			<div>
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/39/2705239.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
			<div class="wide">
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/31/2779531.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
			<div class="tall">
				<img class="img-main-gallery hover-animate"
					src="http://tong.visitkorea.or.kr/cms2/website/88/2826488.jpg"
					alt="" onclick="location.href='${path}/community/gallery'"/>
			</div>
		</div>
	</div>

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
	<script
		src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Magnific Popup - Lightbox for the gallery-->
	<script
		src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Smooth scroll-->
	<script
		src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
	<!-- Bootstrap Select-->
	<script
		src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
	<script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
	<!-- Swiper Carousel                       -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
	<script>
		var basePath = ''
	</script>
	<!-- Main Theme JS file    -->
	<script src="${path}/resources/js/theme.js"></script>

</body>

</html>