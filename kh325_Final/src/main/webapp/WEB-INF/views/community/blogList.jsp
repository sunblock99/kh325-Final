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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
        
      .txt_post {
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 4; /* 라인수 */
	    -webkit-box-orient: vertical;
	    word-wrap:break-word; 
	    line-height: 1.2em;
	    height: 4.8em; /* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
	  }
	  
	  .txt_post_long{
	  	overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 7; /* 라인수 */
	    -webkit-box-orient: vertical;
	    word-wrap:break-word; 
	    line-height: 1.2em;
	    height: 8.4em; /* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
	  }
   </style>
</head>

<body>
    <jsp:include page="/WEB-INF/views/common/whiteHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <!--상단 헤더 히어로 시작-->
    <section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(https://cdn.pixabay.com/photo/2022/04/28/19/47/republic-of-korea-7161860_960_720.jpg);">
        <div class="container py-7 py-lg-7 text-white overlay-content text-center">
            <div class="row">
                <div class="col-xl-10 mx-auto">
                    <h1 class="display-3 fw-bold text-shadow">기록, 旅程</h1>
                    <p class="text-lg text-shadow">way Back Home</p>
                </div>
            </div>
        </div>
    </section>
    <!--상단 헤더 히어로 끝-->
    <!--검색 바 시작-->
    <div class="container bg-primary-100">
        <div class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20 ">
            <form action="${path}/community/journeyList">
                <div class="row">
                    <div class="col-lg-10 d-flex align-items-center form-group">
                        <input class="form-control border-0 shadow-0" type="search" id="keyword" name="keyword" 
                        		value="${param.keyword }" placeholder="키워드 또는 해시태그를 입력하여 검색하세요">
                    </div>

                    <div class="col-lg-2 form-group d-grid mb-0">
                        <button class="btn btn-warning h-100" type="submit">Search </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--검색 바 끝-->
    <!--헤시태그 시작-->
    <section class="py-5 ">
        <div class="container">
            <h2 class="mb-4">Hash tags</h2>
            <div class="row">
                <ul class="nav nav-pills-custom col-10">
                    <li class="nav-item "><a class="nav-link active" href="${path}/community/journeyList?hash=가을">#가을</a></li>
                    <li class="nav-item"><a class="nav-link" href="${path}/community/journeyList?hash=에버랜드">#에버랜드</a></li>
                    <li class="nav-item"><a class="nav-link" href="${path}/community/journeyList?hash=바다">#바다</a></li>
                    <li class="nav-item"><a class="nav-link" href="${path}/community/journeyList?hash=제주도">#제주도</a></li>
                    <li class="nav-item"><a class="nav-link" href="${path}/community/journeyList?hash=행복">#행복</a></li>
                </ul>

                <button class="col-2 btn btn-outline-dark rounded-4" onclick="location.href='${path}/community/journeyWrite'"><span>write</span></button>
            </div>
        </div>
    </section>
    <!--헤시태그 끝-->
    <!--베스트 포스팅 시작-->
    <section class="py-3">
        <div class=" bg-gray-100 py-5 px-3 px-lg-5 rounded-3 shadow-sm">

            <div class="container">
                <div class="col-md-8 p-1 pb-4">
                    <p class="text-pSb fs-4" style="color: #907B65;">BEST POSTING</p>
                    <a href="${path}/community/journeyDetail?journeyNo=${bestPost.journeyNo}" class="a-orign-text">
                        <h3 class="text-pB">${bestPost.title}</h3>
                    </a>
                </div>
                <div class="row">
                    <div class="col-sm-4 col-lg-5" style="background-image: url();">
                        <img class="shadow-sm dark-overlay rounded" src="${bestPost.imgRenamed }" style="height: 300px;">
                    </div>
                    <div class="col-sm-8 col-lg-6 d-flex align-items-center">
                        <div>
                            <p class="text-lg text-gray-700 mb-4 text-pB">
                            <c:if test="${!empty bestPost.hashTag}">
                            <c:set var="hashTags" value="${fn:split(bestPost.hashTag,',')}" />
                            	<c:forEach var="tag" items="${hashTags}">
                            		<span style="pe-3"> ${tag} </span>
                            	</c:forEach>
                            </c:if>
							</p>
                            <p class="text-lg text-gray-700 mb-4 txt_post_long">${bestPost.content } </p>
                            <h6 class="fs-4 text-pB">— written by ${bestPost.userName }</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--베스트 포스팅 끝-->
    <!-- 포스트 목록 시작 -->
    <div class="container pt-5 mb-5" id="">
        <div class="col-md-8 p-1 mb-3 py-3 ">
            <h2>Posts</h2>
        </div>
        <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
            <div class="me-3">
                <p class="mb-3 mb-md-0"><strong id="totalCount">${totalCount}</strong> results found</p>
            </div>
            <div>
                <label class="form-label me-2" for="form_sort">Sort by</label>
                <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="${param.sort }"onchange="orderList()">
	                <option value="newest">Newest</option>
	                <option value="popular">Most popular</option>
	                <option value="oldest">Oldest</option>
	            </select>
            </div>
        </div>
        <!--포스팅 리스트 시작-->
        <div class="row" id="posts">
        	<c:if test="${!empty list}">
        	<c:forEach var="board" items="${list }">
        	<!-- post item-->
            <div class="col-sm-6 mb-5 hover-animate" id="post" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden dark-overlay bg-cover" id="img" style="background-image: url(${board.imgRenamed}); min-height: 200px;">
                        <a class="tile-link" id="detailLink" href="${path}/community/journeyDetail?journeyNo=${board.journeyNo}"></a>
                        <div class="card-img-overlay-bottom z-index-20">
                            <h4 class="text-white text-shadow" id="title">${board.title }</h4>
                            </p>
                        </div>
                        <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                            <div id="hashTags">
                            	<c:forEach var="hash" items="${hashMap.get(board.journeyNo)}">
                                	<span id="hashTag" class="badge badge-transparent badge-pill px-3 py-2">${hash}</span>
                            	</c:forEach>
                            </div>
                            <a class="position-relative z-index-40" href="javascript: void();" id="likeImg">
                            	<c:if test="${board.like == true}">
                                	<img src="${path }/resources/image/heart_full.svg">
                            	</c:if>
                            	<c:if test="${board.like == false || empty board}">
                               		 <img src="${path }/resources/image/heart_empty.svg">
                            	</c:if>
                            </a>
                        </div>
                    </div>
                    <div class="card-body" style="height: 170px;">
                        <p class="text-sm text-muted mb-3 py-3 txt_post" id="content" >${board.content }</p>
                        <p class="text-sm text-muted text-uppercase mb-2">By <a href="#" class="text-dark" id="userName">${board.userName }</a></p>
                    </div>
                </div>
            </div>
            <!-- post item-->
            </c:forEach>
            </c:if>
        </div>
        <!-- 포스트 리스트 끝 -->
    </div>
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
    
		var page = 2;
		var keyword = document.getElementById('keyword').value;
		//var sort = $("#form_sort option:selected").val();
		var sort = '<c:out value='${param.sort}'/>';
		console.log(keyword);
	    $(document).ready(function () {
	    	  $(document).scroll(function() {
	    	    var maxHeight = $(document).height();
	    	    var currentScroll = $(window).scrollTop() + $(window).height();
	    	    
	    	    var path = "${path}/community/journeyListScroll?page=" + page + "&keyword=" + keyword +"&sort=" + sort;
	    	    var hashVal = '${param.hash}';
	    	    if(hashVal){
	    	    	//path = "${path}/community/journeyListScroll?page=" + page + "&hash=${param.hash}";  
	    	    	path = path + "&hash=${param.hash}";  
	    	    }
	    	    if (maxHeight <= currentScroll + 100) {
	    	   		console.log("ggg");
   	            	page = page+1;
	    	   		$.ajax({
	    	            type: "get",
	    	            url: path,
	    	            contentType: "application/json; charset=utf-8",
	    	            data: '',
	    	            dataType: "json",
	    	            success: function (list) {
	    	            	console.log(list);
	    	            	console.log("page::" + page);
	    	            	var container = document.createElement("div");
	    	        		// 이프와 반복문으로 돌려가면서 html 페이지에 요소 추가해서 그려낼 예정 일단 리스트 넘어가는 것 까지는 콘솔 로그로 확인한 상태
   	        		  		for (var i = 0; i < list.length; i++) {
                               var post = $("#post").clone();
                               var title = list[i].title;
                               var img = list[i].imgRenamed;
                               console.log(img);
                               post.find("#title").text(list[i].title);
                               post.find("#img").css("background-image", 'url('+img+')');
                               post.find("#content").text(list[i].content);
                               post.find("#userName").text(list[i].userName);
                               post.find("#likeImg").empty();
                               var isLikeImg = '<img src="${path }/resources/image/heart_empty.svg">';
                               if(list[i].like == true){
                            	   console.log(list[i].like);
	                               isLikeImg = '<img src="${path }/resources/image/heart_full.svg">';
                               }
                           	   post.find("#likeImg").append(isLikeImg);
                               
                               hashList = list[i].hashTag.split(",");
                               console.log(hashList);
                               console.log("length:"+hashList.length);
                               if(hashList.length>0){
	                           		post.find("#hashTags").empty();
	                           		var addTags = '';
	                           	   for(var j=0; j < hashList.length ;j++){
	                               		//var hashTag = post.find("#hashTag").clone();
	                           			//hashTag.text(hashList[j]);
	                               		//console.log("dd"+hashList[j]);
	                           		 	//post.find("#hashTags").append(hashTag);
	                           			//$("hashTag").appendTo("#hashTags");
	                           			addTags += '<span id="hashTag" class="badge badge-transparent badge-pill px-3 py-2 me-sm-1">'+hashList[j]+'</span>';
	                               } 
	                           		post.find("#hashTags").append(addTags);
	                           		addTags='';
                               }
                               var journeyNo = list[i].journeyNo;
                               var contextPath = '<c:out value='${path}'/>';
                               contextPath += "journeyDetail?journeyNo=";
                               contextPath += journeyNo;
                               post.find("#detailLink").attr("href", contextPath);
                               post.appendTo("#posts");
                            }
	    	            },
	    	            error: function (req, status, error) {
	    	                alert("Error try again");
	    	            }
	    	        });
	    	    }
	    	  })
	    	});
	    
	    function orderList(){
	    	
	    	var sort = $("#form_sort option:selected").val();
	    	var keyword = $("#keyword").text();
	    	var contextPath = '<c:out value='${path}'/>';
	    	var path = '${path}/community/journeyList?sort='+sort+'&keyword='+keyword;
	    	console.log(path);
	    	location.replace(path);
	    }
	    
	    function searchHash(hash){
	    	var contextPath = '<c:out value='${path}'/>';
	    	var path = '${path}/community/journeyList?hash='+hash;
	    	console.log(path);
	    	location.replace(path);
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