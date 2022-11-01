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
    <link rel="stylesheet" href="${path }/resources/css/font.css">
    <style>
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
        .txt_post {
		    overflow: hidden;
		    text-overflow: ellipsis;
		    display: -webkit-box;
		    -webkit-line-clamp: 1; /* 라인수 */
		    -webkit-box-orient: vertical;
		    word-wrap:break-word; 
		    line-height: 1.2em;
		    height: 1.2em; /* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
		  }
    </style>
</head>

<body style="padding-top: 72px;">
    <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <section style="background-image: url(${path }/resources/image/circles_w.png) ">
        <!--  <div class="row  py-6  " style="background-color:; padding-left: 400px; padding-right: 400px; background-image: url(./free_header3.png);">
            <div class="col-12">
            </div>
        </div> -->
        <div class="py-4 mb-3 mt-4">
            <div class="container px-lg-6 ">
                <div class="col-md-8 p-1">
                    <h1 class="display-5 fw-bold text-dark mb-4  py-4">자유게시판</h1>
                    <p class="subtitle" style="color: #907B65;">Best posting</p>
                    <h4>인기게시글</h4>
                </div>
                <div class="row">
                	<c:if test="${!empty bestList}">
                	<c:forEach var="post" items="${bestList }" end="${bestList.size() }">
                    <div class="col-4">
                        <div class="docs-item" id="ribbon">
                            <div class="mt-3">
                                <div class="card py-3 border-0 shadow ">
                                    <div class="ribbon ribbon-warning ">BEST</div>
                                    <div class="ps-4 text-dark" style="padding-top: 30px;">
                                        <a href="${path}/community/freeDetail?freeboardNo=${post.freeBoardNo }" class="text-decoration-none">
                                            <h6 class="h6 text-dark text-decoration-none txt_post pe-3">${post.title }</h6>
                                        </a>
                                        <span class="text-muted text-sm">조회수 ${post.count } | 댓글 ${post.commentList.size() }</span>
                                        <p class="text-end text-dark pe-4">Written by ${post.userName}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="container px-6">
            <div class="row">
                <div class="justify-content-start col-3  ps-4 pt-3">
                    <p class="text-muted">total ${boardCountAll} messages </p>
                </div>
                <div class="d-flex justify-content-end align-items-end mb-4  col-9">
                    <form action="${path}/community/freeboardList" class="border rounded">
                        <div class="row">
                            <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                                <select class="selectpicker" title="검색분류" name="searchType" value="title" id="searchType" data-style="btn-form-control">
                                    <option value="title"  ${param.searchType=='title' ? 'selected' : '' }>제목</option>
                                    <option value="writer" ${param.searchType=='writer' ? 'selected' : '' }>글쓴이</option>
                                    <option value="content" ${param.searchType=='content' ? 'selected' : '' }>내용</option>
                                </select>
                            </div>
                            <div class="col-lg-5 d-flex align-items-center form-group">
                                <input class="form-control border-0 shadow-0" type="text" id="searchValue" 
                                 name="searchValue" placeholder="검색 키워드를 입력하세요." value="${param.searchValue}">
                            </div>

                            <div class="col-lg-4 d-grid text-start ">
                                <button class="btn btn-outline-light text-black " type="submit"> Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="list-group  mb-5">
                <div class="table-responsive mb-3">
                    <table class="table table-striped ">
                        <thead class="text-white" style="background-color: #907B65;">
                            <tr class="border-0 text-center">
                                <th class="center col-1">no</th>
                                <th class="col-7">title</th>
                                <th class="col-2">writer</th>
                                <th class="col-1">file</th>
                                <th class="col-1">date</th>
                            </tr>
                        </thead>
                        <tbody class="text-sm">
                        	<c:forEach var="board" items="${list}">
                            <tr>
                                <td class="text-center"><c:out value="${board.freeBoardNo}"/></td>
                                <td class="">
                                    <a href="#" onclick="location.href='${path}/community/freeDetail?freeboardNo=${board.freeBoardNo}'"class="fw-bold text-black text-decoration-none ">
                                        <c:out value="${board.title}"/><span class="text-muted fw-light"> - ${board.commentList.size() } comments</span>
                                    </a>
                                </td>
                                <td class="text-center"><c:out value="${board.userName}"/></td>
                                <td class="text-center">
	                                <c:if test="${!empty board.fileOriginal }">
	                               		<i class="fas fa-file"></i>
	                                </c:if>
                                </td>
                                <td class=""><fmt:formatDate pattern="yyyy.MM.dd " value="${board.postDate}"/></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                
                <div class="row mb-3 mt-2">
                    <div class="col-8">
                        <nav aria-label="Page navigation example pt-1">
                            <ul class="pagination justify-content-end ">
                                <li class="page-item">
                                    <a class="page-link " href="# " onclick="movePage('${path}/community/freeboardList?page=${pageInfo.prevPage}');" tabindex="-1 ">Previous</a>
                                </li>
                                <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
									<c:if test="${pageInfo.currentPage == status.current}">
										<li class="page-item disabled"><a class="page-link " href="#"><c:out value="${status.current}"/></a></li>
									</c:if>
									<c:if test="${pageInfo.currentPage != status.current}">
										 <li class="page-item ">
										 	<a class="page-link" href="#" onclick="movePage('${path}/community/freeboardList?page=${status.current}');">
												<c:out value="${status.current}"/>
											</a>
										</li>
									</c:if>
								</c:forEach>
                                
                                <li class="page-item ">
                                    <a class="page-link" onclick="movePage('${path}/community/freeboardList?page=${pageInfo.nextPage}');" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="text-end col-4">
                        <button class="btn btn-outline-dark" onclick="location.href='${path}/community/writefree'">write</button>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-5 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <img src="${path }/resources/image/togetherLogo.png" height="60" width="140" alt="">
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
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/visa.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/mastercard.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/paypal.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path }/resources/img/western-union.svg" alt="..."></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript files-->
    <script>
	    function movePage(pageUrl){
			var searchValue = document.getElementById("searchValue"); 
			var searchTypes = document.getElementById("searchType"); 
			var searchType = 'title';
			if(searchValue.value.length > 0){
				
				pageUrl = pageUrl + '&searchType=' + searchTypes.value + '&searchValue=' + searchValue.value; 
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
</body>

</html>