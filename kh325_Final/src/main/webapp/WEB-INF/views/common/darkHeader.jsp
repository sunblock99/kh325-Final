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
            <a class="navbar-brand py-3 px-5" href="index.html"
              style="line-height:0;">
              <img class="ps-3" src="${path}/resources/image/togetherLogo.png" width="30%"
                height="10%">
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
                <a class="nav-link-header-black" id="homeDropdownMenuLink"
                  href="index.html"
                  aria-haspopup="true" aria-expanded="false">홈</a>
              </li>

              <!-- 상단바메뉴 시작 -->
              <li class="nav-item position-static">
                <li class="nav-item dropdown">
                  <a class="nav-link-header-black dropdown-toggle me-3" id="docsDropdownMenuLink"
                    href="index.html" data-bs-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    관광정보</a>
                  <div class="dropdown-menu dropdown-menu-end"
                    aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                    <h6 class="dropdown-header fw-normal" style="font-family:
                      pB;">관광정보</h6>
                    <a class="hvr dropdown-item"
                      href="docs/docs-introduction.html">HOT PLACE </a>
                    <a class="hvr dropdown-item"
                      href="docs/docs-directory-structure.html">관광지 정보</a>
                    <a class="hvr dropdown-item" href="docs/docs-gulp.html">지역별
                      축제ㅣ행사 </a>
                    <a class="hvr dropdown-item"
                      href="docs/docs-customizing-css.html">날짜별 축제ㅣ행사</a>
                  </div>
                </li>
              </li>

              <li class="nav-item"><a class="nav-link-header-black" href="contact.html">커뮤니티</a></li>
              <li class="nav-item">
                <a class="nav-link-header-black" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a></li>
              
              <c:if test="${loginMember eq null}">
              <li class="nav-item"><a class="nav-link-header-black" href="${path}/loginView">로그인</a></li>
              </c:if>
              
              <!-- 일반회원 로그인 성공 시 -->
              <c:if test="${loginMember ne null && loginMember.managerStatus eq 'N'}">
              <li class="nav-item dropdown"><a class="nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink"
                href="login.html"data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <c:out value="${loginMember.userName}" /> 님</a>
                <div class="dropdown-menu dropdown-menu-end"
                    aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                    <a class="hvr dropdown-item"
                      href="docs/docs-introduction.html">마이페이지</a>
                    <a class="hvr dropdown-item"
                      href="docs/docs-directory-structure.html">로그아웃</a>
                </div>
              </li>
              </c:if> 
              
              <!-- 관리자 로그인 성공 시 -->
              <c:if test="${loginMember.managerStatus eq 'Y'}">
              <li class="nav-item dropdown"><a class="nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink"
                href="login.html"data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 <c:out value="${loginMember.userName}" /> 님</a>
                <div class="dropdown-menu dropdown-menu-end"
                    aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                    <a class="hvr dropdown-item"
                      href="docs/docs-introduction.html">마이페이지</a>
                    <a class="hvr dropdown-item"
                      href="docs/docs-introduction.html">관리자페이지</a>
                    <a class="hvr dropdown-item"
                      href="docs/docs-directory-structure.html">로그아웃</a>
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
