<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>이벤트 리스트</title>
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
<!-- 이벤트 목록 테이블로 보여주기 -->

<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">First</th>
            <th scope="col">Last</th>
            <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row">1</th>
            <td>
                <div class="d-flex align-items-center">
                    Jackson <span class="badge badge-primary ml-2">Pro</span>
                </div>
            </td>
            <td>Larry</td>
            <td>
                <div class="d-flex">
                    <i class="fas fa-edit mr-3" data-toggle="tooltip" data-placement="top" title="Edit item"></i>
                    <i class="fas fa-trash text-danger mr-2" data-toggle="tooltip" data-placement="top" title="Delete item"></i>
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>
                <div class="d-flex align-items-center">
                    Jacob <span class="badge badge-secondary ml-2">Mid</span>
                </div>
            </td>
            <td>Thornton</td>
            <td>
                <div class="d-flex">
                    <i class="fas fa-edit mr-3" data-toggle="tooltip" data-placement="top" title="Edit item"></i>
                    <i class="fas fa-trash text-danger mr-2" data-toggle="tooltip" data-placement="top" title="Delete item"></i>
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>
                <div class="d-flex align-items-center">
                    Larry <span class="badge badge-tertiary ml-2">Pro</span>
                </div>
            </td>
            <td>Doe</td>
            <td>
                <div class="d-flex">
                    <i class="fas fa-edit mr-3" data-toggle="tooltip" data-placement="top" title="Edit item"></i>
                    <i class="fas fa-trash text-danger mr-2" data-toggle="tooltip" data-placement="top" title="Delete item"></i>
                </div>
            </td>
        </tr>
    </tbody>
</table>

<nav aria-label="Page navigation example">
    <ul class="pagination circle-pagination">
        <li class="page-item">
            <a class="page-link" href="#"><i class="fas fa-angle-double-left"></i></a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item active">
            <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">4</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">5</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a>
        </li>
    </ul>
</nav>

</body>
</html>