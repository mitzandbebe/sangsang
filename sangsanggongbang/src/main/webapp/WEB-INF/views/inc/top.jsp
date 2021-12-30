<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--

=========================================================
* Spaces - Bootstrap Directory Listing Template
=========================================================

* Product Page: https://themes.getbootstrap.com/product/spaces/
* Copyright 2020 Themesberg EULA (https://themes.getbootstrap.com/licenses/)

* Coded by https://themesberg.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->

<!DOCTYPE html>
<html lang="ko">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>상상공방</title>


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Blank page">
<meta name="author" content="Themesberg">
<meta name="description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords"
	content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical"
	href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Blank page">
<meta property="og:description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url"
	content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Blank page">
<meta property="twitter:description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href=".${pageContext.request.contextPath }/resources/assets/img/favicon/favicon-16x16.png">
<link rel="manifest"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon/site.webmanifest">
<link rel="mask-icon"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon/safari-pinned-tab.svg"
	color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css"
	href="${pageContext.request.contextPath }/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css"
	href="${pageContext.request.contextPath }/resources/vendor/leaflet/dist/leaflet.css"
	rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

<!-- VectorMap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendor/jqvmap/dist/jqvmap.min.css">

<!-- Main CSS -->
<link type="text/css"
	href="${pageContext.request.contextPath }/resources/css/spaces.css"
	rel="stylesheet">
	
<!-- 폰트 삽입 -->	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<!-- 결제모듈 -->
</head>

<body class="bg-soft" >
	<header class="header-global">
		<nav id="navbar-main"
			class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-light navbar-transparent navbar-theme-primary">
			<div class="container">
				<a class="navbar-brand @@logo_classes"
					href="${pageContext.request.contextPath }/index"> <img
					class="navbar-brand-dark common"
					src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_bottom.png"
					height="35" alt="Logo light"> <img
					class="navbar-brand-light common"
					src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_top_light.png"
					height="35" alt="Logo dark">
				</a>
				<div class="navbar-collapse collapse" id="navbar_global">
					<div class="navbar-collapse-header">
						<div class="row">
							<div class="col-6 collapse-brand">
								<a
									href="${pageContext.request.contextPath }/resources/index.html">
									<img
									src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_top_light.png"
									height="35" alt="Logo Impact">
								</a>
							</div>
							<div class="col-6 collapse-close">
								<a href="#navbar_global" role="button" class="fas fa-times"
									data-toggle="collapse" data-target="#navbar_global"
									aria-controls="navbar_global" aria-expanded="false"
									aria-label="Toggle navigation"></a>
							</div>
						</div>
					</div>
					<ul class="navbar-nav navbar-nav-hover justify-content-center">
						<li class="nav-item dropdown"><a href="#"
							id="mainPagesDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">상상 클래스</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-megamenu p-3 p-lg-4"
								aria-labelledby="mainPagesDropdown">
								<div class="row">
									<div class="col-6 col-lg-4" style="color: #49746E";>
										<h6 class="d-block mb-3 text-primary">카테고리</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/index.html">공예
													DIY</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href=".${pageContext.request.contextPath }/resources/html/index-2.html">베이킹</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/index-3.html">쿠킹</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/about.html">문화예술</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/pricing.html">자기계발</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/team.html">뷰티</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">여행</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">피트니스</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">스포츠</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">모임</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">스토어</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">온라인</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
					</ul>
				</div>
			</div>

			<div class="d-none d-lg-block @@cta_button_classes">
				<a href="https://themesberg.com/docs/spaces/components/buttons/"
					target="_blank"
					class="btn btn-md btn-outline-white animate-up-2 mr-3"><i
					class="fas fa-book mr-1"></i> <span class="d-xl-none">My
						Page</span> <span class="d-none d-xl-inline">My page</span></a>
				<c:if test="${empty sessionScope.mId }">
					<a href="${pageContext.request.contextPath }/login/login"
						target="_blank" class="btn btn-md btn-secondary animate-up-2"><i
						class="fas fa-shopping-bag mr-2"></i> LOG IN</a>
				</c:if>
				<c:if test="${!empty sessionScope.mId }">
					<a href="${pageContext.request.contextPath }/login/logout"
						target="_blank" class="btn btn-md btn-secondary animate-up-2"><i
						class="fas fa-shopping-bag mr-2"></i> LOG OUT</a>
				</c:if>
			</div>
			<div class="d-flex d-lg-none align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbar_global" aria-controls="navbar_global"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>

		</nav>
	</header>
	<main>
		<div
			class="preloader bg-dark flex-column justify-content-center align-items-center">
			<div class="position-relative">
				<img
					src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_light_without_letter.png"
					height="35" alt="Logo loader"> <img
					src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_letter.png"
					height="35" class="rotate-letter" alt="Letter loader">
			</div>
		</div>
	</main>