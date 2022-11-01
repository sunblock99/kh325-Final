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
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/customPHY.css">
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="${path}/resources/css/font.css">
    <link rel="stylesheet" href="${path}/resources/css/like.css">

<style>

        
/*폰트 적용*/
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

div {
	font-family: 'pR';
	letter-spacing: -1px;
}

.blockquote-blog{
    padding: 1rem;
    margin: 0 0 1rem;
    margin-bottom: 1rem;
    font-size: 1.25rem;
    border-left: 2px solid #FD9F28;
    font-weight: bolder
    !important;
}

    </style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('.find_text').on('keyup', function() {
            $('.test_cnt').html("(" + $(this).val().length + " / 40)");

            if ($(this).val().length > 40) {
                $(this).val($(this).val().substring(0, 40));
                $('.test_cnt').html("(40 / 40)");
            }
        });
    });
</script>

<body>
    <jsp:include page="/WEB-INF/views/common/whiteHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <!--히어로 헤더 시작-->
    <section class="d-flex align-items-center dark-overlay bg-cover mb-2" style="font-family: pB; background-image: url(https://cdn.pixabay.com/photo/2022/04/28/19/47/republic-of-korea-7161860_960_720.jpg); padding-top: 72px;">
        <div class="container py-6 py-lg-6 text-white overlay-content text-center">
            <div class="row">
                <div class="col-xl-10 mx-auto">
                    <h1 class="display-3 fw-bold text-shadow">기록, 旅程</h1>
                    <p class="text-lg text-shadow">way Back Home</p>
                </div>
            </div>
        </div>
    </section>
    <!--히어로 헤더 끝-->
    <!--게시글 본문-->
    <section>
        <div class="container text-pR">
            <div class="row">
                <div class="col-xl-8 col-lg-10 mx-auto">
                    <p class="py-1 mb-5 text-muted  fw-light">
                        <h1 class="py-4 text-pB text-center"> ${board.title }</h1>
                        
                        <div class="text-center mb-4 pb-4">
                            <a href=""><img class="text-start avatar p-1 me-2" src="${board.userAvatar }" alt=""></a>
                             Written by <a class="fw-bold" href="#" style="color: #907B65;">${board.userName }</a>
                             <span class="mx-2">|<span class="mx-2 text-pR"><fmt:formatDate type="both" dateStyle="full" value="${board.postDate}"/> <span class="mx-2 text-muted"> ${comments.size() } comments </span>
                    </div>
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-8 col-lg-10 mx-auto">
                    <div class="text-content">
                        <figure class="figure mb-5 pb-2 text-center">
                        	<img class="figure-img img-fluid w-100" src="${board.imgRenamed }" alt="Example blog post alt.">
                            <figcaption class="figure-caption text-center">${board.imgOriginal} </figcaption>
                        </figure>

                        <blockquote class="blockquote-blog">${board.subTitle }</blockquote>
                        <p class="lh-base" style="text-indent : 20px;">
                        	${board.content}
						</p>
                          <div class="col-12 text-end">
                              <div class="wrapper text-end" id="toggleLike">
                              	  <c:if test="${board.like == true}">
                                  <a href="javascript:void(0);return false;" class="like-button is-active">
                                      <i class="material-icons not-liked bouncy">
                                      <svg class="svg-icon text-danger">
                                          <use xlink:href="#heart-1"></use>
                                      </svg></i>
                                      <i class="material-icons is-liked bouncy">
                                      <svg class="svg-icon text-white">
                                          <use xlink:href="#heart-1"></use>
                                      </svg>
                                      </i>
                                      <span class="like-overlay"></span>
                                  </a>
                                  </c:if>
                              	  <c:if test="${board.like == false || empty board}">
                                  <a href="javascript:void(0);return false;" class="like-button">
                                      <i class="material-icons not-liked bouncy">
                                      <svg class="svg-icon text-danger">
                                          <use xlink:href="#heart-1"></use>
                                      </svg></i>
                                      <i class="material-icons is-liked bouncy">
                                      <svg class="svg-icon text-white">
                                          <use xlink:href="#heart-1"></use>
                                      </svg>
                                      </i>
                                      <span class="like-overlay"></span>
                                  </a>
                                  </c:if>
                              </div>
                          </div>
                          <br><hr>
                    </div>
                    <!-- 댓글 시작-->
                    <!-- 댓글 리스트 시작-->
                    <div class="mt-5 text-pR">
                        <h6 class="text-muted mb-4">${comments.size() } COMMENTS</h6>
                        <c:if test="${!empty comments }">
	                        <c:forEach var="comment" items="${comments}">
	                        <!--댓글 시작-->
	                        <div class="d-flex mb-4">
	                            <img class="avatar avatar-lg p-1 flex-shrink-0 me-4" src="${comment.userAvatar}" alt="Julie Alma">
	                            <div>
	                                <h5 class="text-pB">${comment.userName }</h5>
	                                <p class="text-sm text-muted"><i class="far fa-clock pe-1"></i><fmt:formatDate type="date" dateStyle="full" value="${comment.postDate}"/>  </p>
	                                <p class="text-muted">${comment.content }
		                                <c:if test="${!empty loginMember && loginMember.userNo == comment.userNo }">
	                                    	<a href="${path}/community/deleteJourneyComment?commentNo=${comment.commentNo}&journeyNo=${board.journeyNo}" class="text-sm "> | <i class="fas fa-trash p-1 "> 댓글 삭제 </i></a>
	                                    </c:if>
                                    </p>
	                            </div>
	                        </div>
	                        <!--댓글 끝-->
	                        </c:forEach>
                        </c:if>
                    </div>
                    <!-- / 댓글 리스트 끝-->
                    <!--   댓글 달기 시작-->
                    <div class="mb-5 pb-lg-7">
                        <div class="text-pR" id="leaveComment">
                            <div class="mt-4">
                                <h5 class="mb-4 float-end" style="color:#907B65; ">Leave a comment</h5>
                                <form class="form text-pB" id="comment-form" method="post" action="${path}/community/writeJourneyComment">
                                	<input name="journeyNo" value="${board.journeyNo }" hidden="hidden">
                                    <div class="mb-4">
                                        <textarea class="form-control" id="comment" name="content" rows="4"></textarea>
                                    </div>
                                    <button class="btn btn-outline-dark float-end text-pB" type="submit"><i class="far fa-comment"></i> 댓글 </button>
                                    <a class="btn btn-outline-dark float-start me-2" href="${path}/community/journeyList"><i class="fas fa-align-left"></i> 목록 </a>
                                    <c:if test="${!empty loginMember && loginMember.userNo == board.userNo }">
                                  	  <a class="btn btn-outline-dark float-start me-2" href="${path}/community/updateJourney?journeyNo=${board.journeyNo}"><i class="fas fa-archive"></i> 수정</a>
                                  	  <a class="btn btn-outline-dark float-start me-2" href="${path}/community/deleteJourney?journeyNo=${board.journeyNo}"><i class="fas fa-archive"></i> 삭제</a>
                                    </c:if>
                                    <c:if test="${!empty loginMember && loginMember.userNo != board.userNo }">
                                    <a class="btn btn-outline-dark float-start me-2" data-bs-toggle="modal" data-bs-target="#exclaim" type="">
                                        <i class="fa-solid fa-bullhorn fas"></i> 신고
                                    </a>
                                    </c:if>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--  댓글 달기 끝-->
                    <!-- /comment form-->
                </div>
            </div>
        </div>
        <!-- 신고 모달 -->
        <div class="modal fade" id="exclaim" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exclaimLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exclaimLabel">게시글 신고하기 <i class="fa-solid fa-bullhorn fas "></i></h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="${path }/community/reportJourney" method="post">
                            <div class="row">
                                <div class="form-group">
                                	<input type="text" name="boardType" value="${board.boardType }" hidden/>
                                	<input type="text" name="boardNo" value="${board.journeyNo }" hidden/>
                                	<input type="text" name="boardName" value="${board.title }" hidden />
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
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/visa.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/mastercard.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/paypal.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/western-union.svg" alt="..."></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- JavaScript files-->
    <script>
    
	    $(document).ready(function() {
	    	console.log(${board.like})
	        $('.like-button').click(function() {
		        var path = "${path}/community/likeOnOff?boardNo=${board.journeyNo}";
		        console.log(path)
		        $.ajax({
	   	            type: "get",
	   	            url: path,
	   	            contentType: "application/json; charset=utf-8",
	   	            data: '',
	   	            dataType: "json",
	   	            success: function (data) {
	   	            	$('.like-button').toggleClass('is-active');
	   	            	console.log(data);
                              
	   	            },
	   	        	error: function (req, status, error) {
		                alert("좋아요는 회원 전용 기능입니다.");
	   	        	}
		    	})
	        })
	    });
	    
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {

            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
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
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>

    <script>
     /*    $(document).ready(function() {
            $('.like-button').click(function() {
                $(this).toggleClass('is-active');
            })
        }) */
    </script>

</body>

</html>