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
    <link rel="stylesheet" href="${path }/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path }/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path }/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path }/resources/css/customPHY.css">
    <link rel="stylesheet" href="${path }/resources/css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path }/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="${path }/resources/css/font.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <style>
    /*폰트 적용*/
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Black.ttf);
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-ExtraBold.ttf);
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Bold.ttf);
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-SemiBold.ttf);
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Medium.ttf);
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Regular.ttf);
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Light.ttf);
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-ExtraLight.ttf);
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(${path }/resources/font/Pretendard-Thin.ttf);
    }
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
    /*폰트 끝*/
    </style>
</head>
<script>
    function popup(pageUrl) {
        var url = "${path}/community/companionComment";
        var name = "popup test";
        var option = "width = 1000, height = 500, top = 100, left = 200, location = no"
        window.open(pageUrl, name, option);
    }

    function popup_add() {
        var url = "file:///C:/Users/USER/Desktop/%ED%8C%80%EA%B3%BC%EC%A0%9C/%ED%8C%8C%EC%9D%B4%EB%84%90/front_final/directory-2-0-1/bootstrap-5/html/find_comp_add.html";
        var name = "popup test";
        var option = "width = 500, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }

    function openExForm() {
        var url = "file:///C:/Users/USER/Desktop/%ED%8C%80%EA%B3%BC%EC%A0%9C/%ED%8C%8C%EC%9D%B4%EB%84%90/front_final/directory-2-0-1/bootstrap-5/html/exclaim_form.html";
        var name = "popup test";
        var option = "width = 1200, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }
</script>
<script>
    $(document).ready(function() {
        console.log('11');
        $('.find_text').on('keyup', function() {
            $('.test_cnt').html("(" + $(this).val().length + " / 50)");

            if ($(this).val().length > 50) {
                $(this).val($(this).val().substring(0, 40));
                $('.test_cnt').html("(50 / 50)");
            }
        });
    });
    
    function Checkform() {
		console.log("???")
         var departureDate = document.querySelector('#departureDate').value;
         var closeDate = document.querySelector('#closeDate').value;
		console.log(departureDate)
		console.log(closeDate)

        if (departureDate == "") {
            alert("출발일을 입력해주세요");
            return false;
        }


        if (closeDate == "") {
            alert("종료일을 입력해주세요");
            return false;
        }
        
       var dd = new Date(departureDate);
       var cd = new Date(closeDate);
		console.log(dd);
		console.log(cd);
   
        if(dd.getTime()>cd){
        	alert("종료일이 출발일 보다 빠를 수는 없습니다.");
        	return false;
        }
        
        var form = document.frm;
        
        form.submit();
        
    }
</script>

<body>
   	<jsp:include page="/WEB-INF/views/common/whiteHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <section>
        <!--상단 헤더 시작-->
        <div class="hero py-6 mb-5 " style=" background-image: url(${path }/resources//image/header1.png);size: inherit; ">
            <div class="container-fluid pt-5 pb-3 px-lg-5 mb-3 ">
                <div class="row text-center ">
                    <div class=" ">
                        <h1 class="text-hover-success display-4 fw-bolder " style="color: #FD9F28; ">Together, to get there </h1>
                        <p class="lead fa-quote-left fas " style="color: #907B65; "> 즐거움이 두 배가 됩니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <!--상단 헤더 끝-->
        <!--사이드 오거나이저/ 검색 글쓰기 바 시작-->
        <div class="">
            <div class="row pt-4 ps-6 ">
                <div class="col-lg-2 pt-3 shadow rounded mb-6 " style="background-color: ghostwhite; height: 800px; ">
                    <h3 class="mt-2 ms-2 mb-3 h2 "> Organizer</h3>
                    <form class="pe-xl-3" action="${path}/community/companionList" autocomplete="off">
                        <div class="mb-2 ">
                            <label class="form-label" for="form_dates">Dates</label>
                            <div class="datepicker-container datepicker-container-left">
                                <input class="form-control" type="date" name="departureDate" value="${param.departureDate }"placeholder="Choose your dates">
                            </div>
                        </div>
                        <div class="mb-2 ">
                            <label class="form-label" for="area-form">Area</label>
                            <select class="selectpicker form-control " name="area" id="area" data-style="btn-selectpicker">
                            	<c:if test="${!empty param.area }">
                                	<option value="${param.area }" selected>${param.area}</option>
                                </c:if>
                                <option value="전국">전국</option>
                                <option value="서울">서울</option>
                                <option value="경기">경기</option>
                                <option value="전라">전라</option>
                                <option value="경상">경상</option>
                                <option value="충청">충청</option>
                                <option value="제주">제주</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <input type="submit" class="btn btn-outline-warning btn-lg px-6" value="filter">
                        </div>
                    </form>
                    <div class="mb-1 mt-2 pe-1 ">
                        <a href="#" data-bs-toggle="modal" data-bs-target="#findComp"><img src="${path }/resources//image/postit_add.png " alt=" " style="width: 280px; "></a>
                    </div>

                    <!-- 동행 구하기 메모 모달 -->
                    <div class="modal fade" id="findComp" tabindex="-1" aria-labelledby="findCompLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-dark-light">
                                    <h1 class="modal-title fs-5 fw-bold" id="findCompLabel">동행 구하기 메모 작성</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body" style="background-image: url(${path}/resources/image/monoon_back.png);">
                                    <form action="${path}/community/writeCompanion" method="post" name="frm">
                                    	<input type="text" name="userNo" value="${loginMember.userNo }" hidden>
                                        <div class="row">
                                            <div class="form-group col-6">
                                                <label for="depart_date" class="form-label">여행출발일</label>
                                                <input type="date" class="form-control" id="departureDate" name="departureDate">
                                            </div>
                                            <div class="form-group col-6">
                                                <label class="form-label" for="end_date">여행종료일</label>
                                                <input type="date" class="form-control" id="closeDate" name="closeDate">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="area-form">지역</label>
                                                
                                                <select class="selectpicker form-control" name="area" id="area" data-style="btn-selectpicker" >
	                                                <option value="전국">전국</option>
	                                                <option value="서울">서울</option>
	                                                <option value="경기">경기</option>
	                                                <option value="전라">전라</option>
	                                                <option value="경상">경상</option>
	                                                <option value="충청">충청</option>
	                                                <option value="제주">제주</option>
                                            	</select>
                                            </div>
                                        </div>

                                        <div class="form-group pt-3">
                                            <label class="form-label" for="find_text">내용</label>
                                            <textarea class="form-control find_text" id="content" name="content" cols="10" rows="4" placeholder="50자 이내로 작성하세요."></textarea>
                                            <div class="text-muted pb-2 test_cnt">(0 / 50)</div>
                                        </div>
                                        <div class="form-group pt-3 text-end ">
                                            <input class="btn btn-outline-muted " onclick="Checkform();" value="메모등록">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 동행 구하기 메모 모달 -->

                    <div class=" bg-primary-100 py-4 ">
                        <div class="text-center ">
                            <div class="p-2 ">
                                <p class="subtitle text-sm text-muted ">Need more friends?</p>
                                <h4 class="mb-0 ">follow the Rules,</h4>
                                <h4 class="mb-0 " style="color: #FD9F28; ">Together, </h4>
                                <h4 class=" mb-0 " style="color: #FFCD4A; ">to get there, </h4>
                            </div>
                            <div class="mt-3 container text-start ">

                            </div>

                        </div>
                    </div>
                </div>
                <!--사이드 오거나이저/ 검색 글쓰기 바 끝-->
                <!--게시 포스트잇 시작-->
                <div class="col-lg-9 ">
                    <div class="d-flex justify-content-between align-items-center flex-column flex-md-row ">
                        <div class="ps-7 me-3 text-end ">
                            <p class="mb-3 mb-md-0 "><strong>${totalCount}</strong> results found</p>
                        </div>

                    </div>
                    <div class=" ps-6 row ">
                    	<c:forEach var="board" items="${list}">
                        <!-- place item-->
                        <div class="col-sm-6 col-xl-4 hover-animate ">
                            <div class="pe-3 pt-4 " style="background-image: url(${path }/resources/image/brown.png); width: 410px; height: 350px; ">
                                <div class="ps-5 pt-6 mb-3 6 pe-1 text-white fw-bold ">

                                    <p><span class="pe-1">[date]</span> <fmt:formatDate type="date" dateStyle="long" value="${board.departureDate}"/>~<fmt:formatDate type="date" dateStyle="long"  value="${board.closeDate}"/></p>
                                    <p class="pe-3" style="height: 47px;"><span class="pe-1">[memo]</span> ${board.content } </p>
                                    <p class=" "><span class="pe-1">[writer]</span> ${board.userName } </p>
                                </div>
                                <div class="text-end pe-4 pt-4 ">
                                	<c:if test="${board.userNo == loginMember.userNo }">
	                                    <a href="# " class=" text-white " onclick="popup('${path}/community/compCommentForWriter?companionNo=${board.companionNo}&userNo=${board.userNo}') "><i class="fa-regular fa-comments fas "> comment</i></a>
	                                    <a href="${path}/community/deleteCompanion?companionNo=${board.companionNo}&userNo=${board.userNo}" class=" text-white "> | <i class="fas fa-trash "></i></a>
                                    </c:if>
                                    <c:if test="${board.userNo ne loginMember.userNo }">
                                     	<a href="# " class=" text-white " onclick="popup('${path}/community/compCommentForSender?companionNo=${board.companionNo}&userNo=${board.userNo}') "><i class="fa-regular fa-comments fas "> comment</i></a>
                                    	<a href="#" data-bs-toggle="modal" data-bs-target="#exclaim" class=" text-white "> | <i class="fa-solid fa-bullhorn fas "></i></a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="exclaim" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exclaimLabel" aria-hidden="true">
			            <div class="modal-dialog">
			                <div class="modal-content">
			                    <div class="modal-header">
			                        <h1 class="modal-title fs-5" id="exclaimLabel">게시글 신고하기 <i class="fa-solid fa-bullhorn fas "></i></h1>
			                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			                    </div>
			                    <div class="modal-body">
			                        <form action="${path }/community/reportComp">
			                            <div class="row">
			                                <div class="form-group">
			                                	<input type="text" name="boardType" value="${board.boardType }" hidden/>
			                                	<input type="text" name="boardNo" value="${board.companionNo }" hidden/>
			                                	<input type="text" name="boardName" value="${board.content }" hidden />
			                                	<input type="text" name="userNo" value="${loginMember.userNo }" hidden/>
			                                    <label class="form-label" for="area-form">신고사유</label>
			                                    <select class="selectpicker form-control bg-gray-200 " name="category" id="area-form" data-style="btn-selectpicker " title="신고사유를 선택하세요.">
			                                    	<option value="욕설" >욕설 </option>
				                                    <option value="사기행위">사기행위 </option>
				                                    <option value="광고/도배">광고/도배 </option>
				                                    <option value="기타">기타</option>
			                                	</select>
			                                </div>
			                            </div>
			
			                            <div class="form-group pt-3">
			                                <label class="form-label" for="find_text">신고내용</label>
			                                <textarea class="find_text form-control bg-gray-200 " name="reasons" cols="10" rows="4" placeholder="신고 내용을 40자 이내로 작성하세요."></textarea>
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
					</c:forEach>	
                    </div> 
                    <nav aria-label="Page navigation example" class="pt-3">
                        <ul class="pagination pagination-template d-flex justify-content-end">
                            <li class="page-item ">
                                <a class="page-link-course" href="#" onclick="movePage('${path}/community/companionList?page=${pageInfo.prevPage}');" tabindex="-1 "> <i class="fa fa-angle-left "></i></a>
                            </li>
                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
							<c:if test="${pageInfo.currentPage == status.current}">
                            	<li class="page-item-course disabled "><a class="page-link-course " href="#"><c:out value="${status.current}"/></a></li>
                            </c:if>
                            <c:if test="${pageInfo.currentPage != status.current}">
                           	 	<li class="page-item-course"><a class="page-link-course" onclick="movePage('${path}/community/companionList?page=${status.current}');" href="#"><c:out value="${status.current}"/></a></li>
                            </c:if>
                            </c:forEach>
                            <li>
                                <a class="page-link-course" href="#" onclick="movePage('${path}/community/companionList?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right "></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!--게시 포스트잇 끝-->
        </div>
        <!-- 신고 모달 -->
        
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none ">
        <!-- Main block - menus, subscribe form-->
        <div class="py-5 bg-gray-200 text-muted ">
            <div class="container ">
                <div class="row ">
                    <div class="col-lg-4 mb-5 mb-lg-0 ">
                        <img src="${path }/resources/image/togetherLogo.png " height="60 " width="140 " alt=" ">
                        <div class="text-black mb-4 ps-3 ms-sm-4 " style="font-family:pM; ">TOGETHER, to GET THERE</div>
                        <div class="mt-4 pt-2 ps-3 ms-sm-4 ">
                            <span class="text-muted text-sm ">김나임ㅣ김태은ㅣ박혜연ㅣ선형채ㅣ윤하영ㅣ정수아ㅣ정원일</span>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-5 mb-lg-0 pt-4 ms-4 ">
                        <h6 class="text-dark mb-2 ">CONTACT
                            <ul class="list-unstyled ">
                                <li class="mt-sm-2 " style="font-family:pEl; letter-spacing:0px; ">
                                    <a class="text-muted " href="category-rooms.html ">1544-9970</a>
                                </li>
                            </ul>
                        </h6>

                        <h6 class="text-dark mb-2 ">ADDRESS
                            <ul class="list-unstyled ">
                                <li class="mt-sm-2 " style="font-family:pEl; letter-spacing:0px; ">
                                    <a class="text-muted " href="category-rooms.html ">서울특별시 강남구 테헤란로14길 6 남도빌딩<br><br></a>
                                </li>
                            </ul>
                        </h6>
                    </div>

                    <div class="col-lg-3 pt-4 " style="font-family:pB; ">
                        <h6 class="fs-5 text-dark mb-2 ">정기구독 & 뉴스레터</h6>
                        <p class="mb-3 "> 투게더의 소식을 정기적으로 받아보세요</p>
                        <form action="# " id="newsletter-form ">
                            <div class="input-group mb-3 ">
                                <input class="form-control bg-transparent border-dark border-end-0 " type="email" placeholder="Your Email Address " aria-label="Your Email Address ">
                                <button class="btn btn-outline-dark border-start-0 " type="submit"> <i class="fa fa-paper-plane text-lg "></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright section of the footer-->
        <div class="py-4 fw-light bg-gray-800 text-gray-300 ">
            <div class="container ">
                <div class="row align-items-center ">
                    <div class="col-md-6 text-center text-md-start ">
                        <p class="text-sm mb-md-0 ">&copy; 2022, TOGETHER. All rights reserved.
                        </p>
                    </div>
                    <div class="col-md-6 ">
                        <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end ">
                            <li class="list-inline-item "><img class="w-2rem " src="${path }/resources/img/visa.svg " alt="... "></li>
                            <li class="list-inline-item "><img class="w-2rem " src="${path }/resources/img/mastercard.svg " alt="... "></li>
                            <li class="list-inline-item "><img class="w-2rem " src="${path }/resources/img/paypal.svg " alt="... "></li>
                            <li class="list-inline-item "><img class="w-2rem " src="${path }/resources/img/western-union.svg " alt="... "></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- JavaScript files-->
    <script>
	    function movePage(pageUrl){
			var searchDate = document.getElementById("departureDate"); 
			var searchArea = document.getElementById("area"); 
			var searchType = '';
			if(searchArea.value.length > 0){
				
				pageUrl = pageUrl + '&departureDate=' + searchDate.value + '&area=' + searchArea.value; 
			}
			location.href = encodeURI(pageUrl);	
		}
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
    <script src="${path }/resources/vendor/jquery/jquery.min.js "></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js "></script>
    <!-- Smooth scroll-->
    <script src="${path }/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js "></script>
    <!-- Bootstrap Select-->
    <script src="${path }/resources/vendor/bootstrap-select/js/bootstrap-select.min.js "></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path }/resources/vendor/object-fit-images/ofi.min.js "></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js "></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path }/resources/js/theme.js "></script>
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js ">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js ">
    </script>
    <script src="${path }/resources/js/datepicker-category.js ">
    </script>
    <!-- Price Slider-->
    <script src="${path }/resources/vendor/nouislider/nouislider.min.js "></script>
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
</body>

</html>