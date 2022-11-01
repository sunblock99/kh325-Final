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
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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

<body>
    <div class="container-fluid px-3">
        <div class="row min-vh-100">
            <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
                <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
                    <div class="mb-4"><img class="img-fluid mb-4" src="${path}/resources/img/loginLogo.png" alt="..." style="max-width: 8rem;">
                        <h2 class="text-pB">회원 가입을 환영합니다!
                        </h2>
                        <p class="text-muted text-pB">지금 회원가입 하신 후 사이트에서 다양한 서비스를 경험해보세요.</p>
                    </div>
                    <form class="form-validate" name="signinFrm" action="${path}/myPage/signup" method="post">
                        <div class="mb-4">
                            <label class="form-label text-pB" for="loginUsername"> 이름</label>
                            <input class="form-control text-pB" name="userName" id="name" type="text" placeholder="홍길동" autocomplete="off" required data-msg="Please enter your email">
                        </div>
                        <div class="mb-4">
                            <label class="form-label text-pB" for="loginUseremail"> 아이디(이메일 주소)</label>
                            <input class="form-control text-pB" name="userEmail" id="email" type="email" placeholder="name@address.com" autocomplete="off" required data-msg="Please enter your email">
                        </div>
                        <div class="mb-4">
                            <label class="form-label text-pB" for="loginUserphone"> 연락처</label>
                            <input class="form-control text-pB" name="userPhone" id="phone" type="tel" placeholder="010-0000-0000" autocomplete="off" required data-msg="Please enter your mobile number">
                        </div>
                        <div class="mb-4">
                            <label class="form-label text-pB" for="loginPassword"> 비밀번호</label>
                            <input class="form-control text-pB" name="userPassword" id="password1" placeholder="Password" type="password" required data-msg="Please enter your password">
                        </div>
                        <div class="mb-4">
                            <label class="form-label text-pB" for="loginPassword2"> 비밀번호 확인</label>
                            <input class="form-control text-pB" name="password2" id="password2" placeholder="Password" type="password" required data-msg="Please enter your password">
                        </div>
                        <div class="d-grid gap-2 text-pB">
                            <button class="btn btn-lg btn-primary text-pB" id="enrollSubmit" type="submit" style=" background-color: #FFF1CC; border-color: #FC950D; color: #FC950D! important;">회원 가입</button>
                        </div>
                        <hr class="my-3 hr-text letter-spacing- text-pB2" data-content="OR">
                        <div class="d-grid gap-2">
                            <button class="btn btn text-pB" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=cd8b1886f132139b606ba3a3939880a9&redirect_uri=http://localhost:82/kakao/callback&response_type=code'" style="color: #F9E000; border-color: #F9E000; position: relative; padding-left: 12;"><img src="${path}/resources/icons/kakaoLogin.png" style="width: 20px; height: 20pxp; float:left; "><i class="fa-2x  fab btn-social-icon"> </i><span class="d-none d-sm-inline">카카오톡 로그인</span></button>
                        </div>
                        <!--<hr class="my-4">
                         <p class="text-sm text-muted">By signing up you agree to Directory's <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a>.</p> -->
                    </form>
                    <a class="close-absolute me-md-5 me-xl-6 pt-5" href="index.html">
                        <svg class="svg-icon w-3rem h-3rem" style="color: #FC950D; text-decoration: none">
                <use xlink:href="#close-1"> </use>
              </svg></a>
                </div>
            </div>
            <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
                <!-- Image-->
                <div class="bg-cover h-100 me-n3" style="background-image: url(${path}/resources/img/photo/zxz.jpg);"></div>
            </div>
        </div>
    </div>
   
    
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
    
    <script type="text/javascript">
	$(function () {
		$("#password2").blur((event) => {
			let password1 = $("#password1").val();			
			let password2 = $(event.target).val();
			
			if(password1.trim() != password2.trim()) {
				alert("비밀번호가 일치하지 않습니다.");
				
				$("#password1").val("");
				$(event.target).val("");
				$("#password1").focus();
			}
		});
    	
	    $("#enrollSubmit").on("click", () => {
	    	// TODO 전송하기 전에 각 영역에 유효성 검사로직을 추가하는 부분!
	    	//return false;
	    });
	    
	    // 아이디 중복을 확인하는 AJAX 코드
	    $("#checkDuplicate").on("click", ()=>{
	    	let id = $("#email").val().trim();
	    	
	    	if(id.length < 4){
				alert("아이디는 최소 4글자입니다.")
				return;
	    	}
	    	
	    	$.ajax({
	    		type:"get",
	    		url:"${path}/member/idCheck",
	    		data:{id}, // 속성 키값 이름으로 서버에 보낼경우 1개만 쓴다. 
	    		success:
	    			(data)=>{
	    				console.log(data);
	    				if(data.validate === true){
	    					alert("이미 사용중인 아이디입니다.")
	    				}else{
	    					alert("사용 가능합니다.")
	    				}
	    			},
	    		error:
	    			(e)=>{
	    				console.log(e);
	    			}
	    	});
	    });
	});
</script>
    
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>
</body>

</html>