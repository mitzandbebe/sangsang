<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>이벤트 보기(메인)</title>
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
<!-- 이벤트 메인. 메인에 합쳐져야함. -->
<div id="Carousel4" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#Carousel4" data-slide-to="0" class="active"></li>
        <li data-target="#Carousel4" data-slide-to="1"></li>
        <li data-target="#Carousel4" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item overlay-dark active">
            <img class="d-block w-100" src="<c:url value='/resources/assets/img/carousel/image-1.jpg'/>" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>First Title</h5>
                <p>Start your development with a Pixel Design System for Bootstrap 4. It is creative and it features many components that can help you create amazing websites.
                </p>
            </div>
        </div>
        <div class="carousel-item overlay-dark">
            <img class="d-block w-100" src="<c:url value='/resources/assets/img/carousel/image-2.jpg'/> " alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Second Title</h5>
                <p>Start your development with a Pixel Design System for Bootstrap 4. It is creative and it features many components that can help you create amazing websites.
                </p>
            </div>
        </div>
        <div class="carousel-item overlay-dark">
            <img class="d-block w-100" src="<c:url value='/resources/assets/img/carousel/image-3.jpg'/> " alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Third Title</h5>
                <p>Start your development with a Pixel Design System for Bootstrap 4. It is creative and it features many components that can help you create amazing websites.
                </p>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#Carousel4" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#Carousel4" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

</body>
</html>
