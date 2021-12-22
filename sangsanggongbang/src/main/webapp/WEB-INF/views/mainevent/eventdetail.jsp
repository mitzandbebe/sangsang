<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>이벤트 상세보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Blog post">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Blog post">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Blog post">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/resources/assets/img/favicon/apple-touch-icon.png'/> ">
<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/assets/img/favicon/favicon-32x32.png'/> ">
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/assets/img/favicon/favicon-16x16.png'/> ">
<link rel="manifest" href="<c:url value='/resources/assets/img/favicon/site.webmanifest'/> ">
<link rel="mask-icon" href="<c:url value='/resources/assets/img/favicon/safari-pinned-tab.svg'/> " color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="<c:url value='/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css'/> " rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css" href="<c:url value='/resources/vendor/leaflet/dist/leaflet.css'/>" rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet" href="<c:url value='/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css'/> ">

<!-- VectorMap -->
<link rel="stylesheet" href="<c:url value='/resources/vendor/jqvmap/dist/jqvmap.min.css'/> ">

<!-- Main CSS -->
<link type="text/css" href="<c:url value='/resources/css/spaces.css'/> " rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->
<script src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/>"></script>
</head>
<body>
<!-- 탑삽입해야함 -->

    <main>

        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
    <div class="position-relative">
        <img src="../assets/img/brand/light-without-letter.svg" alt="Logo loader">
        <img src="../assets/img/brand/letter.svg" class="rotate-letter" alt="Letter loader">
    </div>
</div>

        <!-- Hero -->
        <section class="section-header pb-7 bg-primary text-white">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10 text-center">
                        <div class="mb-4">
                            <a href="./blog.html" class="badge badge-danger text-uppercase mr-2 px-3">Seo</a>
                            <a href="#" class="badge badge-secondary text-uppercase px-3">Marketing</a>
                        </div>
                        <h1 class="display-3 mb-4 px-lg-5">90% of content gets no traffic from Google. How to improve it ?</h1>
                        <div class="post-meta"> 
                            <span class="font-weight-bold mr-3">James Curran</span> 
                            <span class="post-date mr-3">January 31, 2020</span> 
                            <span class="font-weight-bold">7 min read</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="section section-sm bg-white pt-6">
            <article class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
                        <p>Adding a dark mode is basically adding a theme. The principles are the same for adding a light mode to a dark website or alternative styling based on user-defined variables, the time of year or holidays.</p>
                        <p>I added theming with a mix of  and CSS. In this post I’ll go step by step into the details of how I did it and what I learned.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias expedita earum modi sint voluptatum nemo assumenda explicabo laboriosam unde excepturi, necessitatibus consequatur quo! Quis impedit excepturi ut, alias omnis harum?</p>
                        <p>
                            <img class="rounded" src="../assets/img/blog/image-2.jpg" alt="Themesberg office">
                        </p>
                        <h2>Setup</h2>
                        <p>The themes are <a href="#">activated by CSS classes</a> on the root element. When the page is loaded, I want to apply the theme that most likely suits the visitor (you!) best. After all, most people don’t like configuring websites before they can read a blog post, so the the whole theming feature would likely remain unused otherwise. So I have to make a guess about what the visitor wants and expects. I do that in this order:</p>
                        <ol>
                            <li>I assume people don’t want the theme to change when they navigate between pages. So if the page loaded isn’t the first page they visit, I want to use the theme that was used before.</li>
                            <li>If it’s the first page they view on my site, their browser may be able to tell their preference.</li>
                            <li>If no preference is available, we can base the choice based on whether it’s day or night.</li>
                        </ol>
                        <p>Every time a page is loaded, in the current or a new tab, it checks if a theme was set previously. Because the preference for a light or dark theme can change during the day, with every change, I add a time stamp to the saved setting. Only when the state was saved less than two hours ago, it’s applied:</p>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eaque distinctio nemo tempora similique necessitatibus asperiores inventore ipsum, nostrum velit, quasi vitae natus numquam veritatis nobis, reiciendis deleniti facere molestias a.</p>
                        <h2>Header 2</h2>
                        <h3>Header 3</h3>
                        <h4>Header 4</h4>
                        <h5>Header 5</h5>
                        <h6>Header 6</h6>
                        <p class="my-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi velit perferendis labore vel, necessitatibus laboriosam fugit inventore ad odio tenetur vitae veritatis, earum numquam consectetur voluptatem illum, sequi asperiores commodi?</p>
                        <ul>
                            <li>list item 1</li>
                            <li>list item 2</li>
                            <li>list item 3</li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit corrupti dolorem at iste perferendis! Modi praesentium vel, rem aliquid illo, nostrum asperiores dolorem corrupti odio tempora impedit deleniti eius voluptatibus.</p>
                    </div>
                </div>

            </article>
        </div>
   
    </main>
    
<!-- 푸터삽입해야함 -->

    <!-- Core -->
<script src="../vendor/jquery/dist/jquery.min.js"></script>
<script src="../vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="../vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../vendor/headroom.js/dist/headroom.min.js"></script>
<script src="../vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- NoUISlider -->
<script src="../vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="../vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="../vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="../vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="../vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="../vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="../vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="../vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="../vendor/chartist/dist/chartist.min.js"></script>
<script src="../vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="../vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="../vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="../assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="../assets/js/spaces.js"></script>
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