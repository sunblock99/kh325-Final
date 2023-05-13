<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,800" rel="stylesheet" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>TOGETHER, to GET THEREE</title>
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
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/addGallery.css">
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <!-- <link rel="stylesheet" href="${path}/resources/css/font.css"> -->

    <!-- <link href="${path}/resources/css/addSearch.css" rel="stylesheet" /> -->
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

<jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
    <jsp:param value="갤러리" name="title" />
</jsp:include>

<%-- <c:set var="searchType" value="${param.searchType}" /> --%>
<c:if test="${empty searchType}">
    <c:set var="searchType" value="${'galTag'}" />
</c:if>


<style>
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

    @font-face {
        font-family: 'Pretendard-Regular';
        src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
        font-weight: 400;
        font-style: normal;
    }

    /* 헤더 hover 효과 */

    a.hvr:hover {
        color: #FD9F28;
        background-color: #FAF9F8;
        text-decoration: none;
    }

    /* 블랙헤더 */

    .navbar .nav-link-header-black {
        font-size: 1.4rem;
        font-weight: bold;
        color: black;
        text-decoration: none;
        display: block;
        padding: 0.5rem 1rem;
        color: black;
        transition: color 0.12s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out;
    }
</style>



<body style="padding-top: 0px">
<!--     <section > -->
<!--     <section> -->
<!--                   <section class=" position-relative pt-5 pb-4" > -->
<!--                         <img class="bg-image" style="opacity: 0.6; " src="https://images.pexels.com/photos/4784481/pexels-photo-4784481.jpeg?auto=compress&cs=tinysrgb&w=1600"> -->
<!-- <body style="padding-top: 90px; "> -->
    <section class="circle1">
        <section class="circle2">
            <section class=" position-relative pt-5 pb-4 " style="background-color: rgba(255, 193, 121, 0.295);">
                <!--         <img class="bg-image" style="opacity: 0.6; " src="https://images.pexels.com/photos/13077046/pexels-photo-13077046.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load"> -->
                <div class="container">
                    <div class="row">
                        <div class="card_title pt-7">
                            <p class="form-label2 fs-5 fw-bold text-shadow-dark">together</p>
                            <h1 class="mb-3" style="font-size: 3.5rem;">갤러리</h1>
                            <!-- <h1 class="mb-3">갤러리</h1> -->
                            <p class="text-muted" style="font-size: 1.1rem; font-weight: bold;">투게더 회원들이 직접 찍고 게시한 아름다운
                                사진들을 감상해보세요!</p>
                            <div class="pb-">
                                <div class="collapse" id="addPictures">
                                    <!-- 파일업로드 테스트 -->
                                    <form action="${path}/community/writeGallery" method="post"
                                        enctype="multipart/form-data">
                                        <div id="root">
                                            <div class="contents mb-4">
                                                <div class="upload-box">
                                                    <div id="drop-file" class="drag-file">
                                                        <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
                                                            alt="파일 아이콘" class="image">
                                                        <p class="message">Drag files to upload</p>
                                                        <img src="" alt="미리보기 이미지" class="preview">
                                                    </div>
                                                </div>
                                                <div class="upload-box ms-3" style="position: relative;">
                                                    <input class="form-control-addTag " style="top:0;" type="text"
                                                        name="title" placeholder="제목을 입력해주세요">
                                                    <input class="form-control-addTag " style="top:30%;" type="text"
                                                        name="galTag" placeholder="태그를 입력해주세요">
                                                    <input type="hidden" name="writerId" value="${loginMember.userNo}"
                                                        readonly>

                                                    <div class="uploadButtons">
                                                        <label class="file-label " for="chooseFile">
                                                            <i class="fa-solid fa-image"></i>&nbsp; Choose File
                                                        </label>
                                                        <input class="file" id="chooseFile" type="file" name="upfile"
                                                            onchange="dropFile.handleFiles(this.files)"
                                                            accept="image/png, image/jpeg, image/gif">
                                                        <!-- <button class="upbtn file-label" name="upfile"><i class="fa-solid fa-image"></i>&nbsp; Choose File</button> -->
                                                            <button class="upbtn file-label btn_submit" type="submit"><i
                                                                    class="fa-solid fa-cloud-arrow-up"></i>&nbsp;
                                                                Upload</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- 파일업로드 끝-->
                                </div>


                                <!-- 로그인 안했으면 사진올리는거 안보여줌 -->
                                <c:if test="${loginMember != null}">
                                    <div class="mt-3">
                                        <button class="btn btn-link btn-collapse text-secondary fs-6" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#addPictures"
                                            aria-expanded="false" aria-controls="addPictures" data-expanded-text="접기"
                                            data-collapsed-text="이미지 게시하기">이미지 게시하기</button>
                                    </div>
                                    </c:if>

                            </div>


                        </div>
                        <!-- </div> -->
                    </div>
                    <!-- </div> -->
                </div>
            </section>

            <!-- 검색바 -->
            <div class="s004 pt-5">
                <form action="${path}/community/gallery" method="get">
                    <fieldset>
                        <legend># &nbsp;&nbsp;태그 검색</legend>
                        <div class="inner-form ">
                            <div class="input-field shadow" style="border-radius: 50%;">
                                <input type="radio" name="searchType" value="galTag" checked style="display: none;" />
                                <input class="form-control " id="searchValue" name="searchValue" type="text"
                                    placeholder="Type to search..." value="${param.searchValue}" />
                                <button class="btn-search " type="submit">
                                    <i class="fa-solid fa-magnifying-glass" style="font-size: 1.5rem;"></i>
                                </button>
                            </div>
                        </div>
                        <div class="suggestion-wrap ">
                            <span class="shadow">서울</span>
                            <span class="shadow">테마공원</span>
                            <span class="shadow">맛집</span>
                            <span class="shadow">파노라마</span>
                            <span class="shadow">장미꽃</span>
                        </div>
                    </fieldset>
                </form>
            </div>

            <div class="row">
                <div class="col-lg-9" style="margin: auto;">
                    <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4 mt-4">
                        <div class="me-3">
                            <p class="mb-3 mb-md-0"><strong><c:out value="${count}"/></strong> results found</p>
                        </div>
                        <div></div>
                        <div>
                            <label class="form-label me-2" for="form_sort">Sort by</label>
							<form action="${path}/community/gallery" method="get">                            
                            <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker"
                                title="" onchange="this.form.submit()">
                                <option value="newest">Newest </option>
                                <option value="oldest">Oldest </option>
                                <option value="popular">Most popular </option>
                            </select>
                            </form>
                        </div>
                    </div>
                    <div class="row">

                        <!-- 갤러리 리스트 시작 -->
                        <c:set var="i" value="0" />
                        <c:forEach var="gallery" items="${list}">
                            <c:if test="${list[i].title ne null}">

                                <div class=" grid-wrapper pb-3">
                                    <c:if test="${list[i].renamedImage eq null}">
                                        <div class="big box" style="display:none;">
                                            <div class="gallery-big card-img-top overflow-hidden bg-cover"
                                                onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"
                                                style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
<%--                                                 style="background-image: url(<c:out value=" ${list[i].renamedImage}" /> --%>
<!--                                             );"> -->
                                            <div class="info card-img-overlay-bottom z-index-50">
                                                <h4 class="text-white text-shadow-dark" style="float: left;">
                                                    <c:out value="${list[i].title}" />
                                                </h4>
						                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
						                        <c:if test="${loginMember != null}">
						                            <c:choose>
						                                <c:when
						                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
						                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
						                                            class="fa-regular fa-trash-can"></i></a>
						                                </c:when>
						                                <c:otherwise>
						                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
						                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
						                                </c:otherwise>
						                            </c:choose>
						                        </c:if>
                                                <p class="text-sm mb-0 text-shadow-dark"
                                                    style="color:rgb(253, 159, 40); clear: both;"> •
                                                    TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                                    <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                        <c:out value="${list[i].galTag}" />
                                                    </MARQUEE>
                                                </p>
                                            </div>
                                            <div
                                                class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                                <div></div>
                                                <a name="clickHeart" class="card-fav-icon position-relative z-index-40"
                                                    href="#;">
                                                    <svg class="svg-icon text-white">
                                                        <use xlink:href="#heart-1"> </use>
                                                    </svg></a>
                                            </div>
                                        </div>
                                </div>

                            </c:if>
                            <c:if test="${list[i].title ne null}">
<%--                             <c:set var=renamedImage" value="<c:out value=" ${list[i].renamedImage}" />"/> --%>
                                <div class="big box">
                                    <div class="gallery-big card-img-top overflow-hidden bg-cover"
                                        onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"
                                        style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                                    <div class="info card-img-overlay-bottom z-index-50">
                                        <h4 class="text-white text-shadow-dark" style="float: left;">
                                            <c:out value="${list[i].title}" />
                                        </h4>
                                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
				                        <c:if test="${loginMember != null}">
				                            <c:choose>
				                                <c:when
				                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
				                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
				                                            class="fa-regular fa-trash-can"></i></a>
				                                </c:when>
				                                <c:otherwise>
				                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
				                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
				                                </c:otherwise>
				                            </c:choose>
				                        </c:if>
                                        <p class="text-sm mb-0 text-shadow-dark"
                                            style="color:rgb(253, 159, 40); clear: both;"> •
                                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                                <c:out value="${list[i].galTag}" />
                                            </MARQUEE>
                                        </p>
                                    </div>
                                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                        <div></div>
                                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40"
                                            href="#;">
                                            <svg class="svg-icon text-white">
                                                <use xlink:href="#heart-1"> </use>
                                            </svg></a>
                                    </div>
                                </div>
                    </div>
                    </c:if>
                    <c:set var="i" value="${i+1}" />
                    <c:if test="${list[i].title eq null}">
                        <div class="tall box" style="display:none;">
                            <div class="gallery-tall card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)" 
                                style="background-image: url(<c:out value="${list[i].renamedImage}" />);">
                            <div class="info card-img-overlay-bottom z-index-50">
                                <h4 class="text-white text-shadow-dark" style="float: left;">
                                    <c:out value="${list[i].title}" />
                                </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                                <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;">
                                    •
                                    TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                    <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                        <c:out value="${list[i].galTag}" />
                                    </MARQUEE>
                                </p>
                            </div>
                            <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                <div></div>
                                <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                    <svg class="svg-icon text-white">
                                        <use xlink:href="#heart-1"> </use>
                                    </svg></a>
                            </div>
                        </div>
                </div>

                </c:if>
                <c:if test="${list[i].title ne null}">
                    <div class="tall box">
                        <div class="gallery-tall card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                            onmouseleave="zoomOut(event)" 
                            style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                        <div class="info card-img-overlay-bottom z-index-50">
                            <h4 class="text-white text-shadow-dark" style="float: left;">
                                <c:out value="${list[i].title}" />
                            </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                            <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                                TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                                <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                    <c:out value="${list[i].galTag}" />
                                </MARQUEE>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div></div>
                            <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a>
                        </div>
                    </div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}" />

            <c:if test="${list[i].title eq null}">
                <div class="box" style="width=10%; display:none;">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
                        style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <!--                 <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"  -->
                    <%-- style="background-image: url(${path}/resources/uploaded/gallery/gallery/<c:out value="
                        ${list[i].renamedImage}" />);"> --%>
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <!-- <a href=" " data-bs-toggle="modal" data-bs-target="#deletePic" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a> -->
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="box" style="width=10%">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
                        style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <!--                 <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"  -->
                    <%-- style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="
                        ${list[i].renamedImage}" />);"> --%>
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y' == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <!-- <a href=" " data-bs-toggle="modal" data-bs-target="#deletePic" class=" text-white" style="float: right;"><i class="fa-regular fa-trash-can"></i></a> -->
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />
            <c:if test="${list[i].title eq null}">
                <div class="box" style="display:none;">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.6" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="box">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                                                <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.6" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />

            <c:if test="${list[i].title eq null}">
                <div class="wide box" style="display:none;">
                    <div class="gallery-wide card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="wide box">
                    <div class="gallery-wide card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />
            <c:if test="${list[i].title eq null}">
                <div class="box" style="display:none;">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="box">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />
            <c:if test="${list[i].title eq null}">
                <div class="tall box" style="display:none;">
                    <div class="gallery-tall card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="tall box">
                    <div class="gallery-tall card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />

            <c:if test="${list[i].title eq null}">
                <div class="box" style="display:none;">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="box">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />
            <c:if test="${list[i].title eq null}">
                <div class="tall box" style="display:none;">
                    <div class="gallery- card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="tall box">
                    <div class="gallery-tall card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />
            <c:if test="${list[i].title eq null}">
                <div class="box" style="display:none;">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>

            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="box">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>

            <c:set var="i" value="${i+1}" />
            <c:if test="${list[i].title eq null}">
                <div class="widebox" style="display:none;">
                    <div class="gallery-wide card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="wide box">
                    <div class="gallery-wide card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />
            <c:if test="${list[i].title eq null}">
                <div class="box" style="display:none;">
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:if test="${list[i].title ne null}">
                <div class="box">
                    <!-- <img src="https://images.unsplash.com/photo-1587732608058-5ccfedd3ea63?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1350&amp;q=80" alt="" /> -->
                    <div class="gallery-defalt card-img-top overflow-hidden bg-cover" onmouseenter="zoomIn(event)"
                        onmouseleave="zoomOut(event)" 
						style="background-image: url(${path}/resources/uploaded/gallery/<c:out value="${list[i].renamedImage}" />);">
                    <div class="info card-img-overlay-bottom z-index-50">
                        <h4 class="text-white text-shadow-dark" style="float: left;">
                            <c:out value="${list[i].title}" />
                        </h4>
                        <!-- 로그인 안했을땐 암것도 안보임 / 글쓴이=로그인 or 관리자면 삭제버튼 / 그 외 신고버튼 -->
                        <c:if test="${loginMember != null}">
                            <c:choose>
                                <c:when
                                    test="${ !empty loginMember && (loginMember.userNo == list[i].uno || loginMember.managerStatus == 'Y') }">
                                    <a href="#" onclick="deleteGallery(${list[i].boardNo})" class=" text-white" style="float: right;"><i
                                            class="fa-regular fa-trash-can"></i></a>
                                </c:when>
                                <c:otherwise>
                                    <a href=" " data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white"
                                        style="float: right;"><i class="fa-solid fa-bullhorn fas "></i></a>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <p class="text-sm mb-0 text-shadow-dark" style="color:rgb(253, 159, 40); clear: both;"> •
                            TAG&nbsp;&nbsp;|&nbsp;&nbsp;
                            <MARQUEE behavior="scroll" height="17.7" class="text-white">
                                <c:out value="${list[i].galTag}" />
                            </MARQUEE>
                        </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                        <div></div>
                        <a name="clickHeart" class="card-fav-icon position-relative z-index-40" href="#;">
                            <svg class="svg-icon text-white">
                                <use xlink:href="#heart-1"> </use>
                            </svg></a>
                    </div>
                </div>
                </div>
            </c:if>
            <c:set var="i" value="${i+1}" />
            </div>
            </c:if>
            </c:forEach>
            <!-- 끝 -->

            <!-- 신고 모달 -->
            <div class="modal fade" id="exclaim" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="exclaimLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exclaimLabel">게시글 신고하기 <i
                                    class="fa-solid fa-bullhorn fas "></i></h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="${path}/manager/insertReport" method="post">
                                <div class="row">
                                    <div class="form-group">
                                        <label class="form-label" for="area-form">신고사유</label>
                                        <select class="selectpicker form-control bg-gray-200 " name="reason "
                                            id="area-form" data-style="btn-selectpicker " title="신고사유를 선택하세요.">
                                            <option value="insult">욕설 </option>
                                            <option value="fraud ">사기행위 </option>
                                            <option value="lie">사실관계과 다름 </option>
                                            <option value="rest">기타</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group pt-3">
                                    <label class="form-label" for="find_text">신고내용</label>
                                    <textarea class="find_text form-control bg-gray-200 " id="" name="find_text"
                                        cols="10" rows="4" placeholder="신고 내용을 40자 이내로 작성하세요."></textarea>
                                    <div class="text-mute test_cnt">(0 / 40)</div>
                                </div>
                                <div class="form-group pt-3 text-end">
                                    <input type="submit" class="btn btn-outline-dark" value="신고하기">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--신고 모달 끝-->

            <!-- Pagination -->
            <nav aria-label="Page navigation example ">
                <ul class="pagination pagination-template d-flex justify-content-center p-5">
                    <li class="page-item ">
                        <button class="page-link"
                            onclick="movePage('${path}/community/gallery?page=1');">&lt;&lt;</button>
                        <!--                   <a class="page-link" href="#"><span style="color: #000000;">&lt;&lt;</span></a> -->
                    </li>
                    <li class="page-item ">
                        <button class="page-link"
                            onclick="movePage('${path}/community/gallery?page=${pageInfo.prevPage}');">&lt;</button>
                    </li>
                    <!--                 <li class="page-item"> -->
                    <!--                 	<a class="page-link" style="background: #FD9F28" href="#"> -->
                    <!--                 		<span style="color: #000000;">1</span> -->
                    <!--                 	</a> -->
                    <!--               	</li> -->
                    <!--                 <li class="page-item"> -->
                    <!--                   <a class="page-link" href="#"> -->
                    <!--                 		<span style="color: #000000;">2</span> -->
                    <!--                 	</a> -->
                    <!--                 </li> -->

                    <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                        <c:if test="${pageInfo.currentPage == status.current}">
                            <li class="page-item">
                                <button class="page-link" disabled="disabled">
                                    <c:out value="${status.current}" />
                                </button>
                            </li>
                        </c:if>
                        <c:if test="${pageInfo.currentPage != status.current}">
                            <li class="page-item">
                                <button class="page-link"
                                    onclick="movePage('${path}/community/gallery?page=${status.current}');">
                                    <c:out value="${status.current}" />
                                </button>
                            </li>
                        </c:if>
                    </c:forEach>

                    <li class="page-item">
                        <button class="page-link"
                            onclick="movePage('${path}/community/gallery?page=${pageInfo.nextPage}');">&gt;</button>
                    </li>
                    <li class="page-item">
                        <button class="page-link"
                            onclick="movePage('${path}/community/gallery?page=${pageInfo.maxPage}');">&gt;&gt;</button>
                        <!--                   <a class="page-link" href="#"><span style="color: #000000;">&gt;&gt;</span></a> -->
                    </li>
                </ul>
            </nav>


            </div>
            </div>
            </div>
        </section>
    </section>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <!-- JavaScript files-->
    <script>
        // ------------------------------------------------------- //
        //  Inject SVG Sprite - 
        //  see more here 
        //  https://css-tricks.com/ajaxing-svg-sprite/
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
    <!-- Swiper Carousel            -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file  -->
    <script src="${path}/resources/js/theme.js"></script>
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

    <!-- 내꺼 js -->
    <%-- <script src="${path}/resources/js/addSearch.js">
        </script> --%>

        <!-- 사진 업로드 js -->
        <script>
            function DropFile(dropAreaId, fileListId) {
                let dropArea = document.getElementById(dropAreaId);
                let fileList = document.getElementById(fileListId);

                function preventDefaults(e) {
                    e.preventDefault();
                    e.stopPropagation();
                }

                function highlight(e) {
                    preventDefaults(e);
                    dropArea.classList.add("highlight");
                }

                function unhighlight(e) {
                    preventDefaults(e);
                    dropArea.classList.remove("highlight");
                }

                function handleDrop(e) {
                    unhighlight(e);
                    let dt = e.dataTransfer;
                    let files = dt.files;

                    handleFiles(files);

                    const fileList = document.getElementById(fileListId);
                    if (fileList) {
                        fileList.scrollTo({
                            top: fileList.scrollHeight
                        });
                    }
                }

                function handleFiles(files) {
                    files = [...files];
                    // files.forEach(uploadFile);
                    files.forEach(previewFile);
                }

                function previewFile(file) {
                    console.log(file);
                    renderFile(file);
                }

                function renderFile(file) {
                    let reader = new FileReader();
                    reader.readAsDataURL(file);
                    reader.onloadend = function () {
                        let img = dropArea.getElementsByClassName("preview")[0];
                        img.src = reader.result;
                        img.style.display = "block";
                    };
                }

                dropArea.addEventListener("dragenter", highlight, false);
                dropArea.addEventListener("dragover", highlight, false);
                dropArea.addEventListener("dragleave", unhighlight, false);
                dropArea.addEventListener("drop", handleDrop, false);

                return {
                    handleFiles
                };
            }

            const dropFile = new DropFile("drop-file", "files");
        </script>


        <script>
            var textPresetVal = new Choices('#searchValue', {
                removeItemButton: true,
            });
        </script>

        <script>
            function uploadConfirm() {
                alert('사진이 업로드 되었습니다.');
            }
        </script>

        <!-- 하트 클릭시 색변경 -->
        <script>
            for (var i = 0; i < 15; i++) { // 갤러리 박스가 12개라 임시로 12개 해둠,,
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

        <!-- 마우스오버 사진커지게 -->
        <script>
            function zoomIn(event) {
                event.target.style.transform = "scale(1.2)";
                event.target.style.zIndex = 50;
                event.target.style.transition = "all 0.5s";
            }

            function zoomOut(event) {
                event.target.style.transform = "scale(1)";
                event.target.style.zIndex = 0;
                event.target.style.transition = "all 0.5s";
            }
        </script>

        <script type="text/javascript">
            function movePage(pageUrl) {
                var searchValue = document.getElementById("searchValue"); // 갤럭시
                var searchTypes = document.getElementsByName("searchType"); // title
                var searchType = 'galtag';
                // 			var searchType = 'title';
                if (searchValue.value.length > 0) {
                    for (var i = 0; i < searchTypes.length; i++) {
                        if (searchTypes[i].checked == true) {
                            searchType = searchTypes[i].value;
                        }
                    }
                    pageUrl = pageUrl + '&searchType=' + searchType + '&searchValue=' + searchValue.value;
                }
                location.href = encodeURI(pageUrl);
            }


        </script>
        <script>
            $(document).ready(() => {
                $("#btnDelete").on("click", (e) => {
                    if (confirm("정말로 게시글을 삭제 하시겠습니까?")) {
                        location.replace("${path}/community/deleteGallery?boardNo=${gallery.boardNo}");
                    }
                });
            });

            function deleteGallery(boardNo) {
                if (confirm("정말로 게시글을 삭제 하시겠습니까?")) {
                    var url = "${path}/community/deleteGallery?boardNo=";
                    var requestURL = url + boardNo;
                    location.replace(requestURL);
                    // 			location.replace("${path}/community/deleteGallery?boardNo=${gallery.boardNo}");
                }
            }
        </script>
</body>

</html>