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
    <link rel="shortcut icon" href="./resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="${path }/resources/css/font.css">
    <link rel="stylesheet" href="${path }/resources/css/customKNI.css">
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        console.log('11');
        $('.find_text').on('keyup', function() {
            $('.test_cnt').html("(" + $(this).val().length + " / 40)");

            if ($(this).val().length > 40) {
                $(this).val($(this).val().substring(0, 40));
                $('.test_cnt').html("(40 / 40)");
            }
        });
    });
</script>

<body style="padding-top: 72px;">
    <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>
    <section style="background-image: url(${path }/resources/image/circles_w.png); background-repeat: no-repeat; ">

        <div class="py-4 mb-3 mt-4">
            <div class="container px-lg-6 ">
                <div class=" p-1">
                    <div class="badge rounded-pill me-2 bg-warning mb-2">
                        <span class="px-3 py-2 h6" style="font-weight: bolder; color: black;">자유게시판</span>
                    </div>
                    <h1 class="display-5 fw-bold text-dark ">${board.title }</h1>
                    <p> Written by <a class="fw-bold" href="# " style="color: #907B65; ">${board.userName }</a><span class="mx-1 ">/</span> <fmt:formatDate dateStyle="full" type="date" value="${board.postDate}"/> <span class="mx-1 "></span></p>
                    <div class="pt-4 ">
                        <div class=" mb-2 pb-4 border-bottom ">
                            <img src="${path }/resources/image/dbq_ye(50x2).png" alt="">
                            <p class="pt-2">${board.content }
                            </p>
                        </div>
                        <div class="mb-3 py-4 text-end">
                            <div>
                            	<c:if test="${!empty board.fileOriginal }">
	                                <a href="${path}/community/fileDown?fileOriginal=${board.fileOriginal}&fileRenamed=${board.fileRenamed}"><img src="${path }/resources/image/file.png" style="width: 27px;" alt=""><span style="color:#907B65 ; ">첨부파일 |</span></a>
                            	</c:if>
                                <c:if test="${!empty loginMember && loginMember.userNo == board.userNo }">
	                                <a href="${path}/community/updatefreeboard?freeboardNo=${board.freeBoardNo}"><img src="${path}/resources/image/pencil.png" style="width: 27px;" alt=""><span style="color:#907B65 ; ">수정 |</span> </a>
	                                <a href="${path}/community/delete?freeboardNo=${board.freeBoardNo}"><img src="${path }/resources/image/bin.png" style="width: 27px;" alt=""><span style="color:#907B65 ; ">삭제 |</span> </a>
                                </c:if>
                                <a href="#" data-bs-toggle="modal" data-bs-target="#exclaim"><img src="${path }/resources/image/megaphone.png" style="width: 27px;" alt=""><span style="color:#907B65 ; ">신고하기</span> </a>
                            </div>
                        </div>
                        <div class="row pt-3">
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
                        <!-- comments-->
                        <div class="mt-5 mb-4 ">
                            <h6 class="text-uppercase text-muted mb-4 ">${ comments.size() } comments</h6>
                            <c:if test="${ empty comments}">
                            <div class="d-flex mb-3 border-bottom py-5">
                                <div class="">
                                    <h5 class="" style="color: #907B65; ">
                                    	등록된 댓글이 없습니다. 소중한 댓글을 남겨주세요.
                                    </h5>
                                </div>
                            </div>
                            </c:if>
                            
                            <c:if test="${!empty comments}">
                            <c:forEach var="comment" items="${comments}">
                            <!-- comment-->
                            <div class="d-flex mb-4 border-bottom py-1">
                                <div>
                                    <h5 style="color: #907B65; ">${comment.userName } <span class="text-uppercase text-sm text-muted ps-4 "><i class="far fa-clock "></i> <fmt:formatDate dateStyle="full" type="date" value="${comment.postDate}"/></span>
                                        <span class="text-end ">
                                            <c:if test="${!empty loginMember && loginMember.userNo == comment.userNo }">
                                            	<a href="${path}/community/deleteComment?commentNo=${comment.commentNo}&freeboardNo=${board.freeBoardNo}" class="text-sm "> | <i class="fas fa-trash p-1 "> 댓글 삭제 </i></a>
                                            </c:if>
                                        </span>
                                    </h5>
                                    <p class="text-muted ">${comment.content }</p>
                                </div>
                            </div>
                            </c:forEach>
                            <!-- /comment-->
                            </c:if>
                        </div>
                        <!-- /comment-->
                        <!-- comment form-->
                        <div class="mb-5 mt-3 ">
                            <div class=" " id="leaveComment ">
                                <div class="mt-4 ">
                                    <h5 class="mb-2 text-end " style="color: #FFCD4A; ">Leave a comment</h5>
                                    <form class="form " id="comment-form " method="post" action="${path}/community/writefreeComment">
                                    	<input type="text" name="freeboardNo" value="${board.freeBoardNo }" hidden>
                                    	<input type="text" name="userNo" value="${loginMember.userNo}" hidden>
                                        <div class="mb-4 ">
                                            <label class="form-label " for="comment ">Comment <span class="required ">*</span></label>
                                            <textarea class="form-control " id="content" name="content" rows="4 "></textarea>
                                        </div>
                                        <div class="row ">
                                            <div class="text-start col-6 ">
                                                <button class="btn btn-outline-dark" type="button" onclick="location.href='${path}/community/freeboardList'"><i class="fas fa-align-left "></i> TO LIST</button>
                                            </div>
                                            <div class="text-end col-6 ">
                                                <button class="btn btn-outline-dark " type="submit"><i class="fas fa-comment "></i> Comment</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- /comment form-->
                    </div>
                    <!-- /comments-->
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
                        <form action="${path }/community/reportFree">
                            <div class="row">
                                <div class="form-group">
                                	<input type="text" name="boardType" value="${board.boardType }" hidden/>
                                	<input type="text" name="boardNo" value="${board.freeBoardNo }" hidden/>
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
        <div class="container px-6 py-1 ">

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