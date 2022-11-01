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
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <link rel="stylesheet" href="${path}/resources/css/course_detail.css">
    
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <link rel="stylesheet" href="${path}/resources/css/font.css">
</head>
<style>
    /*폰트 적용*/
    
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Black.ttf);
    }
    
    .text-pBlack {
        font-family: 'pBlack';
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-ExtraBold.ttf);
    }
    
    .text-pEb {
        font-family: 'pEb';
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Bold.ttf);
    }
    
    .text-pB {
        font-family: 'pB';
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-SemiBold.ttf);
    }
    
    .text-pSb {
        font-family: 'pSb';
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Medium.ttf);
    }
    
    .text-pM {
        font-family: 'pM';
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        letter-spacing: 1px;
        src: url(${path}/resources/font/Pretendard-Regular.ttf);
    }
    
    .text-pR {
        font-family: 'pR';
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Light.ttf);
    }
    
    .text-pL {
        font-family: 'pL';
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-ExtraLight.ttf);
    }
    
    .text-pEl {
        font-family: 'pEl';
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Thin.ttf);
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
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<body style="padding-top: 72px;">
    <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
		<jsp:param value="예아바디" name="title"/>
	</jsp:include>

    <section class="py-5">
        <div class="container" style="padding-top:30px;">
            <div class="row">
                <div class="col-lg-3 me-lg-auto">
                    <div class="card border-0 shadow mb-6 mb-lg-0">
                        <div class="card-header bg-gray-100 py-4 border-0 text-center" style="background-color: #FFF1CC!important;">
                            <h3 class="text-pB">나의 회원정보</h3>
                            <p class=" text-xs mb-4 text-pB" style="color:#987107">오늘도 투게더와 함께 멋진 여행을 계획해보세요.</p>
                            <a class="d-inline-block" href="#"><img class="d-block avatar avatar-xxl p-2 mb-2" src="${loginMember.userAvatar }" alt=""></a>
                            <h5 class="text-pB"><c:out value="${loginMember.userName}"/></h5>
                            <p class="text-muted text-sm mb-0 text-pB"><c:out value="${loginMember.userAddress}"/> </p>
                        </div>
                        <div class="card-body p-5" style="height: 540px;">
                            <div class="d-flex align-items-center  mb-2 ">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
              <use xlink:href="#identity-1"> </use>
            </svg>
                                </div>
                                <div>
                                    <a href="${path}/myPage/profile">
                                        <p class="mb-0 text-pB" style="color: black">회원 정보</p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
              <use xlink:href="#heart-1"> </use>
            </svg>
                                </div>
                                <div>
                                    <a href="${path}/myPage/bookmark">
                                        <p class="mb-0 text-pB" style="color: black">즐겨찾기</p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
            <use xlink:href="#edit-1"> </use>
          </svg>
                                </div>
                                <div>
                                    <a href="${path}/myPage/review">
                                        <p class="mb-0 text-pB" style="color: black">작성 리뷰</p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
						            	<use xlink:href="#chat-app-1"> </use>
						          	</svg>
                                </div>
                                <div>
                                    <a href="${path}/myPage/community">
                                        <p class="mb-0 text-pB" style="color: black"><b>커뮤니티</b></p>
                                    </a>
                                </div>
                            </div>

                            <hr>
                            <div class="d-flex align-items-center  mb-2 ">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
						              <use xlink:href="#image-gallery-1"> </use>
						            </svg>
                                </div>
                                <div>
                                    <a href="${path}/community/gallery?searchType=uno&searchValue=${loginMember.userNo}">
                                        <p class="mb-0 text-pB" style="color: black">나의 갤러리</p>
                                    </a>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex align-items-center mb-2">
                                <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2" style="background-color: #FFF1CC">
                                    <svg class="svg-icon text-primary svg-icon-md" style="color: #FC950D !important;">
							          <use xlink:href="#road-1"> </use>
							        </svg>
                                </div>
                                <div>
                                    <a href="${path}/myPage/myCourse">
                                        <p class="mb-0 text-pB" style="color: black">나의 여행코스</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 ps-lg-5">
                    <h1 class="hero-heading mb-10 text-pEb">Community</h1>
                    <div class="text">
                        <p class="text-muted text-pEb">커뮤니티에 작성하신 글을 조회하실 수 있습니다. </p>
                    </div>
                    <br>
                    <div>
                        <label class="form-label me-2 text-pB" for="form_sort">정렬</label>
                        <select class="selectpicker text-pB" name="sortBy" id="sortBy" title="<c:out value="${boardCate }"/>" data-style="btn-selectpicker" onchange="requestBoard()">
                          	<option class="text-pB" value="" disabled>게시판</option>
                          	<c:if test="${!empty param.boardCate }">
                            	<option value="${param.boardCate }" selected>${param.boardCate}</option>
                            </c:if>
                            <option class="text-pB" value="COMM_FREEBOARD">자유게시판</option>
                            <option class="text-pB" value="COMM_JOURNEY">여행후기</option>
                            <option class="text-pB" value="COMM_COMPANION">동행구하기</option>
                        </select>
                    </div>
                    <script type="text/javascript">
                    
                    	function requestBoard() {
                    		console.log("gg")
                    		var sort = $("#sortBy option:selected").val();
                	    	var contextPath = '<c:out value='${path}'/>';
                	    	var path = '${path}/myPage/community?sortBy='+sort+'&page=1';
                	    	console.log(path);
                	    	location.replace(path);
                    	}
                    
                    </script>

                    <br>

                    <div class="table-responsive text-sm mb-5">
                        <table class="table table-striped">
                            <thead class="bg-gray-200">
                                <tr class="border-0">
                                    <th class="text-center">게시판 명</th>
                                    <th>게시글 제목</th>
                                    <th></th>
                                    <th class="text-center">작성일</th>
                                    <th class="text-center" style="text-align:center">조회수</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="Community" items="${communityList}">
                                <tr>
                                	<c:if test="${Community.boardType eq 'FB' }">
	                                    <td class="text-center "><a class="text-black" href="">자유/모임</a></td>
                                	</c:if>
                                	<c:if test="${Community.boardType eq 'CB' }">
	                                    <td class="text-center "><a class="text-black" href="">동행/모임</a></td>
                                	</c:if>
                                	<c:if test="${Community.boardType eq 'JB' }">
	                                    <td class="text-center "><a class="text-black" href="">여행후기</a></td>
                                	</c:if>
                                	
                                    <td class="fw-bold" colspan="2" ><a class="text-black" href=""><c:out value="${Community.title}"/></a></td>
                                    
                                    <td class="text-center"><fmt:formatDate type="date" dateStyle="long" value="${Community.postDate}"/></td>
                                    <td class="text-center"><c:out value="${Community.count}"/></td>
                                    <c:if test="${Community.boardType eq 'FB'}">
	                                    <td class="text-end">
		                                    <a href="${path}/community/updatefreeboard?freeboardNo=${Community.boardNo}">
		                                    	<i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i><span class="text-black">수정</span>
		                                    </a>
	                                    </td>
	                                    <td class="text-center">
		                                    <a href="${path}/myPage/deleteCommunity?freeboardNo=${Community.boardNo}">
			                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>
			                                    <span class="text-black">삭제</span>
		                                    </a>
                                    	</td>
                                    </c:if>
                                    <c:if test="${Community.boardType eq 'JB'}">
	                                    <td class="text-end">
		                                    <a href="${path}/community/updateJourney?journeyNo=${Community.boardNo}">
		                                    	<i class="fa fa-pen opacity-5 me-1" style="color:gray;" aria-hidden="true"></i><span class="text-black">수정</span>
		                                    </a>
	                                    </td>
	                                    <td class="text-center">
		                                    <a href="${path}/myPage/deleteCommunity?journeyNo=${Community.boardNo}">
			                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>
			                                    <span class="text-black">삭제</span>
		                                    </a>
                                    	</td>
                                    </c:if>
                                    <c:if test="${Community.boardType eq 'CB'}">
	                                    <td class="text-center" colspan="2">
		                                    <a href="${path}/myPage/deleteCommunity?companionNo=${Community.boardNo}&userNo=${loginMember.userNo}">
			                                    <i class="fa fa-trash opacity-5 me-1" style="color:gray;" aria-hidden="true"></i>
			                                    <span class="text-black">삭제</span>
		                                    </a>
                                    	</td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="mt-5" style="width: 348px; ">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination" style="margin-left: 400px; margin-right: 500px;">
                            	 <c:if test="${pageInfo.endPage > 2 }">
                                 <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
									<c:if test="${pageInfo.currentPage == status.current}">
										<li class="page-item disabled"><a class="page-link " href="#"><c:out value="${status.current}"/></a></li>
									</c:if>
									<c:if test="${pageInfo.currentPage != status.current}">
										 <li class="page-item-course ">
										 	<a class="page-link-course" href="#" onclick="movePage('${path}/community/freeboardList?page=${status.current}');">
												<c:out value="${status.current}"/>
											</a>
										</li>
									</c:if>
								</c:forEach>
								</c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
    </section>
    <!-- Footer-->
    <jsp:include page="/WEB-INF/views/common/footer.jsp">
			<jsp:param value="예아바디" name="title"/>
</jsp:include>
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
</body>

</html>