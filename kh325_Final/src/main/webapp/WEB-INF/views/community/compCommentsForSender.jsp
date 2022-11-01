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
</head>
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

<section class="py-4" style="padding-top: 30px;">
    <div class="container">
        <!-- Chat Box-->
        <div class="px-4 py-5">
            
            <div class="row mb-4 pb-3 border-bottom">
                <div class="col-md-8">
                    <p class="h4 text-black-50 pt-3 blockquote-icon"><span class="ps-5 ms-2">동행을 신청하세요.</span></p>
                </div>
            </div>
            <c:if test="${!empty list}">
            <div class="row">
            	<c:forEach var="comment" items="${list}">
            	<c:if test="${!empty comment.msgSend}">
                <!-- Sender Message-->
                <div class="d-flex col-md-9 col-xl-7 mb-3"><img class="avatar avatar-border-white flex-shrink-0" src="${comment.senderAvatar}" alt="user">
                    <div class="ms-3">
                        <div class="bg-gray-200 rounded p-4 mb-2">
                            <p class="text-sm mb-0" style="width: 410px;">${comment.msgSend}</p>
                        </div>
                        <p class="small text-muted ms-3"><fmt:formatDate type="date" dateStyle="full" value="${comment.postDate }"/></p>
                    </div>
                </div>
                </c:if>
                <c:if test="${!empty comment.msgRec}">
                <!-- Reciever Message-->
                <div class="d-flex col-md-9 col-xl-7 ms-auto mb-3">
                    <div class="me-3" style="padding-left: 160px;">
                        <div class="bg-primary rounded p-4 mb-2 ">
                            <p class="text-sm mb-0 text-white" style="width: 410px;">${comment.msgRec }</p>
                        </div>
                        <p class="small text-muted ms-3"><fmt:formatDate type="date" dateStyle="full" value="${comment.postDate }"/></p>
                    </div><img class="avatar avatar-border-white flex-shrink-0" src="${comment.receiverAvatar}" alt="user">
                </div>
                </c:if>
				</c:forEach>
            </div>
            </c:if>
            <c:if test="${empty list }">
            <div class="row text-center">
				<h3 class="text-muted h3 py-5">Together, to get there</h3>            
            </div>	
            </c:if>
        </div>
        <!-- Typing area-->
        <form class="bg-light rounded shadow-sm" action="${path}/community/sendCompComment" method="post">
            <div class="input-group">
            	<input type="text" name="senderNo" value="${loginMember.userNo}" hidden>
            	<input type="text" name="receiverNo" value="${companion.userNo}" hidden>
            	<input type="text" name="companionNo" value="${companion.companionNo}" hidden>
                <textarea class="form-control border-0 p-4 bg-light text-sm" name="msgSend" placeholder="Type a message" aria-describedby="button-sendMessage"></textarea>
                <button class="btn btn-link" id="button-sendMessage" type="submit"><i class="fa fa-paper-plane"></i></button>
            </div>
        </form>
    </div>
</section>

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
<!-- Price Slider-->
<script src="${path}/resources/vendor/nouislider/nouislider.min.js"></script>
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

</html>