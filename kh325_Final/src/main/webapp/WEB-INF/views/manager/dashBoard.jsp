<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>TOGETHER_ADMIN</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="${path}/resources/manager/assets/images/favicon.ico">

    <!-- App css -->
    <link href="${path}/resources/manager/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="${path}/resources/manager/assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

</head>

<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
    <!-- Begin page -->
    <div class="wrapper">
        <!-- ========== Left Sidebar Start ========== -->
        <div class="leftside-menu">

            <!-- LOGO -->
            <a href="${path}/" class="logo text-center logo-light">
                <span class="logo-lg">
                        <img src="${path}/resources/manager/assets/images/custom/togetherLogoWhite.png" alt="" height="50">
                    </span>
                <span class="logo-sm">
                        <img src="${path}/resources/manager/assets/images/custom/togetherLogo_icon.png" alt="" height="16">
                    </span>
            </a>

            <!-- LOGO -->
            <a href="index.html" class="logo text-center logo-dark">
                <span class="logo-lg">
                        <img src="${path}/resources/manager/assets/images/logo-dark.png" alt="" height="16">
                    </span>
                <span class="logo-sm">
                        <img src="${path}/resources/manager/assets/images/logo_sm_dark.png" alt="" height="16">
                    </span>
            </a>

           <div class="h-100" id="leftside-menu-container" data-simplebar>

                <!--- 사이드바 시작 -->
                <ul class="side-nav">
                    <li class="side-nav-item">
                        <a href="${path}/" class="side-nav-link">
                            <i class=" uil-home-alt"></i>
                            <span> 홈페이지로 이동 </span>
                        </a>
                    </li>


                    <li class="side-nav-item">
                        <a href="${path}/manager/dashBoard" class="side-nav-link">
                            <i class="uil-dashboard"></i>
                            <span class="badge bg-success float-end">4</span>
                            <span> Dashboard </span>
                        </a>

                    </li>

                    <li class="side-nav-title side-nav-item" style="font-size: 15px;">회원관리</li>

                    <li class="side-nav-item">
                        <a href="${path}/manager/allUser" class="side-nav-link">
                            <i class=" uil-users-alt"></i>
                            <span> 회원목록 </span>
                        </a>
                    </li>
<!--                     <li class="side-nav-item"> -->
<%--                         <a href="${path}/manager/allCourse" class="side-nav-link"> --%>
<!--                             <i class="uil-check"></i> -->
<!--                             <span> 여행코스 승인 </span> -->
<!--                         </a> -->
<!--                     </li> -->
                    <li class="side-nav-title side-nav-item" style="font-size: 15px;">게시판 관리</li>
                    <li class="side-nav-item">
                        <a href="${path}/manager/allBoard" target="_blank" class="side-nav-link">
                            <i class="uil-list-ul"></i>
                            <span> 게시글 관리 </span>
                        </a>

                    </li>

                    <li class="side-nav-item">
                        <a href="${path}/manager/allReply" target="_blank" class="side-nav-link">
                            <i class="uil-comment-alt-message"></i>
                            <span> 댓글 관리 </span>
                        </a>
                    </li>

					<li class="side-nav-item">
                        <a data-bs-toggle="collapse" href="#sidebarLayouts" aria-expanded="false" aria-controls="sidebarLayouts" class="side-nav-link">
                            <i class="uil-balance-scale"></i>
                            <span> 신고된 게시글 </span>
                            <span class="menu-arrow"></span>
                        </a>
                        <div class="collapse" id="sidebarLayouts">
                            <ul class="side-nav-second-level">
                                <li>
                                    <a href="${path}/manager/allReport">전체 게시글</a>
                                </li>
                                <li>
                                    <a href="${path}/manager/checkReport">처리된 게시글</a>
                                </li>
                                <li>
                                    <a href="${path}/manager/unCheckReport">미처리된 게시글</a>
                                </li>
                            </ul>
                        </div>
                    </li>
            </div>
            <!-- Sidebar -left -->

        </div>
        <!-- 사이드바 끝 -->

        <div class="content-page">
            <div class="content">
                <!-- Topbar Start -->
                <div class="navbar-custom">
                    <ul class="list-unstyled topbar-menu float-end mb-0">
                        <li class="dropdown notification-list d-lg-none">
                            <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="dripicons-search noti-icon"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                                <form class="p-3">
                                    <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                </form>
                            </div>
                        </li>


                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="dripicons-bell noti-icon"></i>
                                <span class="noti-icon-badge"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg">

                                <!-- item-->
                                <div class="dropdown-item noti-title px-3">
                                    <h5 class="m-0">
                                        <span class="float-end">
                                            </span>오늘의 알림
                                    </h5>
                                </div>

                                <div class="px-3" style="max-height: 300px;" data-simplebar>

                                    <h5 class="text-muted font-13 fw-normal mt-0">Today</h5>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card unread-noti shadow-none mb-2">
                                        <div class="card-body">
                                            <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                            <div class="d-flex align-items-center">
                                                <div class="flex-shrink-0">
                                                    <div class="notify-icon bg-primary">
                                                        <i class="mdi mdi-comment-account-outline"></i>
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1 text-truncate ms-2">
                                                    <h5 class="noti-item-title fw-semibold font-14">방문자 수<small class="fw-normal text-muted ms-1">1 min ago</small></h5>
                                                    <small class="noti-item-subtitle text-muted">어제의 방문자 수는 356명입니다.</small>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
                                        <div class="card-body">
                                            <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                            <div class="d-flex align-items-center">
                                                <div class="flex-shrink-0">
                                                    <div class="notify-icon bg-info">
                                                        <i class="mdi mdi-account-plus"></i>
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1 text-truncate ms-2">
                                                    <h5 class="noti-item-title fw-semibold font-14">가입자 수<small class="fw-normal text-muted ms-1">1 hours ago</small></h5>
                                                    <small class="noti-item-subtitle text-muted">어제의 가입자 수는 15명입니다.</small>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                </div>
                            </div>
                        </li>

                        <li class="dropdown notification-list d-none d-sm-inline-block">
                            <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="dripicons-view-apps noti-icon"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0">

                                <div class="p-2">
                                    <div class="row g-0">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="https://slack.com/intl/ko-kr/">
                                                <img src="${path}/resources/manager/assets/images/brands/slack.png" alt="slack">
                                                <span>Slack</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="https://github.com/sunblock99/FINAL">
                                                <img src="${path}/resources/manager/assets/images/brands/github.png" alt="Github">
                                                <span>GitHub</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="https://dribbble.com/">
                                                <img src="${path}/resources/manager/assets/images/brands/dribbble.png" alt="dribbble">
                                                <span>Dribbble</span>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row g-0">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="https://bitbucket.org/">
                                                <img src="${path}/resources/manager/assets/images/brands/bitbucket.png" alt="bitbucket">
                                                <span>Bitbucket</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="https://www.dropbox.com">
                                                <img src="${path}/resources/manager/assets/images/brands/dropbox.png" alt="dropbox">
                                                <span>Dropbox</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="https://www.google.co.kr/">
                                                <img src="${path}/resources/manager/assets/images/brands/g-suite.png" alt="G Suite">
                                                <span>Google</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </li>

                        <li class="notification-list">
                            <a class="nav-link end-bar-toggle" href="javascript: void(0);">
                                <i class="dripicons-gear noti-icon"></i>
                            </a>
                        </li>

                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <span class="account-user-avatar"> 
                                        <img src="${path}/resources/manager/assets/images/custom/togetherLogo_icon.png" alt="user-image" class="rounded-circle">
                                    </span>
                                <span>
                                        <span class="account-user-name">${loginMember.userName}</span>
                                <span class="account-position">ADMIN</span>
                                </span>
                            </a>
                           <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">

                                <a href="${path}/myPage/profile" class="dropdown-item notify-item">
                                    <i class="mdi mdi-account-circle me-1"></i>
                                    <span>내 정보수정</span>
                                </a>

                                <a href="${path}/" class="dropdown-item notify-item">
                                    <i class="mdi mdi-lifebuoy me-1"></i>
                                    <span>홈페이지로 가기</span>
                                </a>

                                <a href="${path}/logout" class="dropdown-item notify-item">
                                    <i class="mdi mdi-logout me-1"></i>
                                    <span>로그아웃</span>
                                </a>
                            </div>
                        </li>

                    </ul>
                    <button class="button-menu-mobile open-left">
                            <i class="mdi mdi-menu"></i>
                        </button>
<!--                     <div class="app-search dropdown d-none d-lg-block"> -->
<!--                         <form> -->
<!--                             <div class="input-group"> -->
<!--                                 <input type="text" class="form-control dropdown-toggle" placeholder="Search..." id="top-search"> -->
<!--                                 <span class="mdi mdi-magnify search-icon"></span> -->
<!--                                 <button class="input-group-text btn-primary" type="submit">Search</button> -->
<!--                             </div> -->
<!--                         </form> -->

                       
<!--                     </div> -->
                </div>

                <!-- Start Content-->
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="${path}">TOGETHER</a></li>
                                        <li class="breadcrumb-item"><a href="${path}/manager/dashBoard">관리자페이지</a></li>
                                        <li class="breadcrumb-item active">대시보드</li>
                                    </ol>
                                </div>
                                <h4 class="page-title">대시보드</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <div class="col-12">
                            <div class="card widget-inline">
                                <div class="card-body p-0">
                                    <div class="row g-0">
                                        <div class="col-sm-6 col-lg-3">
                                            <div class="card shadow-none m-0">
                                                <div class="card-body text-center">
                                                    <i class="dripicons-briefcase text-muted" style="font-size: 24px;"></i>
                                                    <h3><span><c:out value="${countAllCourse}"/></span></h3>
                                                    <p class="text-muted font-15 mb-0">여행코스</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-lg-3">
                                            <div class="card shadow-none m-0 border-start">
                                                <div class="card-body text-center">
                                                    <i class="dripicons-checklist text-muted" style="font-size: 24px;"></i>
                                                    <h3><span><c:out value="${countAllComm}" /></span></h3>
                                                    <p class="text-muted font-15 mb-0">게시글 수</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-lg-3">
                                            <div class="card shadow-none m-0 border-start">
                                                <div class="card-body text-center">
                                                    <i class="dripicons-user-group text-muted" style="font-size: 24px;"></i>
                                                    <h3><span><c:out value="${countAllUser}"/></span></h3>
                                                    <p class="text-muted font-15 mb-0">회원 수</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-lg-3">
                                            <div class="card shadow-none m-0 border-start">
                                                <div class="card-body text-center">
                                                    <i class="dripicons-graph-line text-muted" style="font-size: 24px;"></i>
                                                    <h3><span>61651</span> <i class="mdi mdi-arrow-up text-success"></i></h3>
                                                    <p class="text-muted font-15 mb-0">방문자 수</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                            <!-- end card-box-->
                        </div>
                        <!-- end col-->
                    </div>
                    <!-- 메뉴바 끝-->


                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h4 class="header-title"><a href="${path}/manager/allBoard"><span style="color: #000000">커뮤니티</span></a></h4>
                                        <div class="dropdown">
                                        </div>
                                    </div>

                                    <div class="mt-3 mb-4 chartjs-chart" style="height: 207px;">
                                        <canvas id="project-status-chart" data-colors="#0acf97,#727cf5,#fa5c7c"></canvas>
                                    </div>

                                    <div class="row text-center mt-2 py-2">
                                        <div class="col-sm-4">
                                            <div class="my-2 my-sm-0">
                                                <i class="mdi mdi-trending-up text-success mt-3 h3"></i>
                                                <h3 class="fw-normal">
                                                    <span>54%</span>
                                                </h3>
                                                <p class="text-muted mb-0">일반</p>
                                            </div>

                                        </div>
                                        <div class="col-sm-4">
                                            <div class="my-2 my-sm-0">
                                                <i class="mdi mdi-trending-down text-primary mt-3 h3"></i>
                                                <h3 class="fw-normal">
                                                    <span>26%</span>
                                                </h3>
                                                <p class="text-muted mb-0">미처리</p>
                                            </div>

                                        </div>
                                        <div class="col-sm-4">
                                            <div class="my-2 my-sm-0">
                                                <i class="mdi mdi-trending-down text-danger mt-3 h3"></i>
                                                <h3 class="fw-normal">
                                                    <span>10%</span>
                                                </h3>
                                                <p class="text-muted mb-0">블라인드</p>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- end row-->

                                </div>
                                <!-- end card body-->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col-->

                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                        <h4 class="header-title"><a href="${path}/manager/allReport"><span style="color: #000000">신고게시판</span></a></h4>
                                    </div>
                                    <br>
                                    <!-- <p><b>107</b> Tasks completed out of 195</p> -->

                                    <div class="table-responsive">
                                        <table class="table table-centered table-nowrap table-hover mb-0">
                                            <tbody>
                                            <c:forEach items="${reportList}" var="Manager" end="3">
                                                <tr>
                                                    <td>
                                                        <h5 class="font-14 my-1"><a href="javascript:void(0);" class="text-body"><c:out value="${Manager.boardName}"/></a></h5>
                                                    </td>
                                                    <td>
                                                        <span class="text-muted font-13">Status</span> <br/>
                                                        <c:if test="${Manager.status eq 'Y'}">
                                                        <span class="badge badge-success-lighten">비블라인드</span>
                                                        </c:if>
                                                        <c:if test="${Manager.status eq 'N'}">
                                                        <span class="badge badge-danger-lighten">블라인드</span>
                                                        </c:if>
                                                    </td>
                                                    <td>
                                                        <span class="text-muted font-13">작성자</span>
                                                        <h5 class="font-14 mt-1 fw-normal"><c:out value="${Manager.userName}" /></h5>
                                                    </td>
                                                    <td>
                                                        <span class="text-muted font-13">게시판</span>
                                                        <h5 class="font-14 mt-1 fw-normal">
                                                    <c:if test="${Manager.boardType eq 'GAL'}">
                                                        <a href="javascript:void(0);" class="text-body fw-semibold">갤러리</a>
													</c:if>
													<c:if test="${Manager.boardType eq 'JB'}">
                                                        <a href="javascript:void(0);" class="text-body fw-semibold">블로그</a>
													</c:if>
													<c:if test="${Manager.boardType eq 'CB'}">
                                                        <a href="javascript:void(0);" class="text-body fw-semibold">동행구하기</a>
													</c:if>
													<c:if test="${Manager.boardType eq 'FB'}">
                                                        <a href="javascript:void(0);" class="text-body fw-semibold">자유게시판</a>
													</c:if></h5>
                                                    </td>
                                                    <td class="table-action" style="width: 90px;">
                                                        <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                        <a href="${path}/manager/updateReport?reportNo=${Manager.reportNo}&boardNo=${Manager.boardNo}&boardType=${Manager.boardType}" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                    </td>
                                                </tr>
                                             </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                        <h4 class="header-title">일일 게시글 수</h4>
                                        <div class="dropdown">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Weekly Report</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Monthly Report</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Settings</a>
                                            </div>
                                        </div>
                                    </div>

                                    <div dir="ltr">
                                        <div class="mt-3 chartjs-chart" style="height: 320px;">
                                            <canvas id="task-area-chart" data-bgColor="#727cf5" data-borderColor="#727cf5"></canvas>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer Start -->
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <script>
                                document.write(new Date().getFullYear())
                            </script> © Hyper - Coderthemes.com
                        </div>
                        <div class="col-md-6">
                            <div class="text-md-end footer-links d-none d-md-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </div>



    </div>


    <!-- Right Sidebar -->
    <div class="end-bar">

        <div class="rightbar-title">
            <a href="javascript:void(0);" class="end-bar-toggle float-end">
                <i class="dripicons-cross noti-icon"></i>
            </a>
            <h5 class="m-0">테마 설정</h5>
        </div>

        <div class="rightbar-content h-100" data-simplebar>

            <div class="p-3">

                <!-- Settings -->
                <h5 class="mt-3">테마 색상</h5>
                <hr class="mt-1" />

                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check" checked>
                    <label class="form-check-label" for="light-mode-check">밝은 버전</label>
                </div>

                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check">
                    <label class="form-check-label" for="dark-mode-check">어두운 버전</label>
                </div>


                <!-- Width -->
                <h5 class="mt-4">넓이</h5>
                <hr class="mt-1" />
                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked>
                    <label class="form-check-label" for="fluid-check">Fluid</label>
                </div>

                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check">
                    <label class="form-check-label" for="boxed-check">Boxed</label>
                </div>


                <!-- Left Sidebar-->
                <h5 class="mt-4">메뉴바 설정</h5>
                <hr class="mt-1" />
                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="theme" value="default" id="default-check">
                    <label class="form-check-label" for="default-check">기본값</label>
                </div>

                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check" checked>
                    <label class="form-check-label" for="light-check">밝은버전</label>
                </div>

                <div class="form-check form-switch mb-3">
                    <input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check">
                    <label class="form-check-label" for="dark-check">어두운버전</label>
                </div>

                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check" checked>
                    <label class="form-check-label" for="fixed-check">Fixed</label>
                </div>

                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="condensed" id="condensed-check">
                    <label class="form-check-label" for="condensed-check">Condensed</label>
                </div>

                <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="scrollable" id="scrollable-check">
                    <label class="form-check-label" for="scrollable-check">Scrollable</label>
                </div>
                
            </div>
            <!-- end padding-->

        </div>
    </div>

    <div class="rightbar-overlay"></div>
    <!-- /End-bar -->

    <!-- bundle -->
    <script src="${path}/resources/manager/assets/js/vendor.min.js"></script>
    <script src="${path}/resources/manager/assets/js/app.min.js"></script>

    <!-- third party js -->
    <script src="${path}/resources/manager/assets/js/vendor/chart.min.js"></script>
    <!-- third party js ends -->

    <!-- demo app -->
    <script src="${path}/resources/manager/assets/js/pages/demo.dashboard-projects.js"></script>
    <!-- end demo js-->

</body>

</html>