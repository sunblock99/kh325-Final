<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

    
   <header class="header header-absolute" style="font-size: 50px;">
      <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
        <div class="container-fluid">
          <div class="d-flex align-items-center">

            <!-- 로고 시작 -->
            <a class="navbar-brand py-3 px-5" href="${path }/" style="line-height:0;">
              <img class="ps-3" src="${path}/resources/image/togetherLogoWhite.png" width="40%" height="60%">
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
                <a class="fs-3 nav-link-header text-pSb me-2" id="homeDropdownMenuLink" href="${path}/"
                  aria-haspopup="true" aria-expanded="false">홈</a>
              </li>

              <!-- 상단바메뉴 시작 -->
               <li class="nav-item position-static text-pB">
                   <li class="nav-item dropdown">
                       <a class="fs-3 nav-link-header dropdown-toggle me-4" id="docsDropdownMenuLink" href="#" 
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
                      <a class="fs-3 nav-link-header dropdown-toggle me-4" id="docsDropdownMenuLink" href="#" 
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
                      <a class="fs-3 nav-link-header dropdown-toggle me-4" id="docsDropdownMenuLink" href="#" 
                      data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">여행정보</a>
                      <div class="dropdown-menu dropdown-menu-end text-pSb" aria-labelledby="docsDropdownMenuLink">
						<h6 class="dropdown-header fs-5 text-pSb">여행정보</h6>
                          <a class="hvr dropdown-item fs-5" href="${path }/course/courseMain">여행코스</a>
                          <a class="hvr dropdown-item fs-5" href="${path}/map/travelMap">여행지도 </a>
                      </div>
                  </li>
               </li>
				              
              
              <c:if test="${loginMember eq null}">
              <li class="nav-item"><a class="fs-3 nav-link-header" href="${path}/loginView">로그인</a></li>
              </c:if>
              
              <c:if test="${loginMember ne null && loginMember.managerStatus eq 'N'}">
              <li class="nav-item dropdown"><a class="fs-3 nav-link-header dropdown-toggle" id="docsDropdownMenuLink"
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
              <li class="nav-item dropdown"><a class="fs-3 nav-link-header dropdown-toggle" id="docsDropdownMenuLink"
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
