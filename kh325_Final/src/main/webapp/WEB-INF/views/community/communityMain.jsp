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
    <title>Directory Theme by Bootstrapious</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/customPHY.css">
    <link rel="stylesheet" href="css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/customPHY.css">
    <style>
        @font-face {
            font-family: 'pBlack';
            font-weight: 900;
            font-display: swap;
            src: url(font/Pretendard-Black.ttf);
        }
        
        .text-pBlack {
            font-family: 'pBlack';
        }
        
        @font-face {
            font-family: 'pEb';
            font-weight: 800;
            font-display: swap;
            src: url(font/Pretendard-ExtraBold.ttf);
        }
        
        .text-pEb {
            font-family: 'pEb';
        }
        
        @font-face {
            font-family: 'pB';
            font-weight: 700;
            font-display: swap;
            src: url(font/Pretendard-Bold.ttf);
        }
        
        .text-pB {
            font-family: 'pB';
        }
        
        @font-face {
            font-family: 'pSb';
            font-weight: 600;
            font-display: swap;
            src: url(font/Pretendard-SemiBold.ttf);
        }
        
        .text-pSb {
            font-family: 'pSb';
        }
        
        @font-face {
            font-family: 'pM';
            font-weight: 500;
            font-display: swap;
            src: url(font/Pretendard-Medium.ttf);
        }
        
        .text-pM {
            font-family: 'pM';
        }
        
        @font-face {
            font-family: 'pR';
            font-weight: 400;
            font-display: swap;
            letter-spacing: 1px;
            src: url(font/Pretendard-Regular.ttf);
        }
        
        .text-pR {
            font-family: 'pR';
        }
        
        @font-face {
            font-family: 'pL';
            font-weight: 300;
            font-display: swap;
            src: url(font/Pretendard-Light.ttf);
        }
        
        .text-pL {
            font-family: 'pL';
        }
        
        @font-face {
            font-family: 'pEl';
            font-weight: 200;
            font-display: swap;
            src: url(font/Pretendard-ExtraLight.ttf);
        }
        
        .text-pEl {
            font-family: 'pEl';
        }
        
        @font-face {
            font-family: 'pThin';
            font-weight: 100;
            font-display: swap;
            src: url(font/Pretendard-Thin.ttf);
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
</head>

<body>
    <header class="header header-absolute" style="font-size:30px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="./image/togetherLogo.png" width="30%" height="10%">
                    </a>
                    <!-- 로고 끝-->

                    <!-- 공간활용 용도-->
                    <div class="input-label-absolute input-label-absolute-left
                input-expand ms-lg-2 ms-xl-3"></div>
                </div>

                <!-- =============== 메뉴바 영역 =============== -->
                <div class="collapse navbar-collapse px-6 " id="navbarCollapse" style="font-family: pL;">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link-header-black" id="homeDropdownMenuLink" href="index.html" aria-haspopup="true" aria-expanded="false">홈</a>
                        </li>

                        <!-- 상단바메뉴 시작 -->
                        <li class="nav-item position-static">
                            <li class="nav-item dropdown">
                                <a class="nav-link-header-black dropdown-toggle me-3" id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      관광정보</a>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink" style="font-family: pB;">
                                    <h6 class="dropdown-header fw-normal" style="font-family:
                        pB;">관광정보</h6>
                                    <a class="hvr dropdown-item" href="docs/docs-introduction.html">HOT PLACE </a>
                                    <a class="hvr dropdown-item" href="docs/docs-directory-structure.html">관광지 정보</a>
                                    <a class="hvr dropdown-item" href="docs/docs-gulp.html">지역별
                        축제ㅣ행사 </a>
                                    <a class="hvr dropdown-item" href="docs/docs-customizing-css.html">날짜별 축제ㅣ행사</a>
                                </div>
                            </li>
                        </li>

                        <li class="nav-item"><a class="nav-link-header-black" href="contact.html">커뮤니티</a></li>
                        <li class="nav-item">
                            <a class="nav-link-header-black" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a></li>

                        <!-- <li class="nav-item"><a class="nav-link-header-black" href="login.html">로그인</a></li> -->

                        <!-- 일반회원 로그인 성공 시 -->
                        <!-- <li class="nav-item dropdown"><a class="nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink"
                  href="login.html"data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  곰발바닥 님</a>
                  <div class="dropdown-menu dropdown-menu-end"
                      aria-labelledby="docsDropdownMenuLink"  style="font-family: pB;">
                      <a class="hvr dropdown-item"
                        href="docs/docs-introduction.html">마이페이지</a>
                      <a class="hvr dropdown-item"
                        href="docs/docs-directory-structure.html">로그아웃</a>
                  </div>
                </li> -->

                        <!-- 관리자 로그인 성공 시 -->
                        <li class="nav-item dropdown"><a class="nav-link-header-black dropdown-toggle" id="docsDropdownMenuLink" href="login.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  곰발바닥 님</a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink" style="font-family: pB;">
                                <a class="hvr dropdown-item" href="docs/docs-introduction.html">마이페이지</a>
                                <a class="hvr dropdown-item" href="docs/docs-introduction.html">관리자페이지</a>
                                <a class="hvr dropdown-item" href="docs/docs-directory-structure.html">로그아웃</a>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- 상단바메뉴 끝 -->
        <!-- =============== 메뉴바 영역 끝 =============== -->
    </header>
    <!-- 헤더 히어로 시작-->
    <section class="hero py-5 py-lg-6 " style="background-image: url(./image/tc_land.png); size: inherit;">

        <div class="container position-relative  w-50">
            <!-- Breadcrumbs -->
            <ol class="breadcrumb ps-0  justify-content-center">
                <li class="breadcrumb-item text-pB"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active text-pB">Community </li>
            </ol>
            <h1 class="hero-heading display-4 fw-bold text-pEb" style="color:seagreen;">Community</h1>
            <div class="row ">
                <div class="col-xl-8 mx-auto ">
                    <form>
                        <p class="text-muted mb-4 text-pB">어느 날 아침눈을 뜨고 귀를 기울여 들어보니 어디선가 멀리서 북소리가 들려왔다. 아득히 먼 곳에서, 아득히 먼 시간속에서 그 북소리는 울려왔다.</p>
                        <div class="input-group text-center"><input class="form-control bg-gray-100 text-pL" type="text" placeholder="나는 왠지 긴 여행을 떠나야만 할 것 같은 생각이 들었다."><button class="btn badge-dark-light" type="submit"><i class="fa fa-search"></i></button></div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- 헤더 히어로 끝-->
    <!-- 베스트 포스트 시작-->
    <section>
        <div class="container text-pB">
            <div class="row py-5 pt-lg-0 mt-lg-n5">
                <div class="col-lg-4 mb-1 mb-lg-0 text-center">
                    <div class="card border-0 shadow-sm hover-animate h-100">
                        <div class="card-body p-4">
                            <div class="mb-3">
                                <img src="./image/dbq_ye(40x2).png" alt="">
                            </div>
                            <h3 class="h5 text-pB">가을 남도 맛집 기행</h3>
                            <p class="text-muted text-sm mb-0 word text-pB">음식의 고장, 미식의 메카 남도를 다녀왔다. 위가 100개였으면 좋겠다는 생각을 여행 내내 했다. 남도는 지금 생선이 철이다.</p>
                            <a class="stretched-link" href="#"> <span class="sr-only">See Topic</span></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-1 mb-lg-0 text-center">
                    <div class="card border-0 shadow-sm hover-animate h-100">
                        <div class="card-body p-4">
                            <div class="mb-3">
                                <img src="./image/dbq_ye(40x2).png" alt="">
                            </div>
                            <h3 class="h5 text-pB">제주도 여행은 늘- 옳다 </h3>
                            <p class="text-muted text-sm mb-0 word text-pB">이제 제주는 언제 가도 좋은 대한민국 대표 관광지가 되었다. 온갖 먹거리와 즐길거리가 넘쳐나는 천국의 섬이다. 그래서 나는 제주가 좋다. 바람과 흑돼지와 땅콩 아이스크림이 반기는 </p>
                            <a class="stretched-link" href="#"> <span class="sr-only">See Topic</span></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-1 mb-lg-0 text-center">
                    <div class="card border-0 shadow-sm hover-animate h-100">
                        <div class="card-body p-4">
                            <div class="mb-3">
                                <img src="./image/dbq_ye(40x2).png" alt="">
                            </div>
                            <h3 class="h5 text-pB">궁궐 투어 다녀왔어요.</h3>
                            <p class="text-muted text-sm mb-0 word text-pB">항상 출퇴근 길에서만 봤던 궁 내부는 환상적이었습니다.주말이라 가이드 신청이 가능해서 전문적인 설명도 들을 수 있었던 아주아주 값졌던 시간들 </p>
                            <a class="stretched-link" href="#"> <span class="sr-only">See Topic</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 베스트 포스트 끝-->

    <section class="">
        <div class="container">
            <div class="row mb-3">
                <div class="col-md-8">
                    <p class="subtitle text-secondary text-pB">우리들의 소통 공간 </p>
                    <h2 class="h2 text-pB">Community organizer</h2>
                </div>
                <div class="col-md-4 d-lg-flex align-items-center justify-content-end"></div>
            </div>
            <!--자유게시판 시작-->
            <div class="row">
                <div class="col-lg-6 mb-2">
                    <div class="h3 text-dark d-flex mb-4">
                        <div class="col-6">
                            <a class="text-reset text-pB" href="#"><span class="py-1 me-1 text-pB"><img src="./image/comm2.png" alt=""></span>자유게시판</a>
                        </div>
                        <div class="col-6 text-end pe-3">
                            <!--  <a href="#" class=" text-muted text-sm">더보기</a> -->
                        </div>
                    </div>
                    <ul class="list-unstyled p-1 text-pB" style="font-size: 17px;">
                        <li class="mb-1 ">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2 mr-2"></i>보령 머드 축제 가실 분 참고하세요
                            </a>
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black " href="#">
                                <i class="far fa-file me-2 mr-2"></i>10/01날 전주에 진짜 비올까요? 구라청 못믿겠어요.
                            </a>
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2 mr-2"></i>외국인 친구 데리고 한옥 체험 가려고 하는데, 스테이 추천해주실분 계신가요?
                            </a>
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2 mr-2"></i>맥모닝 신상 강추!! 행복의 나라로 갈테야~~
                            </a>
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2 mr-2"></i>역사문화재단에서 주관하는 독도 일주 프로그램 참가하고 싶은데 빡셀까요?
                            </a>
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2"></i>부산 놀러온 서울쥐입니다. 밀면 맛집 추천해주세요!!^^
                            </a>
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2"></i>내일 다시 출근할 생각하니까 우울하네요... 다시 제주도로 돌아가고 싶어요
                            </a>
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2"></i>추워지니까 생각나는 .. 음식들 말해봅시다
                        </li>
                        <li class="mb-1">
                            <a class="text-decoration-none text-black" href="#">
                                <i class="far fa-file me-2"></i>스키장 가고 싶네요. 작년에 너무 재밌게 즐겼던 기억이..
                            </a>
                        </li>
                    </ul>
                </div>
                <!--자유게시판 끝-->
                <!--갤러리 시작-->
                <div class="col-lg-6 mb-2 text-pB">
                    <h2 class="h3 text-dark d-flex align-items-center mb-4 pb-1">
                        <a class="text-reset text-pB" href="#"><span class="py-1 me-1 text-pB"><img src="./image/comm3.png" alt=""></span>사진전</a>
                    </h2>
                    <div class="row gallery ms-n1 me-n1 ">
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="http://tong.visitkorea.or.kr/cms2/website/63/2857963.jpg"><img class="img-fluid" src="http://tong.visitkorea.or.kr/cms2/website/63/2857963.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="http://tong.visitkorea.or.kr/cms2/website/37/2856637.jpg"><img class="img-fluid" src="http://tong.visitkorea.or.kr/cms2/website/37/2856637.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="http://tong.visitkorea.or.kr/cms2/website/54/2839254.jpg"><img class="img-fluid" src="http://tong.visitkorea.or.kr/cms2/website/54/2839254.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="http://tong.visitkorea.or.kr/cms2/website/05/2834205.jpg"><img class="img-fluid" src="http://tong.visitkorea.or.kr/cms2/website/05/2834205.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="http://tong.visitkorea.or.kr/cms2/website/97/2826997.jpg"><img class="img-fluid" src="http://tong.visitkorea.or.kr/cms2/website/97/2826997.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="http://tong.visitkorea.or.kr/cms2/website/99/2816599.jpg"><img class="img-fluid" src="http://tong.visitkorea.or.kr/cms2/website/99/2816599.jpg" alt="..."></a>
                        </div>
                    </div>
                </div>
                <!--갤러리 끝-->
            </div>
        </div>
    </section>
    <!--커뮤니티 룰 시작 -->
    <section class="py-6 bg-gray-100">
        <div class="container">
            <div class="text-center pb-lg-2">
                <h2 class="mb-5 text-pB" style="color: #907B65;">Follow the rules of Community </h2>
            </div>
            <div class="row">
                <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                    <div class="px-0 px-lg-3">
                        <div class="mb-3">
                            <img src="./image/r_1.png" alt="">
                        </div>
                        <h5 class="h5 text-pB">욕설을 삼가주세요.</h5>
                    </div>
                </div>
                <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                    <div class="px-0 px-lg-3">
                        <div class="mb-3 ">
                            <img src="./image/r_2.png " alt=" ">
                        </div>
                        <h5 class="h5 text-pB">상업행위는 금지합니다.</h5>
                    </div>
                </div>
                <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                    <div class="px-0 px-lg-3 ">
                        <div class="mb-3 ">
                            <img src="./image/r_3.png " alt=" ">
                        </div>
                        <h5 class="h5 fw-bold text-pB">타인을 비방하지 마세요.</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--커뮤니티 룰 끝 -->
    <section class="py-5 ">
        <div class="container ">
            <div class="row ">
                <!--동행 시작 -->
                <div class="col-lg-5 mb-2 ">
                    <h2 class="h3 text-dark d-flex align-items-center mb-4 ">
                        <a class="text-reset " href="# "><span class="py-1 me-1 text-pB"><img src="./image/comm1.png " alt=" "></span>함께가요</a>
                    </h2>
                    <div class="row ">
                        <div class="col-5 hover-animate" style="background-image: url(./image/postit_1\(250x2\).png); width: 250px; height: 250px; ">
                            <div class="pt-5 ps-4 pe-4 ">
                                <a class="text-black text-decoration-none" href="# ">
                                    <p class="text-center blockquote-footer pt-3 text-pB">2022.10.20~2022.10.23</p>
                                    <p class="text-pB">「대전 성심당 빵투어에 참가하실 먹보를 모십니다. 현재 파티원 3인입니다.」</p>
                                    <p class="text-end text-muted text-pB">written by 곰돌이</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-5 hover-animate" style="background-image: url(./image/postit_1\(250x2\).png); width: 250px; height: 250px; ">
                            <div class="pt-5 ps-4 pe-4 ">
                                <a class="text-black text-decoration-none" href="# ">
                                    <p class="text-center blockquote-footer pt-3 text-pB">2022.10.20~2022.10.23</p>
                                    <p class="text-pB">「제천 꽃축제 버스 대절 인원 모집중 서울 출발 현재 3인 있음」</p>
                                    <p class="text-end text-muted text-pB">written by 곰돌이</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row ">
                        <div class="col-5 hover-animate" style="background-image: url(./image/postit_1\(250x2\).png); width: 250px; height: 250px; ">
                            <div class="pt-5 ps-4 pe-4 ">
                                <a class="text-black text-decoration-none" href="# ">
                                    <p class="text-center blockquote-footer pt-3 text-pB">2022.10.20~2022.10.23</p>
                                    <p class="text-pB">「곰돌이 푸우 전시전 티켓 단체 할인 이용해서 가실분 계실까요」</p>
                                    <p class="text-end text-muted text-pB">written by 곰돌이</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-5 hover-animate" style="background-image: url(./image/postit_1\(250x2\).png); width: 250px; height: 250px; ">
                            <div class="pt-5 ps-4 pe-4 ">
                                <a class="text-black text-decoration-none" href="# ">
                                    <p class="text-center blockquote-footer pt-3 text-pB">2022.10.20~2022.10.23</p>
                                    <p class="text-pB">「경복궁 야간개장 한복 페스티발 가서 서로 사진 찍어줄..서로찍사」</p>
                                    <p class="text-end text-muted text-pB">written by 장금이</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--동행 끝 -->
                <!-- 블로그 시작 -->
                <div class="col-lg-7 mb-2 ps-5 ">
                    <h2 class="h3 text-dark d-flex align-items-center mb-5 ">
                        <a class="text-reset " href="# "><span class="py-1 me-1 text-pB"><img src="./image/quote.png " alt=" "></span>블로그</a>
                    </h2>
                    <div class="card mb-3 shadow">
                        <div class="card-header text-white h4 text-pB" style="background-image: url(https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MjBfMTA1%2FMDAxNjU1NzE2MDgyMTA4.zTxjO_0QFdU1kF9z9D3pBfxhF-_2HHKbb--mcY69IWcg.crZJGSGnNXCphHKsU3Cq6q5zHGYeYNJpV4V8VY_gIEsg.JPEG.li3205%2F%25C0%25AF%25C3%25A4%25B2%25C91.jpg&type=sc960_832);height:
                            90px; ">
                            제주도 한달살기, 현실은 생각과는 달랐다.
                            <a href="# " class="btn btn-light float-end text-pB">GO</a>
                        </div>
                        <div class="card-body " style="height: 120px; ">
                            <p class="card-text text-pEl" style="font-size:18px ">제주도 한달살기에 대한 로망으로 가득 찼었던 지난날 나...과감하게 제주 한달 살기에 도전! 그 소감은 이거다."왜 진작 행동으로 옮기지 않았을까?! " 하는 후회가 밀려올정도로 만족! 힐링! 행복 그 자체였다.</p>

                        </div>
                    </div>
                    <div class="card mb-3 shadow">
                        <div class="card-header text-white h4 text-pB" style="background-image: url(http://tong.visitkorea.or.kr/cms2/website/96/2824796.jpg);height: 90px; ">
                            한국의 맛, 매움의 미학
                            <a href="# " class="btn btn-light float-end text-pB">GO</a>
                        </div>
                        <div class="card-body " style="height: 120px; ">
                            <p class="card-text text-pEl" style="font-size:18px ">어린시절 나는 김치도 물에 씻어 먹는 소위 맵찔이었다. 온 가족이 미국으로 이민을 갔다. 기름지고 느끼한 서양 음식에 진저리를 치던 가족들과는 다르게 나는 미국의 식문화에 쉽게 적응했다. 어느날 문득 한국의 매움에 눈을 뜬 계기는.....</p>
                        </div>
                    </div>
                </div>
                <!-- 블로그 끝 -->

            </div>
    </section>

    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-5 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <img src="./image/togetherLogo.png" height="60" width="140" alt="">
                        <div class="text-black mb-4 ps-3 ms-sm-4" style="font-family:pM;">TOGETHER, to GET THERE</div>
                        <div class="mt-4 pt-2 ps-3 ms-sm-4">
                            <span class="text-muted text-sm">김나임ㅣ김태은ㅣ박혜연ㅣ선형채ㅣ윤하영ㅣ정수아ㅣ정원일</span>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-5 mb-lg-0 pt-4 ms-4">
                        <h6 class="text-dark mb-2">CONTACT
                            <ul class="list-unstyled">
                                <li class="mt-sm-2" style="font-family:pEl; letter-spacing:0px;">
                                    <a class="text-muted" href="category-rooms.html">1544-9970</a>
                                </li>
                            </ul>
                        </h6>

                        <h6 class="text-dark mb-2">ADDRESS
                            <ul class="list-unstyled">
                                <li class="mt-sm-2" style="font-family:pEl; letter-spacing:0px;">
                                    <a class="text-muted" href="category-rooms.html">서울특별시 강남구 테헤란로14길 6 남도빌딩<br><br></a>
                                </li>
                            </ul>
                        </h6>
                    </div>

                    <div class="col-lg-3 pt-4" style="font-family:pB;">
                        <h6 class="fs-5 text-dark mb-2">정기구독 & 뉴스레터</h6>
                        <p class="mb-3"> 투게더의 소식을 정기적으로 받아보세요</p>
                        <form action="#" id="newsletter-form">
                            <div class="input-group mb-3">
                                <input class="form-control bg-transparent border-dark
                      border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                                <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright section of the footer-->
        <div class="py-4 fw-light bg-gray-800 text-gray-300">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center text-md-start">
                        <p class="text-sm mb-md-0">&copy; 2022, TOGETHER. All rights reserved.
                        </p>
                    </div>
                    <div class="col-md-6">
                        <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                            <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="..."></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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
    <script src="vendor/jquery/jquery.min.js "></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js "></script>
    <!-- Smooth scroll-->
    <script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script>
    <!-- Bootstrap Select-->
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js "></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="vendor/object-fit-images/ofi.min.js "></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="js/theme.js "></script>
</body>

</html>