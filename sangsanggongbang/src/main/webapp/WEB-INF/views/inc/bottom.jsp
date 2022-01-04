 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
 <footer class="footer py-6 bg-primary text-white">

    <div class="container">
        <div class="row">
            <div class="col-xl-3 mb-3 mb-xl-0">
                <img src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_bottom.png" height="30" class="mb-3" alt="Spaces logo">
                <p>常想工房<br>One Day Class Matching Site</p>
            </div>
            <div class="col-6 col-xl-2 mb-5 mb-xl-0">
                <span class="h5">SSGB</span>
                <ul class="footer-links mt-2">
                    <li><a target="_blank" href="https://themesberg.com/blog">회사소개</a></li>
                    <li><a target="_blank" href="https://themesberg.com/products">위치안내</a></li>
                    <li><a target="_blank" href="https://themesberg.com/about">인재채용</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">관리자로그인</a></li>
                </ul>
            </div>
            <div class="col-6 col-xl-3 mb-5 mb-xl-0">
                <span class="h5">Other</span>
                <ul class="footer-links mt-2">
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/overview/">공지사항 <span class="badge badge-sm badge-secondary ml-2">v3.0</span></a></li>
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/changelog/">FAQ</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">고객센터</a></li>
                    <li><a target="_blank" href="https://themesberg.com/licensing">이용약관</a>
                    </li>
                    <li><a target="_blank" href="https://themesberg.com/licensing">개인정보처리방침</a>
                    </li>
                </ul>
            </div>
            <div class="col-12 col-xl-4 mb-5 mb-xl-0">
                <span class="h5">Get the app</span>
                <p class="text-muted font-small mt-2">It's easy. Just select your device.</p>
                <a href="#" class="btn btn-sm btn-white mb-xl-0 mr-2">
                    <span class="d-flex align-items-center">
                        <span class="icon icon-brand mr-2"><span class="fab fa-apple"></span></span>
                        <span class="d-inline-block text-left">
                            <small class="font-weight-normal d-block">Available on</small> App Store 
                        </span> 
                    </span>
                </a>
                <a href="#" class="btn btn-sm btn-white">
                    <span class="icon icon-brand mr-2"><span class="fab fa-google-play"></span></span>
                    <span class="d-inline-block text-left">
                        <small class="font-weight-normal d-block">Available on</small> Google Play
                    </span> 
                </a>
            </div>
        </div>
        <hr class="my-3 my-lg-5">
        <div class="row">
            <div class="col mb-md-0">
                <a target="_blank" class="d-flex justify-content-center">
                    <img src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_bottom_cpr.png" height="25" class="mb-3" alt="Themesberg Logo">
                </a>
            <div class="d-flex text-center justify-content-center align-items-center" role="contentinfo">
                <p class="font-weight-normal font-small mb-0">Copyright Â © SSGB
                    <span class="current-year">2021</span>. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

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

<script src="${pageContext.request.contextPath }/resources/assets/js/balancing.js"></script>
<!-- 아임포트 결제모듈-->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 결제모듈 js-->
<script type="text/javascript"
    src="<c:url value='/resources/assets/js/payments.js'/> "></script>


</body>

</html>