<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
	
	 <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-5 bg-gray-200 text-muted">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <img src="${path}/resources/image/togetherLogo.png" height="60" width="140" alt="">
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
                    border-end-0" type="email" placeholder="Your Email Address"
                    aria-label="Your Email Address">
                  <button class="btn btn-outline-dark border-start-0"
                    type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
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
              <p class="text-sm mb-md-0">&copy; 2022, TOGETHER. All rights
                reserved.</p>
            </div>
            <div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/visa.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/mastercard.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/paypal.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/western-union.svg" alt="..."></li>
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
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>
    </body>
</html>