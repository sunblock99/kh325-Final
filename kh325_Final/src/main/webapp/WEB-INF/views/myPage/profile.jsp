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

    <!-- ===boxicons===-->
    <link href='http://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

    <script src="https://kit.fontawesome.com/b4c02836de.js" crossorigin="anonymous"></script>

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
                                        <p class="mb-0 text-pB" style="color: black">커뮤니티</p>
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
                    <h1 class="hero-heading mb-0 text-pEb">Profile</h1>
                    <div class="text-block ">
                    <form action="${path}/myPage/update" method="post" enctype="multipart/form-data">
                        <div class=" mt-5 mb-5 col-12">
                            <label class="form-label" for="password-current" style="color:black">
                                <h6 class="text-pEb">이름</h6>
                            </label>
                            <input class="form-control" name="userName" id="name" type="name" value="${loginMember.userName}" readonly required>
                        </div>
                        
                        <div class=" mt-5 mb-5 col-12">
                            <label class="form-label" for="password-current" style="color:black">
                                <h6 class="text-pEb">아이디 (이메일 주소)</h6>
                            </label>
                            <input class="form-control" name="userEmail" id="email" type="email" value="${loginMember.userEmail}" readonly required>
                        </div>
                        <div class="row">
                            <div class="col-sm-8">
                                <h6 class="text-pEb">비밀번호</h6>
                            </div>
                            <div class="col text-end">
                                <button class="btn btn-link ps-0 text-primary collapsed" style="color: #FC950D !important;" type="button" data-bs-toggle="collapse" data-bs-target="#updatePassword" aria-expanded="false" aria-controls="updatePassword">Update</button>
                            </div>
                        </div>
                        <div class="collapse" id="updatePassword">
                            <div class="row mt-4">
                                <div class="mb-4 col-12">
                                    <label class="form-label text-pEb" for="password-current">현재 비밀번호</label>
                                    <input class="form-control" type="password" name="userPassword" id="password1">
                                </div>
                                <div class="mb-4 col-md-6">
                                    <label class="form-label text-pEb" for="password-new">새로운 비밀번호</label>
                                    <input class="form-control" type="password" name="newPassword" id="newPassword">
                                </div>
                                <div class="mb-4 col-md-6">
                                    <label class="form-label text-pEb" for="password-confirm">비밀번호 재입력</label>
                                    <input class="form-control" type="password" name="conPassword" id="conPassword">
                                </div>
                            </div>
                            <button class="btn btn-outline-primary text-pEb" type="button" id="updateSubmit" style="background-color: #FFF1CC; border-color: #FFF1CC; color:#FC950D">비밀번호 업데이트</button>
                        </div>
                        <div class=" mt-5 mb-4 col-12">
                            <label class="form-label" for="password-current" style="color:black">
                                <h6 class="text-pEb">연락처</h6>
                            </label>
                            <input class="form-control" name="userPhone" id="phone" type="tel" value="${loginMember.userPhone}">
                        </div>
                        <div class=" mt-5 mb-4 col-12">
                            <label class="form-label" for="password-current" style="color:black">
                                <h6 class="text-pEb">주소</h6>
                            </label>
                            <input class="form-control" name="userAddress" id="address" type="text"  value="${loginMember.userAddress}">
                        </div>
                        <div class="mb-5 mt-5 col-lg-6">
                            <label class="form-label" for="formFile" style="color:black">
                                <h6 class="text-pEb"> 프로필 사진 변경</h6>
                            </label>
                            <input class="form-control" name="upfile" id="formFile" type="file">
                        </div>
                        <button class="btn btn-primary text-pEb" type="submit" style="background-color: #FFF1CC; border-color: #FFF1CC; color:#FC950D">수정하기</button>
                        <button class="btn btn-primary text-pEb" type="button" onclick="location.href='${path}/member/delete'" id="deleteMember" style="background-color: #FFF1CC; border-color: #FFF1CC; color:#FC950D">탈퇴하기</button>
                    </form>
                    </div>
                    

                </div>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <jsp:include page="/WEB-INF/views/common/footer.jsp">
			<jsp:param value="예아바디" name="title"/>
</jsp:include>
   
    <script type="text/javascript" src="${path}/resources/vendor/jquery/jquery.js"></script>
    <script>
		$(document).ready(() => {
			$("#updateSubmit").on("click", (e) => {
				let pass1 = $("#newPassword").val();			
				let pass2 = $("#conPassword").val();
				
				if(pass1.trim() != pass2.trim()) {
					alert("비밀번호가 일치하지 않습니다.");
					
					$("#newPassword").val("");
					$("#conPassword").val("");
					$("#newPassword").focus();
					
					return false;
				}
				
				let userPassword = $("#newPassword").val();
// 				alert(userPassword);
				location.replace('${path}/myPage/updatePwd?userPassword=' + userPassword);
				
				
			});
		});
	</script>
	
	<script type="text/javascript">
		$(function () {
			$("#deleteMember").on("click", (e) => {
				if(confirm("정말로 탈퇴하시겠습니까?")) {
					location.replace('${path}/myPage/delete');
				}
			});
		
			$("updatePwd").on("click", (e) => {
				const url="${path}/myPage/updatePwd";
				const status = "left=500px,top=200px,width=400px,height=210px"
				
				open(url, "", status);
			});
		});

		

	</script>
	 <script>
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