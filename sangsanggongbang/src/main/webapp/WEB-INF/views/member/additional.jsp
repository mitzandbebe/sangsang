<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#address").value = data.address
        }
    }).open();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Spaces - Sign up</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Sign up">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Sign up">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Sign up">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath }/resources/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath }/resources/assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="${pageContext.request.contextPath }/resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="${pageContext.request.contextPath }/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css" href="${pageContext.request.contextPath }/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

<!-- VectorMap -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendor/jqvmap/dist/jqvmap.min.css">

<!-- Main CSS -->
<link type="text/css" href="${pageContext.request.contextPath }/resources/css/spaces.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>

<body>
    <main>

        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
    <div class="position-relative">
        <img src="${pageContext.request.contextPath }/resources/assets/img/brand/light-without-letter.svg" alt="Logo loader">
        <img src="${pageContext.request.contextPath }/resources/assets/img/brand/letter.svg" class="rotate-letter" alt="Letter loader">
    </div>
</div>

       <!-- Section -->
        <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                            <h1 class="mb-0 h3">부가정보를 입력하고 상상공방의 서비스를 제한없이 이용하세요!</h1>
                        </div>
                    </div>
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <form id ="signup" method="post" action="<c:url value='/member/addtional'/> ">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputIcon4">아이디(이메일)</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="mId" readonly="readonly" class="form-control" id="exampleInputIcon4" type="text" aria-label="email adress" value="${cookie.ck_userid.value }">
                                    </div>
                                </div>
                                <!-- End of Form -->
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="mName">이름</label>
                                        <div class="input-group mb-4">
                                            <input name ="mName" class="form-control" id="mName" placeholder="성명" type="text" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="mName">닉네임</label>
                                        <div class="input-group mb-4">
                                            <input name ="mNickname" class="form-control" id="mNickname" placeholder="닉네임을 입력해주세요." type="text" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="mName">핸드폰번호</label>
                                        <div class="input-group mb-4">
                                            <input name ="phone" class="form-control" id="phone" placeholder="휴대폰 번호를 입력해주세요.(-제외)" maxlength="11" type="text" style = "width: 50px" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="mName">생년월일</label>
                                        <div class="input-group mb-4">
                                            <input name ="mNickname" class="form-control" id="mNickname" placeholder="생년월일을 입력하세요.예)950720" type="text" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="mName">우편번호 &nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-sm btn-primary" onclick="kakaopost()" style="float: right;">우편번호 찾기</button></label>
                                        <div class="input-group mb-4">
                                           	<input name ="mZipcode" class="form-control" id="zipcode" readonly="readonly" placeholder="우편번호를 검색하세요." type="text" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="mName">주소</label>
                                        <div class="input-group mb-4">
                                           <input name ="mAddress" class="form-control" id="address" readonly="readonly" placeholder="주소를 입력하세요." type="text" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="mName">상세주소</label>
                                        <div class="input-group mb-4">
                                         <input name ="mAddressDetail" class="form-control" id="addressDetail"  placeholder="상세주소를 입력하세요." type="text" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="password_confirm">비밀번호 확인</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                            </div>
                                            <input class="form-control" id="password_confirm" placeholder="Confirm password" type="password" aria-label="Password" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" value="" id="terms">
                                        <label class="form-check-label" for="terms">
                                            <span class="small"><a class="text-secondary" href="./terms.html">약관</a>에 동의합니다.</span>
                                        </label>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">Create an account</button>
                            </form>
                            <div class="mt-3 mb-4 text-center">
                                <span class="font-weight-normal">or</span>
                            </div>
                            <div class="btn-wrapper my-4 text-center">
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                    <span aria-hidden="true" class="fab fa-facebook-f"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                    <span aria-hidden="true" class="fab fa-twitter"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook" type="button" aria-label="github button" title="github button">
                                    <span aria-hidden="true" class="fab fa-github"></span>
                                </button>
                            </div>
                            <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    Already have an account?
                                    <a href="./sign-in.html" class="font-weight-bold">Login here</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Core -->
<script src="${pageContext.request.contextPath }/resources/vendor/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/headroom.js/dist/headroom.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- NoUISlider -->
<script src="${pageContext.request.contextPath }/resources/vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="${pageContext.request.contextPath }/resources/vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="${pageContext.request.contextPath }/resources/vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="${pageContext.request.contextPath }/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="${pageContext.request.contextPath }/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="${pageContext.request.contextPath }/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="${pageContext.request.contextPath }/resources/vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="${pageContext.request.contextPath }/resources/vendor/chartist/dist/chartist.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="${pageContext.request.contextPath }/resources/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="${pageContext.request.contextPath }/resources/assets/js/spaces.js"></script>
</body>

</html>