<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>관광지 통합검색 페이지 - 3*3 - final</title>
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
    <!-- <link rel="stylesheet" href="css/custom.css"> -->
    <link rel="stylesheet" href="css/tour_InfoSearch.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>

<style>
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(font/Pretendard-Black.ttf);
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url(font/Pretendard-ExtraBold.ttf);
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(font/Pretendard-Bold.ttf);
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(font/Pretendard-SemiBold.ttf);
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(font/Pretendard-Medium.ttf);
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        letter-spacing: 1px;
        src: url(font/Pretendard-Regular.ttf);
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(font/Pretendard-Light.ttf);
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(font/Pretendard-ExtraLight.ttf);
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(font/Pretendard-Thin.ttf);
    }
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
</style>

<body style="padding-top: 90px;">
    <!-- =================== 블랙 헤더 html =================== -->
    <header class="header header-absolute" style="font-size:30px;">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="d-flex align-items-center">

                    <!-- 로고 시작 -->
                    <a class="navbar-brand py-3 px-5" href="index.html" style="line-height:0;">
                        <img class="ps-3" src="https://cdn.discordapp.com/attachments/1013740193389486172/1022387710645764186/001.png" width="30%" height="10%">
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
                            <a class="nav-link-header-black" href="index.html" aria-haspopup="true" aria-expanded="false">여행코스</a>
                        </li>

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





















    <!-- 상단 컨테이너 시작 -->
    <div class="swiper-container d-flex align-items-center dark-overlay" style="height:500px">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper">
            <div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url(https://images.unsplash.com/photo-1615003162333-d3ff3ce1f0f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1560&q=80);">
                <div class="container">
                    <div class="d-flex h-100 text-white overlay-content align-items-center" style="margin-top:6%">
                        <div class="w-100">
                            <div class="row ">
                                <div class="col-lg-12 text-center" style="padding-top: 3rem !important;">
                                    <p class="subtitle text-white letter-spacing-4 mb-2 font-weight-light" style="font-size: 2rem !important;">Where do you want to go</p>
                                    <h2 class="fw-bold letter-spacing-1" style="line-height: 1; font-size: 7rem;
                                    font-weight: 400;
                                    line-height: 1.3; color: #FFCD4A;">TOURIST</h2>
                                    <p class="letter-spacing-1" style="font-size: 1.4rem; justify-content: space-evenly;">투게더에서 가고싶은 관광지를 검색하세요
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상단 컨테이너 끝-->

    <form action="#" method="GET">
        <!-- 검색바 시작 -->
        <div style="margin-left: 600px;  flex: 0 0 auto; margin-top: -25px;
    width: 56%;">
            <div class="search-bar rounded p-2 position-relative z-index-20" style="background-color:white; height:70px !important;">
                <div class="row">
                    <!-- input 박스 -->
                    <div class="col-lg-9 d-flex form-group" style="height: 60px !important;">
                        <input class="shadow-0 searchbar_font ps-4 fw-bold align-items-center " type="searchValue" name="searchValue" placeholder="검색하고 싶은 관광지를 입력하세요">
                    </div>
                    <!-- 서치 버튼 -->
                    <div class="col-lg-3 form-group d-grid " style="height: 70px !important; ">
                        <button class="btn btn-warning h-75 align-content-center " style="background-color: #FFCD4A; border-color: #FFCD4A; font-family: 'pB' !important;" type="submit ">Search</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 검색바 끝 -->

        <section class="mb-5 ">
            <!-- 체크박스 시작 -->
            <div class="container-fluid py-5 " style="padding-right: 15rem !important; padding-left: 15rem !important; justify-content: space-around; ">
                <div class="row ">
                    <div class="col-lg-3 pt-4 ">
                        <div class="pe-xl-3 ">
                            <!-- 날짜 체크박스 -->
                            <div class="mb-4">
                                <h1 class="form-label" for="form_dates">Dates</h1>
                                <div class="datepicker-container datepicker-container-left">
                                    <input class="form-control" type="text" name="bookingDate" id="form_dates" style="font-family: 'pB'!important;" placeholder="Choose your dates">
                                </div>
                            </div>

                            <!-- LOCATION 체크박스 -->
                            <div class="mb-4 " style="font-family: 'pB'!important; ">
                                <h6 class="form-label" style="font-size: 0.95rem !important;" for="form_neighbourhood ">
                                    LOCATION</h6>
                                <select class="selectpicker form-control " style="font-family: 'pB'!important; " name="neighbourhood " id="form_neighbourhood " multiple data-style="btn-selectpicker " data-live-search="true " data-selected-text-format="count>3" data-none-selected-text="">
                                    <option value="neighbourhood_0">전국 </option>
                                    <option value="neighbourhood_1">서울 </option>
                                    <option value="neighbourhood_2">인천 </option>
                                    <option value="neighbourhood_3">대구 </option>
                                    <option value="neighbourhood_4">광주 </option>
                                    <option value="neighbourhood_5">부산 </option>
                                    <option value="neighbourhood_6">울산 </option>
                                    <option value="neighbourhood_7">세종특별자치시 </option>
                                    <option value="neighbourhood_8">경기도 </option>
                                    <option value="neighbourhood_9">강원도 </option>
                                    <option value="neighbourhood_10">충청북도 </option>
                                    <option value="neighbourhood_11">충청남도 </option>
                                    <option value="neighbourhood_12">경상북도 </option>
                                    <option value="neighbourhood_13">경상남도 </option>
                                    <option value="neighbourhood_14">전라북도 </option>
                                    <option value="neighbourhood_15">전라남도 </option>
                                    <option value="neighbourhood_16">제주도 </option>
                                </select>
                            </div>

                            <!-- TOUR TYPE 체크박스 -->
                            <div class="mb-4">
                                <h6 class="form-label" style="font-size: 0.95rem !important;" for="form_category">TOUR TYPE
                                </h6>
                                <select class="selectpicker form-control" name="tourType" id="tourType" multiple data-style="btn-selectpicker" data-selected-text-format="count>3" data-none-selected-text="">
                                    <option value="12">관광지 </option>
                                    <option value="14">문화시설 </option>
                                    <option value="15">축제공연행사 </option>
                                    <option value="25">여행코스 </option>
                                    <option value="28">레포츠 </option>
                                    <option value="32">숙박 </option>
                                    <option value="38">쇼핑 </option>
                                    <option value="39">음식점 </option>
                                </select>
                            </div>

                            <!-- SERVICE TYPE 체크박스 -->
                            <div class="mb-4">
                                <h6 class="form-label" style="font-size: 0.95rem !important;">SERVICE TYPE - 대분류</h6>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="type_0" name="cat2">
                                            <label class="form-check-label fs-5" for="type_0">자연</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <!-- 중분류 시작 -->
                            <div class="pb-4">
                                <div class="collapse" id="moreFilters">
                                    <div class="filter-block">
                                        <div class="mb-0">
                                            <h6 class="form-label" style="font-size: 0.95rem !important;">중분류</h6>
                                            <ul class="list-inline mt-xl-1 mb-0">
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_0" name="cat2">
                                                        <label class="form-check-label fs-5" for="type_0">Hipster
                                                        </label>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                <div class="mb-4">
                                    <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters" data-expanded-text="Less filters" data-collapsed-text="More filters">More filters</button>
                                </div>
                                <div class="mb-1">
                                    <button class="btn btn-warning" type="submit"> <i
                                            class="fas fa-filter me-1"></i>Filter
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- 리스트 시작 -->
                    <div class="col-lg-9 mt-1 ">
                        <div class="d-flex justify-content-end align-items-center flex-column flex-md-row  ">
                            <div class="me-3">
                                <p class="text-muted " style="font-family: pB !important;" href="blog.html "><strong style="color: red; font-family: pB;">12</strong> results found <i class="fas fa-angle-double-right ms-2 "></i></p>
                            </div>
                        </div>
                        <div class="row ">
                            <!-- 1번 item-->
                            <div class="col-sm-6 col-xl-4 mb-5 v text-black" data-marker-id="59c0c8e33b1527bfe2abaf92">
                                <div class="card h-100 border-0 shadow">
                                    <div class="card-img-top overflow-hidden gradient-overlay">
                                        <img class="img-fluid" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=be3867cf-ad01-4999-829c-a0b2cb11d76b" />
                                        <a class="tile-link" href="detail-rooms.html"></a>
                                        <div class="card-img-overlay-top text-end">
                                            <a class=" heart_pink card-fav-icon position-relative z-index-50 align-content-center" href="javascript: void();">
                                                <i class="fas fa-heart svg-icon"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="card-body d-flex align-items-center">
                                        <div class="row w-100 txt_line">
                                            <p class="card-title col-md-8" style=" margin-top: 0; margin-bottom: 0.5rem; font-family: 'pEb'; font-weight: 700; font-size: 1.35rem; line-height: 1.3;">
                                                <a class=" text-black" href="detail-rooms.html">한라산 백록담</a>
                                            </p>
                                            <div class="d-flex col-md-3" style="text-align: center">
                                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                                </p>
                                                <span class="text-primary justify-center" style=" margin-top: 0;
                                        margin-bottom: 0rem;
                                        font-family: 'pSb';
                                        font-weight: 700;
                                        line-height: 1.3;">4/5</span>
                                            </div>
                                            <p class=" text-gray-900 card-subtitle mb-2 address_short fw-bold" style=" font-size: 1.05rem !important;"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i> 제주특별자치도 서귀포시 토평동
                                            </p>
                                            <div class=" card-text overflow-hidden
                                        text-sm text-gray-800 txt_line">
                                                <div class="detail_short">옛날 신선들이 하늘에서 내려와 백록을 타고 놀았다해서 백록담이라 불려졌다 한다. 둘레 약 2천여미터, 깊이가 약 100여 미터의 커다란 화산호인 백록담을 한 바퀴 돌고 나면 제주 섬 해안 도로를 다 돌아다닌 것이나 진배없다. 높이 1,950m이다. 남한에서 가장 높은 산이다. 제3기 말∼제4기 초에 분출한 휴화산이다. 현무암으로 이루어져 있으며 줄기는 제주도 중앙에서
                                                    동서로 뻗는다. 남쪽은 경사가 심한 반면 북쪽은 완만하고, 동서쪽은 비교적 높으면서도 평탄하다. 정상에는 둘레 약 3㎞, 지름 500m의 화구호인 백록담(白鹿潭)이 있으며, 주위 사방에 흙붉은오름[土赤岳]·사라오름[砂羅岳]·성널오름[城板岳]·어승생오름[御乘生岳] 등 360여 개의 측화산을 거느리고 있다. 둔덕에 올라서면 산의 높이가 느껴지고 마치 하늘에
                                                    두둥실 떠 있는 듯한 멋진 환상을 맛보게 된다. 한편 한라산은 천연기념물 한라산 천연보호구역으로 지정, 보호되고 있다.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- Pagination -->
                            <nav aria-label="Page navigation example mt-5">
                                <ul class="pagination pagination-template d-flex justify-content-center ">
                                    <li class=" page-item ">
                                        <span class="page-link "><span style="color: #000000; ">Previous</span></span>
                                    </li>
                                    <li class="page-item active "><a class="page-link " href="# "><span
                                                style="color: #000000; ">1</span></a></li>
                                    <li class="page-item ">
                                        <a class="page-link " href="# "><span style="color: #000000; ">2</span></a>
                                    </li>
                                    <li class="page-item "><a class="page-link " href="# "><span
                                                style="color: #000000; ">3</span></a></li>
                                    <li class="page-item ">
                                        <a class="page-link " href="# "><span style="color: #000000; ">Next</span></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
        </section>
    </form>

    <script>
        function movePage(pageUrl) {
            // 1. id로 관광지 검색어를 가져 온다.
            var searchValue = $("#searchValue").val();
            if (searchValue.value.length > 0) {
                pageUrl = pageUrl + '&searchValue=' + searchValue.value;
            }

            // 2. id로 Dates를 가져 온다.
            var Dates = $("#form_dates").val();
            if (Dates.value.length > 0) {
                pageUrl = pageUrl + '&Dates=' + Dates.value;
            }

            // 3. name으로 locationBox인 체크박스의 값들을 가져온다.
            var LocationValues = document.getElementsByName("locationBox"); // 지역
            if (LocationValues.length != 0) {
                for (var i = 0; i < LocationValues.length; i++) {
                    if (LocationValues[i].selected == true) {
                        LocationValue = LocationValues[i].value;
                        pageUrl += '&LocationValue=' + LocationValue;
                    }
                }
            }

            // 4. name으로 tourTypeBox인 체크박스의 값들을 가져온다.
            var TourTypeValues = document.getElementsByName("tourTypeBox");
            if (TourTypeValues.length != 0) {
                for (var i = 0; i < TourTypeValues.length; i++) {
                    if (TourTypeValues[i].selected == true) {
                        TourTypeValue = TourTypeValues[i].value;
                        pageUrl += '&TourTypeValue=' + TourTypeValue;
                    }
                }
            }

            // 5. name으로 cat1인 체크박스의 값들을 가져온다.
            var cat1Values = document.getElementsByName("cat1");
            if (cat1Values.length != 0) {
                for (var i = 0; i < cat1Values.length; i++) {
                    if (cat1Values[i].selected == true) {
                        cat1Value = cat1Values[i].value;
                        pageUrl += '&cat1Value=' + cat1Value;
                    }
                }
            }

            //  6. name으로 cat2인 체크박스의 값들을 가져온다.
            var cat2Values = document.getElementsByName("cat2");
            if (cat2Values.length != 0) {
                for (var i = 0; i < cat2Values.length; i++) {
                    if (cat2Values[i].selected == true) {
                        cat2Value = cat2Value[i].value;
                        pageUrl += '&cat2Value=' + cat2Value;
                    }
                }
            }

            // 7. name이 cat3인 체크박스의 값들을 가져온다
            var cat3Values = document.getElementsByName("cat3");
            if (cat3Values.length != 0) {
                for (var i = 0; i < cat3Values.length; i++) {
                    if (cat3Values[i].selected == true) {
                        cat3Value = cat3Values[i].value;
                        pageUrl += '&cat3Value=' + cat3Value;
                    }
                }
            }

            // 8. id가 tourFree인 체크박스의 값을 담는다.
            var tourFree = $("#tourFree").val();
            if (tourFree.value.length > 0) {
                pageUrl = pageUrl + '&tourFree=' + tourFree.value;
            }

            location.href = encodeURI(pageUrl);

        }
    </script>

    <!-- 광고 시작 -->
    <section class="py-4 position-relative dark-overlay "><img class="bg-image" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b6036c7a-2fcb-4516-ab7d-f77482991316" alt=" ">
        <div class="container">
            <div class="overlay-content text-white py-lg-5 bubbles">
                <h3 class="fw-normal text-shadow mb-2" style=" font-size: 2.5rem;
                font-weight: 300;
                line-height: 1.3;">프로계획러 사용자가 직접 만든</h3>
                <h3 class="fw-bold text-shadow mb-3" style=" font-size: 3rem; font-family:'pSb'; font-weight: 400; line-height: 1.3;">풀코스 여행</text>
                </h3>
                <button type="button" class="btn btn-light">Go for My Trip</button>
            </div>
        </div>
    </section>
    <!-- 광고 끝 -->


    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-5 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <img src="./image/togetherLogo.png" height="60" width="140" alt="">
                        <div class="text-black mb-4 ps-3 ms-sm-4" style="font-family:pM;">TOGETHER, to GET THERE
                        </div>
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
                                    <a class="text-muted" href="category-rooms.html">서울특별시 강남구 테헤란로14길 6
                                            남도빌딩<br><br></a>
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
                                <button class="btn btn-outline-dark border-start-0" type="submit"> <i
                                            class="fa fa-paper-plane text-lg"></i></button>
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
                            <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="...">
                            </li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="...">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- JavaScript files-->
    <!-- <script> -->
    <!-- // ------------------------------------------------------- // // Inject SVG Sprite - // see more here // https://css-tricks.com/ajaxing-svg-sprite/ // ------------------------------------------------------ // function injectSvgSprite(path) { var ajax
    = new XMLHttpRequest(); ajax.open("GET ", path, true); ajax.send(); ajax.onload = function(e) { var div = document.createElement("div "); div.className = 'd-none'; div.innerHTML = ajax.responseText; document.body.insertBefore(div, document.body.childNodes[0]);
    } } // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite // use your own URL in production, please :) // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
    injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); -->
    <!-- </script> -->
    <!-- jQuery-->
    <!-- <script src="vendor/jquery/jquery.min.js "></script> -->
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <!-- <script src="vendor/bootstrap/js/bootstrap.bundle.min.js "></script> -->
    <!-- Magnific Popup - Lightbox for the gallery-->
    <!-- <script src="vendor/magnific-popup/jquery.magnific-popup.min.js "></script> -->
    <!-- Smooth scroll-->
    <!-- <script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script> -->
    <!-- Bootstrap Select-->
    <!-- <script src="vendor/bootstrap-select/js/bootstrap-select.min.js "></script> -->
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <!-- <script src="vendor/object-fit-images/ofi.min.js "></script> -->
    <!-- Swiper Carousel                       -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script> -->
    <!-- <script>
        var basePath = '' -->
    <!-- </script> -->
    <!-- Main Theme JS file    -->
    <!-- <script src="js/theme.js "></script> -->

    <!-- JavaScript files-->
    <!-- <script>
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
    </script> -->
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
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js ">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js ">
    </script>
    <script src="js/datepicker-category.js ">
    </script>
    <!-- Price Slider-->
    <script src="vendor/nouislider/nouislider.min.js "></script>
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
        // Created for an Articles on:
        // https://www.html5andbeyond.com/bubbling-text-effect-no-canvas-required/

        jQuery(document).ready(function($) {

            // Define a blank array for the effect positions. This will be populated based on width of the title.
            var bArray = [];
            // Define a size array, this will be used to vary bubble sizes
            var sArray = [4, 6, 8, 10];

            // Push the header width values to bArray
            for (var i = 0; i < $('.bubbles').width(); i++) {
                bArray.push(i);
            }

            // Function to select random array element
            // Used within the setInterval a few times
            function randomValue(arr) {
                return arr[Math.floor(Math.random() * arr.length)];
            }

            // setInterval function used to create new bubble every 350 milliseconds
            setInterval(function() {

                // Get a random size, defined as variable so it can be used for both width and height
                var size = randomValue(sArray);
                // New bubble appeneded to div with it's size and left position being set inline
                // Left value is set through getting a random value from bArray
                $('.bubbles').append('<div class="individual-bubble" style="left: ' + randomValue(bArray) + 'px; width: ' + size + 'px; height:' + size + 'px;"></div>');

                // Animate each bubble to the top (bottom 100%) and reduce opacity as it moves
                // Callback function used to remove finsihed animations from the page
                $('.individual-bubble').animate({
                    'bottom': '100%',
                    'opacity': '-=0.7'
                }, 3000, function() {
                    $(this).remove()
                });


            }, 350);

        });
    </script>
</body>

</html>