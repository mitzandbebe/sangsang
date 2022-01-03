<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../inc/top.jsp" %>

<br><br><br>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Fontawesome -->
<link type="text/css" href="<c:url value="/resources"/>/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css" href="<c:url value="/resources"/>/vendor/leaflet/dist/leaflet.css" rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet" href="<c:url value="/resources"/>/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

<!-- VectorMap -->
<link rel="stylesheet" href="<c:url value="/resources"/>/vendor/jqvmap/dist/jqvmap.min.css">

<!-- Main CSS -->
<link type="text/css" href="<c:url value="/resources"/>/css/spaces.css" rel="stylesheet">
</head>
<body>
                <div class="row justify-content-sm-center align-items-center py-3 mt-3">
                    <div class="col-12 col-lg-8">
                        <div class="row">
                            <div class="col-9 col-md-6">
                               <h6 class="font-weight-bolder d-inline mb-0 mr-3">Share:</h6>
                                <button class="btn btn-sm mr-2 btn-icon-only btn-pill btn-twitter d-inline"  aria-label="twitter social link"><span class="fab fa-twitter"></span></button>
                                <button class="btn btn-sm mr-2 btn-icon-only btn-pill btn-facebook d-inline"  aria-label="facebook social link"><span class="fab fa-facebook-f"></span></button>
                                <button class="btn btn-sm btn-icon-only btn-pill btn-reddit d-inline"  aria-label="reddit social link"><span class="fab fa-reddit-alien"></span></button>
                            </div>
                            <div class="col-3 col-md-6 text-right">
                                <span class="far fa-bookmark text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Bookmark story"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
        <div class="section section-md bg-white text-black pt-0 line-bottom-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
                        <div>
                        <br>
                            <label class="h5 mb-4" for="exampleFormControlTextarea1"><span class="badge badge-md badge-primary text-uppercase mr-2">1</span> Q &A</label>
                            <textarea class="form-control border border-light-gray" id="exampleFormControlTextarea1" placeholder="Please ask questions." rows="6" data-bind-characters-target="#charactersRemaining" maxlength="1000"></textarea>
                            <div class="d-flex justify-content-between mt-3">
                                <small class="font-weight-light text-dark"><span id="charactersRemaining">
                                        <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                    / 1000자 이하</small>
                                <button class="btn btn-primary animate-up-2" >Send</button>
                            </div>
                            <div class="mt-5">
                                <div class="card bg-soft border-light rounded p-4 mb-4">
                                    <div class="d-flex justify-content-between mb-4">
                                        <span class="font-small">
                                            <a href="#">
                                                <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                    src="<c:url value="/resources"/>/assets/img/team/profile-picture-1.jpg" alt="avatar">
                                                <span class="font-weight-bold">늘찬</span>
                                        </a>
                                        <span class="ml-2">2 min ago</span>
                                        </span>
                                        <div>
                                            <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                <span class="far fa-flag"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <p class="m-0">Hello, I have a question<br><br>                                                            When is the next product coming?</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div>
                                            <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                            <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                            <span class="font-small font-weight-light">4 likes</span>
                                        </div>
                                        <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer1" aria-expanded="false" aria-controls="replyContainer1"><span
                                                class="fas fa-reply mr-2"></span> Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer1">
                                        <label class="mb-4" for="exampleFormControlTextarea10">Reply</label>
                                        <textarea class="form-control border" id="exampleFormControlTextarea10" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply" maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3">
                                            <small class="font-weight-light"><span id="charactersRemainingReply">
                                                    <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                characters remaining</small>
                                            <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card bg-soft border-light rounded p-4 ml-5 mb-4">
                                    <div class="d-flex justify-content-between mb-4">
                                        <span class="font-small">
                                            <a href="#">
                                                <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                    src="<c:url value="/resources"/>/assets/img/team/profile-picture-2.jpg" alt="Bonnie avatar">
                                                <span class="font-weight-bold">상상공방</span>
                                        </a>
                                        <span class="ml-5">5 min ago</span>
                                        </span>
                                        <div>
                                            <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                <span class="far fa-flag"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <p class="m-0">Hello Neulchan.<br><br>We're happy to hear you like our product. A new one will come soon enough!</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div>
                                            <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                            <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                            <span class="font-small font-weight-light">2 likes</span>
                                        </div>
                                        <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer2" aria-expanded="false" aria-controls="replyContainer2"><span
                                                class="fas fa-reply mr-2"></span> Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer2">
                                        <label class="mb-4" for="exampleFormControlTextarea11">Reply</label>
                                        <textarea class="form-control border" id="exampleFormControlTextarea11" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply2" maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3">
                                            <small class="font-weight-light"><span id="charactersRemainingReply2">
                                                    <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                characters remaining</small>
                                            <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card bg-soft border-light rounded p-4 mb-4">
                                    <div class="d-flex justify-content-between mb-4">
                                        <span class="font-small">
                                            <a href="#">
                                                <img class="avatar-sm img-fluid rounded-circle mr-2"  src="<c:url value="/resources"/>/assets/img/team/profile-picture-3.jpg" alt="James avatar">
                                                <span class="font-weight-bold">James Curran</span>
                                            </a>
                                            <span class="ml-2">2 min ago</span>
                                        </span>
                                        <div>
                                            <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                <span class="far fa-flag"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <p class="m-0">Hey there! We want to say that <span class="text-tertiary">you're
                                            awesome</span> and we think you'll build great websites! Why not use Pixel to make things easier?</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div>
                                            <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                            <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                            <span class="font-small font-weight-light">4 likes</span>
                                        </div>
                                        <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer3" aria-expanded="false" aria-controls="replyContainer3"><span
                                                class="fas fa-reply mr-2"></span> Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer3">
                                        <label class="mb-4" for="exampleFormControlTextarea12">Reply</label>
                                        <textarea class="form-control border" id="exampleFormControlTextarea12" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply3" maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3">
                                            <small class="font-weight-light"><span id="charactersRemainingReply3">
                                                    <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                characters remaining</small>
                                            <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                        </div>
                                    </div>
                                </div>
                                <div id="extraContent" style="display: none;">
                                    <div class="card bg-soft border-light p-4 mb-4">
                                        <div class="d-flex justify-content-between mb-4">
                                            <span class="font-small">
                                                <a href="#">
                                                    <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                        src="<c:url value="/resources"/>/assets/img/team/profile-picture-2.jpg" alt="Neil avatar">
                                                    <span class="font-weight-bold">Neil Sims</span>
                                            </a>
                                            <span class="ml-2">2 min ago</span>
                                            </span>
                                            <div>
                                                <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                    <span class="far fa-flag"></span>
                                                </button>
                                            </div>
                                        </div>
                                        <p class="m-0">안녕하세요 늘찬 입니다 <br><br>                                                                When is the next product coming? :)</p>
                                        <div class="mt-4 mb-3 d-flex justify-content-between">
                                            <div>
                                                <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                                <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                                <span class="font-small font-weight-light">4 likes</span>
                                            </div>.
                                            <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer4" aria-expanded="false" aria-controls="replyContainer4"><span
                                                    class="fas fa-reply mr-2"></span> Reply</a>
                                        </div>
                                        <div class="collapse" id="replyContainer4">
                                            <label class="mb-4" for="exampleFormControlTextarea13">Reply</label>
                                            <textarea class="form-control border" id="exampleFormControlTextarea13" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply4" maxlength="1000"></textarea>
                                            <div class="d-flex justify-content-between mt-3">
                                                <small class="font-weight-light"><span id="charactersRemainingReply4">
                                                        <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                    characters remaining</small>
                                                <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card bg-soft rounded border-light p-4 ml-5 mb-4">
                                        <div class="d-flex justify-content-between mb-4">
                                            <span class="font-small">
                                                <a href="#">
                                                    <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                        src="<c:url value="/resources"/>/assets/img/team/profile-picture-5.jpg" alt="Jose avatar">
                                                    <span class="font-weight-bold">Jose Leos</span>
                                            </a>
                                            <span class="ml-2">2 min ago</span>
                                            </span>
                                            <div>
                                                <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                                    <span class="far fa-flag"></span>
                                                </button>
                                            </div>
                                        </div>
                                        <p class="m-0">Hi John Doe,<br><br>We're happy to hear you like our product. A new one will come soon enough!</p>
                                        <div class="mt-4 mb-3 d-flex justify-content-between">
                                            <div>
                                                <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                                <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                                <span class="font-small font-weight-light">2 likes</span>
                                            </div>
                                            <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer5" aria-expanded="false" aria-controls="replyContainer5"><span
                                                    class="fas fa-reply mr-2"></span> Reply</a>
                                        </div>
                                        <div class="collapse" id="replyContainer5">
                                            <label class="mb-4" for="exampleFormControlTextarea14">Reply</label>
                                            <textarea class="form-control border" id="exampleFormControlTextarea14" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply5" maxlength="1000"></textarea>
                                            <div class="d-flex justify-content-between mt-3">
                                                <small class="font-weight-light"><span id="charactersRemainingReply5">
                                                        <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                                    characters remaining</small>
                                                <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-5 text-center">
                                    <button id="loadOnClick" class="btn btn-primary btn-loading-overlay mr-2 mb-2" >
                                        <span class="spinner">
                                            <span class="spinner-border spinner-border-sm" role="status"
                                                aria-hidden="true"></span>
                                        </span>
                                        <span class="ml-1 btn-inner-text">Load more comments</span>
                                    </button>
                                    <p id="allLoadedText" style="display: none;">That's all, Sparky!
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <footer class="footer py-6 bg-primary text-white">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 mb-3 mb-xl-0">
                <img src="../assets/img/brand/light.svg" height="30" class="mb-3" alt="Spaces logo">
                <p>Premium Bootstrap Directory Listing Template</p>
            </div>
            <div class="col-6 col-xl-2 mb-5 mb-xl-0">
                <span class="h5">Themesberg</span>
                <ul class="footer-links mt-2">
                    <li><a target="_blank" href="https://themesberg.com/blog">Blog</a></li>
                    <li><a target="_blank" href="https://themesberg.com/products">Products</a></li>
                    <li><a target="_blank" href="https://themesberg.com/about">About Us</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-6 col-xl-3 mb-5 mb-xl-0">
                <span class="h5">Other</span>
                <ul class="footer-links mt-2">
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/overview/">Documentation <span class="badge badge-sm badge-secondary ml-2">v3.0</span></a></li>
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/changelog/">Changelog</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">Support</a></li>
                    <li><a target="_blank" href="https://themesberg.com/licensing">License</a>
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
                <a href="https://themesberg.com" target="_blank" class="d-flex justify-content-center">
                    <img src="../assets/img/themesberg.svg" height="25" class="mb-3" alt="Themesberg Logo">
                </a>
            <div class="d-flex text-center justify-content-center align-items-center" role="contentinfo">
                <p class="font-weight-normal font-small mb-0">Copyright © Themesberg
                    <span class="current-year">2020</span>. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

    <!-- Core -->
<script src="<c:url value="/resources"/>/vendor/jquery/dist/jquery.min.js"></script>
<script src="<c:url value="/resources"/>/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="<c:url value="/resources"/>/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<c:url value="/resources"/>/vendor/headroom.js/dist/headroom.min.js"></script>
<script src="<c:url value="/resources"/>/vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- NoUISlider -->
<script src="<c:url value="/resources"/>/vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="<c:url value="/resources"/>/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="<c:url value="/resources"/>/vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="<c:url value="/resources"/>/vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="<c:url value="/resources"/>/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="<c:url value="/resources"/>/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="<c:url value="/resources"/>/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="<c:url value="/resources"/>/vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="<c:url value="/resources"/>/vendor/chartist/dist/chartist.min.js"></script>
<script src="<c:url value="/resources"/>/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="<c:url value="/resources"/>/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="<c:url value="/resources"/>/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="<c:url value="/resources"/>/assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="<c:url value="/resources"/>/assets/js/spaces.js"></script>
    <script>
        // here you should load content from an Ajax request and when it
        // loads you can disable the button from loading
        $('#loadOnClick').click(function() {
            $button = $(this);
            $loadContent = $('#extraContent');
            $allLoaded = $('#allLoadedText');
            $button.addClass('btn-loading');
            $button.attr('disabled', true);

            setTimeout(function() {
                $loadContent.show();
                $button.hide();
                $allLoaded.show();
            }, 1500);
        });
    </script>
</body>
</html>
<%@ include file="../inc/bottom.jsp" %>