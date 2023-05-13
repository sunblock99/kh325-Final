<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>

 <br>
 <br>
 <br>
 
 <h2><a href="${path}/???/????.do">사용불가(index)</a></h2>
 <h2><a href="${path}/insertTour.do">관광 공통정보 INSERT</a></h2>
 <h2><a href="${path}/DetailTourist/insert.do">관광지 소개정보 INSERT</a></h2>
 <h2><a href="${path}/DetailCultural/insert.do">문화시설 소개정보 INSERT</a></h2>
 <h2><a href="${path}/DetailEvent/insert.do">행사축제 소개정보 INSERT</a></h2>
 <h2><a href="${path}/DetailSports/insert.do">레포츠 소개정보 INSERT</a></h2>
 <h2><a href="${path}/DetailShopping/insert.do">쇼핑 소개정보 INSERT</a></h2>
 <h2><a href="${path}/DetailRestaurant/insert.do">음식점 소개정보 INSERT</a></h2>
 <h2><a href="${path}/DetailHotel/insert.do">숙박 소개정보 INSERT</a></h2>
 <h2><a href="${path}/DetailCourse/insert.do">여행코스 소개정보 INSERT</a></h2>
 <h2><a href="${path}/insertRepeatInfo.do">반복정보 (통합) INSERT</a></h2>
 <h2><a href="${path}/insertRepeatCourse.do">반복정보_여행코스 INSERT</a></h2>
 <h2><a href="${path}/insertRepeatHotel.do">반복정보_숙박 INSERT</a></h2>
 <h2><a href="${path}/insertTourImage.do">이미지정보조회 INSERT</a></h2>
 <h2><a href="${path}/insertTourFree.do">무장애여행 INSERT</a></h2>
 <h2><a href="${path}/insertGallery.do">갤러리 INSERT</a></h2>
 <h2><a href="${path}/insertAreaCode.do">AreaCode INSERT</a></h2>
 <h2><a href="${path}/insertCategory.do">Category INSERT</a></h2>
 <h2><a href="${path}/eventSearch.do">행사검색 페이지</a></h2>
 <h2><a href="${path}/tourSearch.do">관광지검색 페이지</a></h2>
 <h2><a href="${path}/eventCalendar.do">행사달력 페이지</a></h2>







<br><br><br><br><br><br><br><br><br><br><br>
 <a href="views/manager/userManagement.jsp">관리자페이지 테스트</a>
 

 




 <jsp:include page="/WEB-INF/views/common/footer.jsp"/> 