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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Spaces - Item details</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Item details">
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
<meta property="og:title" content="Spaces - Item details">
<meta property="og:description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url"
	content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Item details">
<meta property="twitter:description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon/favicon-16x16.png">
<link rel="manifest"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon/site.webmanifest">
<link rel="mask-icon"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon/safari-pinned-tab.svg"
	color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/leaflet/dist/leaflet.css"
	rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

<!-- VectorMap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/jqvmap/dist/jqvmap.min.css">

<!-- Main CSS -->
<link type="text/css"
	href="${pageContext.request.contextPath}/resources/css/spaces.css"
	rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>

<body>
	<header class="header-global">
		<nav id="navbar-main"
			class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-dark navbar-transparent navbar-theme-primary">
			<div class="container">
				<a class="navbar-brand @@logo_classes"
					href="${pageContext.request.contextPath}/resources/index.html">
					<img class="navbar-brand-dark common"
					src="${pageContext.request.contextPath}/resources/assets/img/brand/light.svg"
					height="35" alt="Logo light"> <img
					class="navbar-brand-light common"
					src="${pageContext.request.contextPath}/resources/assets/img/brand/dark.svg"
					height="35" alt="Logo dark">
				</a>
				<div class="navbar-collapse collapse" id="navbar_global">
					<div class="navbar-collapse-header">
						<div class="row">
							<div class="col-6 collapse-brand">
								<a
									href="${pageContext.request.contextPath}/resources/index.html">
									<img
									src="${pageContext.request.contextPath}/resources/assets/img/brand/dark.svg"
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
								class="nav-link-inner-text mr-1">Front pages</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-megamenu p-3 p-lg-4"
								aria-labelledby="mainPagesDropdown">
								<div class="row">
									<div class="col-6 col-lg-4">
										<h6 class="d-block mb-3 text-primary">Main pages</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/index.html">Landing</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/index-2.html">Landing
													2</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/index-3.html">Landing
													3</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/about.html">About</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/pricing.html">Pricing</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/team.html">Team</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/contact.html">Contact</a>
											</li>
										</ul>
										<h6 class="d-block text-primary">Legal</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/legal.html">Legal
													center</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/terms.html">Terms
													& agreement</a></li>
										</ul>
									</div>
									<div class="col-6 col-lg-4">
										<h6 class="d-block mb-3 text-primary">Listing</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/all-spaces.html">All
													spaces</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/all-spaces-map.html">Map
													view</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/all-spaces-sidebar.html">All
													spaces sidebar</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/single-space.html">Space
													details</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/profile.html">Profile</a>
											</li>
										</ul>
										<h6 class="d-block mb-3 text-primary">Support</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/support.html">Support
													center</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/support-topic.html">Support
													topic</a></li>
										</ul>
										<h6 class="d-block mb-3 text-primary">Blog</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/blog.html">Blog</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/blog-post.html">Blog
													post</a></li>
										</ul>
									</div>
									<div class="col-6 col-lg-4">
										<h6 class="d-block mb-3 text-primary">User</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/sign-in.html">Sign
													in</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/sign-up.html">Sign
													up</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/forgot-password.html">Forgot
													password</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/reset-password.html">Reset
													password</a></li>
										</ul>
										<h6 class="d-block mb-3 text-primary">Special</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/404.html">404
													Not Found</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/500.html">500
													Server Error</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/maintenance.html">Maintenance</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/coming-soon.html">Coming
													soon</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/blank.html">Blank
													page</a></li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a href="#"
							id="dashboardPagesDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">Dashboard</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-megamenu-sm p-3 p-lg-4"
								aria-labelledby="dashboardPagesDropdown">
								<div class="row">
									<div class="col-6">
										<h6 class="d-block mb-3 text-primary">User dashboard</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/account.html">My
													account</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/settings.html">Settings</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/security.html">Security</a>
											</li>
										</ul>
										<h6 class="d-block mb-3 text-primary">Items</h6>
										<ul class="list-style-none">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/my-items.html">My
													items</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/edit-item.html">Edit
													item</a></li>
										</ul>
									</div>
									<div class="col-6">
										<h6 class="d-block mb-3 text-primary">Messaging</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/messages.html">Messages</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/single-message.html">Chat</a>
											</li>
										</ul>
										<h6 class="d-block mb-3 text-primary">Billing</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/billing.html">Billing
													details</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath}/resources/html/dashboard/invoice.html">Invoice</a>
											</li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a href="#"
							id="supportDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">Support</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-menu-lg"
								aria-labelledby="supportDropdown">
								<div class="col-auto px-0">
									<div class="list-group list-group-flush">
										<a
											href="https://themesberg.com/docs/spaces/getting-started/quick-start/"
											target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<span class="icon icon-md icon-secondary"><i
												class="fas fa-file-alt"></i></span>
											<div class="ml-4">
												<span class="text-dark d-block">Documentation<span
													class="badge badge-sm badge-secondary ml-2">v3.0</span></span> <span
													class="small">Examples and guides</span>
											</div>
										</a> <a href="https://themesberg.com/contact" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span>
											<div class="ml-4">
												<span class="text-dark d-block">Support</span> <span
													class="small">Looking for answers?</span>
											</div>
										</a>
									</div>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="d-none d-lg-block @@cta_button_classes">
					<a href="https://themesberg.com/docs/spaces/components/buttons/"
						target="_blank"
						class="btn btn-md btn-outline-white animate-up-2 mr-3"><i
						class="fas fa-book mr-1"></i> <span class="d-xl-none">Docs</span>
						<span class="d-none d-xl-inline">Components</span></a> <a
						href="https://themes.getbootstrap.com/product/spaces/"
						target="_blank" class="btn btn-md btn-secondary animate-up-2"><i
						class="fas fa-shopping-bag mr-2"></i> Buy now</a>
				</div>
				<div class="d-flex d-lg-none align-items-center">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbar_global" aria-controls="navbar_global"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
				</div>
			</div>
		</nav>
	</header>
	<main>

		<div
			class="preloader bg-dark flex-column justify-content-center align-items-center">
			<div class="position-relative">
				<img
					src="${pageContext.request.contextPath}/resources/assets/img/brand/light-without-letter.svg"
					alt="Logo loader"> <img
					src="${pageContext.request.contextPath}/resources/assets/img/brand/letter.svg"
					class="rotate-letter" alt="Letter loader">
			</div>
		</div>
		<!-- Hero -->
		<div
			class="section section-header section-image bg-primary overlay-primary text-white overflow-hidden pb-6"
			data-background="${pageContext.request.contextPath}/resources/assets/img/team-hero.jpg">
			<div class="container z-2">
				<div class="row justify-content-center pt-3">
					<div class="col-12 text-center">
						<nav aria-label="breadcrumb">
							<ol
								class="breadcrumb breadcrumb-transparent justify-content-center mb-4">
								<li class="breadcrumb-item text-secondary"><a
									href="${pageContext.request.contextPath}/resources/index.html">Home</a></li>
								<li class="breadcrumb-item text-secondary"><a
									href="./all-spaces.html">United States</a></li>
								<li class="breadcrumb-item text-white active"
									aria-current="page">한글 Vancouver Coworking</li>
							</ol>
						</nav>
						<h1 class="mb-4">L'atelier Vancouver Coworking</h1>
						<div class="d-block d-md-flex justify-content-center">
							<span class="h6 font-weight-light"><span
								class="fas fa-check-circle mr-1 pr-1"></span>Verified</span> <span
								class="lh-120 ml-md-4"><i
								class="fas fa-map-marker-alt mr-1 pr-1"></i>26, Vancouver, BC,
								Canada - 324578 <a data-fancybox
								href="https://www.google.com/maps/place/New+York,+NY,+USA/@40.6971494,-74.2598683,10z/data=!3m1!4b1!4m5!3m4!1s0x89c24fa5d33f083b:0xc80b8f06e177fe62!8m2!3d40.7127753!4d-74.0059728"
								class="ml-md-3">See Location</a> </span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="section section-lg pt-5">
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-8">
						<!-- Tab -->
						<nav>
							<div
								class="nav nav-tabs flex-column flex-md-row border-light mb-3"
								id="nav-tab" role="tablist">
								<a class="nav-item nav-link active" id="nav-about-tab"
									data-toggle="tab" href="#nav-about" role="tab"
									aria-controls="nav-about" aria-selected="true"><span
									class="far fa-address-card mr-2"></span>About</a> <a
									class="nav-item nav-link" id="nav-video-tab" data-toggle="tab"
									href="#nav-video" role="tab" aria-controls="nav-video"
									aria-selected="false"><span class="far fa-play-circle mr-2"></span>Video</a>
								<a class="nav-item nav-link" id="nav-amenities-tab"
									data-toggle="tab" href="#nav-amenities" role="tab"
									aria-controls="nav-amenities" aria-selected="false"><span
									class="fas fa-cubes mr-2"></span>Amenities</a> <a
									class="nav-item nav-link" id="nav-reviews-tab"
									data-toggle="tab" href="#nav-reviews" role="tab"
									aria-controls="nav-reviews" aria-selected="false"><span
									class="far fa-star mr-2"></span>Reviews</a> <a
									class="nav-item nav-link" id="nav-location-tab"
									data-toggle="tab" href="#nav-location" role="tab"
									aria-controls="nav-location" aria-selected="false"><span
									class="fas fa-map-marker-alt mr-2"></span>Location</a>
							</div>
						</nav>
						<!-- About Tab -->
						<div class="tab-content mt-5 mb-3" id="nav-tabContent">
							<div class="tab-pane fade show active" id="nav-about"
								role="tabpanel" aria-labelledby="nav-about-tab">
								<div class="row mb-5">
									<div class="col-12">
										<div class="fancy-gallery mb-5">
											<div class="row">
												<a
													href="${pageContext.request.contextPath}/resources/assets/img/conference-office.jpg"
													class="mb-4 col-6 col-sm-4 img-fluid"
													data-fancybox="images" data-caption="Conference Space">
													<img class="rounded"
													src="${pageContext.request.contextPath}/resources/assets/img/conference-office.jpg"
													alt="" />
												</a> <a
													href="${pageContext.request.contextPath}/resources/assets/img/cowork-office.jpg"
													class="mb-4 col-6 col-sm-4 img-fluid"
													data-fancybox="images" data-caption="Cowork Office"> <img
													class="rounded"
													src="${pageContext.request.contextPath}/resources/assets/img/cowork-office.jpg"
													alt="" />
												</a> <a
													href="${pageContext.request.contextPath}/resources/assets/img/lifestyle-office.jpg"
													class="mb-4 col-6 col-sm-4 img-fluid"
													data-fancybox="images" data-caption="Lifestyle Space">
													<img class="rounded"
													src="${pageContext.request.contextPath}/resources/assets/img/lifestyle-office.jpg"
													alt="" />
												</a> <a
													href="${pageContext.request.contextPath}/resources/assets/img/image-office.jpg"
													class="mb-4 col-6 col-sm-4 img-fluid"
													data-fancybox="images" data-caption="Conference Space">
													<img class="rounded"
													src="${pageContext.request.contextPath}/resources/assets/img/image-office.jpg"
													alt="" />
												</a> <a
													href="${pageContext.request.contextPath}/resources/assets/img/meeting-office.jpg"
													class="mb-4 col-6 col-sm-4 img-fluid"
													data-fancybox="images" data-caption="Meeting Office"> <img
													class="rounded"
													src="${pageContext.request.contextPath}/resources/assets/img/meeting-office.jpg"
													alt="" />
												</a> <a
													href="${pageContext.request.contextPath}/resources/assets/img/private-office.jpg"
													class="mb-4 col-6 col-sm-4 img-fluid"
													data-fancybox="images" data-caption="Private Space"> <img
													class="rounded"
													src="${pageContext.request.contextPath}/resources/assets/img/private-office.jpg"
													alt="" />
												</a>
											</div>
										</div>
										<p>
											<span class="font-weight-bold">L'atelier</span> is the
											brainchild of 3 innovative guys that want to create a working
											hub for the local community. The plan is to offer a cool
											place to hang out with other creative souls and let the
											brainwaves go berserk.
										</p>
										<p>The guys were the group behind the Startup Weekend
											Vancouver, Startup Pirates Vancouver and Startup Coffee
											Vancouver, so they are no fools and have plenty of experience
											in startups and community growth. This project is another
											notch into creating Vancouver as a regional startup hub.</p>
										<p>Cowork Vancouver is aiming to attract the techies, the
											freelance developers or anyone wishing to get involved in the
											startup scene - really there are no exclusions of bodies who
											may want a desk - the founders just want a community of
											entrepreneurs and geeks to mingle with.</p>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="card card-body bg-soft border-light p-2">
											<div class="card-group bg-soft">
												<div class="card mb-0">
													<div class="card-body text-center px-0 px-md-3">
														<div class="icon icon-secondary">
															<span class="far fa-calendar-alt"></span>
														</div>
														<!-- Heading -->
														<div class="h5 mt-3 mb-0">1 Year</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Minimum term </span>
													</div>
												</div>
												<div class="card mb-0 border-left">
													<div class="card-body text-center px-0 px-md-3">
														<div class="icon icon-secondary">
															<span class="fas fa-ruler-combined"></span>
														</div>
														<!-- Heading -->
														<div class="h5 mt-3 mb-0">180SqFt</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Space size </span>
													</div>
												</div>
												<div class="card mb-0 border-left">
													<div class="card-body text-center px-0 px-md-3">
														<div class="icon icon-secondary">
															<span class="fas fa-users"></span>
														</div>
														<!-- Heading -->
														<div class="h5 mt-3 mb-0">10-30</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Peoples </span>
													</div>
												</div>
												<div class="card mb-0 border-left">
													<div class="card-body text-center px-0 px-md-3">
														<div class="icon icon-secondary">
															<span class="fas fa-couch"></span>
														</div>
														<!-- Heading -->
														<div class="h5 mt-3 mb-0">Meeting</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Space type </span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- End of About Tab -->
							<!-- Video Tab -->
							<div class="tab-pane fade" id="nav-video" role="tabpanel"
								aria-labelledby="nav-video-tab">
								<div class="video-poster overlay-dark position-relative rounded">
									<a data-fancybox href="https://vimeo.com/40842620"> <span
										class="icon icon-white icon-xl"><span
											class="fas fa-play-circle"></span></span>
									</a> <img
										src="${pageContext.request.contextPath}/resources/assets/img/lifestyle-office.jpg"
										alt="Image">
								</div>
							</div>
							<!-- End of Video Tab -->
							<!-- Amenities Tab -->
							<div class="tab-pane fade" id="nav-amenities" role="tabpanel"
								aria-labelledby="nav-amenities-tab">
								<div class="row">
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Basic</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>High-Speed WiFi</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Air Conditioning</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Heating</span></li>
											</ul>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Seating</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Standing Desks</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Ergonomic Chairs</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Beanbags</span></li>
											</ul>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Community</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Events</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Community Lunches</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Workshops</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Community Drinks</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Facebook Group for Members</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Mentorship Programs</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Pitching events</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Accelerator programs</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Toastmasters</span></li>
											</ul>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Facilities</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Kitchen</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Skype Room</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Nearby Restaurants</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Makerspace</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Personal Lockers</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Phone Booth</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Event Space For Rent</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Nearby Airbnb</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Onsite Airbnb</span></li>
											</ul>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Equipment</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Printer</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>3D Printer</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Projector</span></li>
											</ul>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Transportation</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>5 Minute Walk From Public Transit</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>10 Minute Walk From Metro Station</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Bike Parking</span></li>
											</ul>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Relax Zones</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Outdoor Terrace</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Lounge / Chill-out Area</span></li>
											</ul>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="card border-bottom rounded-0 p-4">
											<h2 class="h5">Caffeine Fix</h2>
											<ul class="list-unstyled mb-0">
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Free Tea</span></li>
												<li class="d-flex py-1"><span
													class="icon icon-xs icon-primary"> <span
														class="fas fa-check-circle mr-2"></span>
												</span> <span>Free Coffee</span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- End of Amenities Tab -->
							<!-- Reviews Tab -->
							<div class="tab-pane fade" id="nav-reviews" role="tabpanel"
								aria-labelledby="nav-reviews-tab">
								<div class="card bg-white border border-light p-4 mb-4">
									<div
										class="d-flex justify-content-between align-items-center mb-3">
										<div>
											<a href="./profile.html" class="h5">Awesome place</a>
											<ul class="list-unstyled d-flex mt-1 mb-0">
												<li class="list-item small mr-3">by Margaret Mead</li>
												<li class="list-item small">2 weeks ago</li>
											</ul>
										</div>
										<div class="d-flex justify-content-end">
											<span class="d-flex justify-content-center"> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star  fas text-warning  mr-2"></i> <i
												class="star far fa-star text-gray"></i>
											</span>
										</div>
									</div>
									<p class="m-0">Always remember that you are absolutely
										unique. Just like everyone else.</p>
								</div>
								<div class="card bg-white border border-light p-4 mb-4">
									<div
										class="d-flex justify-content-between align-items-center mb-3">
										<div>
											<a href="./profile.html" class="h5">Great working
												environment</a>
											<ul class="list-unstyled d-flex mt-1 mb-0">
												<li class="list-item small mr-3">by Neil Sims</li>
												<li class="list-item small">2 weeks ago</li>
											</ul>
										</div>
										<div class="d-flex justify-content-end">
											<span class="d-flex justify-content-center"> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star  fas text-warning  mr-2"></i> <i
												class="star far fa-star text-gray"></i>
											</span>
										</div>
									</div>
									<p class="m-0">Your time is limited, so don't waste it
										living someone else's life. Don't be trapped by dogma -- which
										is living with the results of other people's thinking.</p>
								</div>
								<div class="card bg-white border border-light p-4 mb-4">
									<div
										class="d-flex justify-content-between align-items-center mb-3">
										<div>
											<a href="./profile.html" class="h5">Not only a place to
												work, but also to connect!</a>
											<ul class="list-unstyled d-flex mt-1 mb-0">
												<li class="list-item small mr-3">by Jose Leos</li>
												<li class="list-item small">2 weeks ago</li>
											</ul>
										</div>
										<div class="d-flex justify-content-end">
											<span class="d-flex justify-content-center"> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star  fas text-warning  mr-2"></i> <i
												class="star far fa-star text-gray"></i>
											</span>
										</div>
									</div>
									<p class="m-0">The future belongs to those who believe in
										the beauty of their dreams.</p>
								</div>
								<form method="post">
									<div
										class="d-flex justify-content-between align-items-center mb-3 mt-5">
										<h2 class="h5 m-0">Add a review</h2>
										<span class="d-flex justify-content-center stars-rating">
											<i class="star far fa-star text-gray mr-2"
											data-rating-value="1"></i> <i
											class="star far fa-star text-gray mr-2" data-rating-value="2"></i>
											<i class="star far fa-star text-gray mr-2"
											data-rating-value="3"></i> <i
											class="star far fa-star text-gray mr-2" data-rating-value="4"></i>
											<i class="star far fa-star text-gray" data-rating-value="5"></i>
										</span>
									</div>
									<textarea name="description" class="form-control border"
										placeholder="Add a review" rows="6"
										data-bind-characters-target="#charactersRemaining"
										maxlength="1000" required></textarea>
									<div class="d-flex justify-content-between mt-3">
										<small class="font-weight-light"> <span
											id="charactersRemaining">1000</span> characters remaining
										</small>
										<button type="submit" class="btn btn-primary animate-up-2">Add
											review</button>
									</div>
								</form>
							</div>
							<!-- End of Reviews Tab -->
							<div class="tab-pane fade" id="nav-location" role="tabpanel"
								aria-labelledby="nav-location-tab">
								<div class="row">
									<div class="col-12">
										<iframe class="map rounded" id="gmap_canvas"
											src="https://maps.google.com/maps?q=san%20francisco&t=&z=8&ie=UTF8&iwloc=&output=embed"></iframe>
									</div>
								</div>
							</div>

						</div>
						<!-- End of tab -->
					</div>
					<aside class="col-12 col-lg-4 mt-3 mt-lg-0">
						<div class="card border-light mt-4 p-3">
							<h5 class="font-weight-normal">Property Owner</h5>
							<div class="media d-flex align-items-center my-3">
								<a href="./profile.html" class="avatar-lg mr-2"
									data-toggle="tooltip" data-placement="top" title="More details">
									<img class="img-fluid rounded-circle"
									src="${pageContext.request.contextPath}/resources/assets/img/team/profile-picture-1.jpg"
									alt="avatar">
								</a>
								<div class="avatar-name">
									<a class="text-gray" href="./profile.html"
										data-toggle="tooltip" data-placement="top"
										title="More details">Jose Leos</a>
								</div>
							</div>
							<!-- Button Modal -->
							<button type="button" class="btn btn-block btn-secondary mb-3"
								data-toggle="modal" data-target="#modal-form">Contact
								Host</button>
							<!-- Modal Content -->
							<div class="modal fade" id="modal-form" tabindex="-1"
								role="dialog" aria-labelledby="modal-form" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered modal-md"
									role="document">
									<div class="modal-content">
										<div class="modal-body p-0">
											<div class="card shadow-md border-0">
												<div class="card-body position-relative">
													<button type="button" class="close mb-2"
														data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">Ã</span>
													</button>
													<form class="mt-3">
														<div class="form-group">
															<div class="input-group mb-4">
																<div class="input-group-prepend">
																	<span class="input-group-text"><i
																		class="far fa-user"></i></span>
																</div>
																<input class="form-control" placeholder="Name"
																	type="text" required>
															</div>
														</div>
														<div class="form-group">
															<div class="input-group mb-4">
																<div class="input-group-prepend">
																	<span class="input-group-text"><i
																		class="far fa-envelope"></i></span>
																</div>
																<input class="form-control" placeholder="Email"
																	type="email" required>
															</div>
														</div>
														<div class="form-group">
															<textarea class="form-control"
																placeholder="Write message" id="message-2" rows="4"
																required></textarea>
														</div>
														<div class="text-center">
															<button type="submit"
																class="btn btn-block btn-primary mt-4">Send
																Message</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- End of Modal Content -->
						</div>

						<div class="card border-light mt-4 p-3">
							<label for="exampleFormControlSelect1">클래스 신청일 선택</label>
							<div class="form-group">
								<div class="input-group input-group-border">
									<div class="input-group-prepend">
										<span class="input-group-text"><i
											class="far fa-calendar-alt"></i></span>
									</div>
									<input class="form-control datepicker"
										placeholder="Select date" type="text" value="06/20/2018">
								</div>
							</div>
							<br> <label for="exampleFormControlSelect2">인원수 선택</label>

							<div class="class-confirm03">
								<div class="c03-count">
									<a href="#" id="num-sub">-</a> <input type="text" id="quantity"
										value="1" class="only-number" /> <a href="#" id="num-add">+</a>
								</div>
							</div>
							<input type="hidden" id="classRealPrice" value='40000'>
							<!-- js에서 클래스정보 불러오고 id값으로 처리해야함. -->
							<div class="c03-charge" id="price">40000</div>
							<div class="text-center">
								<button type="submit" class="btn btn-block btn-primary mt-4"
									id="apibtn">결제하기</button>
							</div>
						</div>
					</aside>
				</div>
			</div>
		</div>
		<section class="section bg-soft">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h4 class="mb-5 font-weight-bold">Similar spaces you might
							like</h4>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
						<!-- Card -->
						<div class="card border-light mb-4 animate-up-5">
							<a href="./single-space.html" class="position-relative"> <img
								src="${pageContext.request.contextPath}/resources/assets/img/meeting-office.jpg"
								class="card-img-top rounded-xl p-2" alt="wood office">
							</a>
							<div class="card-body">
								<a href="./single-space.html">
									<h4 class="h5">Meeting Office Space</h4>
								</a>
								<div class="d-flex my-4">
									<i class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-light"></i> <span
										class="badge badge-pill badge-primary ml-2">4.0</span>
								</div>
								<ul class="list-group mb-3">
									<li class="list-group-item small p-0"><span
										class="fas fa-map-marker-alt mr-2"></span>London, Canary
										Wharf, UK</li>
									<li class="list-group-item small p-0"><span
										class="fas fa-bullseye mr-2"></span>Stamford Bridge Stadium (5
										mins walk)</li>
									<li class="list-group-item small p-0"><span
										class="fas fa-bullseye mr-2"></span>Bluebird Chelsea
										Restaurant (15 mins walk)</li>
								</ul>
							</div>
							<div class="card-footer border-top">
								<div class="d-flex justify-content-between">
									<div class="col pl-0">
										<span class="text-muted font-small d-block mb-2">Monthly</span>
										<span class="h5 text-dark font-weight-bold">50$</span>
									</div>
									<div class="col">
										<span class="text-muted font-small d-block mb-2">People</span>
										<span class="h5 text-dark font-weight-bold">2-4</span>
									</div>
									<div class="col pr-0">
										<span class="text-muted font-small d-block mb-2">Sq.Ft</span>
										<span class="h5 text-dark font-weight-bold">400</span>
									</div>
								</div>
							</div>
						</div>
						<!-- End of Card -->
					</div>
					<div class="col-12 col-md-6 col-lg-4">
						<!-- Card -->
						<div class="card border-light mb-4 animate-up-5">
							<a href="./single-space.html" class="position-relative"> <img
								src="${pageContext.request.contextPath}/resources/assets/img/conference-office.jpg"
								class="card-img-top rounded-xl p-2" alt="pixel room">
							</a>
							<div class="card-body">
								<a href="./single-space.html">
									<h4 class="h5">Conference Room</h4>
								</a>
								<div class="d-flex my-4">
									<i class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="fas fa-star-half text-warning"></i> <span
										class="badge badge-pill badge-primary ml-2">4.7</span>
								</div>
								<ul class="list-group mb-3">
									<li class="list-group-item small p-0"><span
										class="fas fa-map-marker-alt mr-2"></span>Paris,
										Ãle-de-France, France</li>
									<li class="list-group-item small p-0"><span
										class="fas fa-bullseye mr-2"></span>LE BHV MARAIS (5 mins
										walk)</li>
									<li class="list-group-item small p-0"><span
										class="fas fa-bullseye mr-2"></span>Shakespeare & Company (15
										mins walk)</li>
								</ul>
							</div>
							<div class="card-footer border-top">
								<div class="d-flex justify-content-between">
									<div class="col pl-0">
										<span class="text-muted font-small d-block mb-2">Monthly</span>
										<span class="h5 text-dark font-weight-bold">150$</span>
									</div>
									<div class="col">
										<span class="text-muted font-small d-block mb-2">People</span>
										<span class="h5 text-dark font-weight-bold">2-10</span>
									</div>
									<div class="col pr-0">
										<span class="text-muted font-small d-block mb-2">Sq.Ft</span>
										<span class="h5 text-dark font-weight-bold">200</span>
									</div>
								</div>
							</div>
						</div>
						<!-- End of Card -->
					</div>
					<div class="col-12 col-md-6 col-lg-4">
						<!-- Card -->
						<div class="card border-light mb-4 animate-up-5">
							<a href="./single-space.html" class="position-relative"> <img
								src="${pageContext.request.contextPath}/resources/assets/img/lifestyle-office.jpg"
								class="card-img-top rounded-xl p-2" alt="modern desk">
							</a>
							<div class="card-body">
								<a href="./single-space.html">
									<h4 class="h5">Lifestyle Space</h4>
								</a>
								<div class="d-flex my-4">
									<i class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <i
										class="star fas fa-star text-warning"></i> <span
										class="badge badge-pill badge-primary ml-2">4.7</span>
								</div>
								<ul class="list-group mb-3">
									<li class="list-group-item small p-0"><span
										class="fas fa-map-marker-alt mr-2"></span>Madrid, Hortaleza,
										Spain</li>
									<li class="list-group-item small p-0"><span
										class="fas fa-bullseye mr-2"></span>Plaza Mayor (2 mins walk)</li>
									<li class="list-group-item small p-0"><span
										class="fas fa-bullseye mr-2"></span>eal Casa de Correos (15
										mins walk)</li>
								</ul>
							</div>
							<div class="card-footer border-top">
								<div class="d-flex justify-content-between">
									<div class="col pl-0">
										<span class="text-muted font-small d-block mb-2">Monthly</span>
										<span class="h5 text-dark font-weight-bold">200$</span>
									</div>
									<div class="col">
										<span class="text-muted font-small d-block mb-2">People</span>
										<span class="h5 text-dark font-weight-bold">10-30</span>
									</div>
									<div class="col pr-0">
										<span class="text-muted font-small d-block mb-2">Sq.Ft</span>
										<span class="h5 text-dark font-weight-bold">500</span>
									</div>
								</div>
							</div>
						</div>
						<!-- End of Card -->
					</div>
				</div>
			</div>
		</section>
		<!-- End of section -->
	</main>

	<footer class="footer py-6 bg-primary text-white">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 mb-3 mb-xl-0">
					<img
						src="${pageContext.request.contextPath}/resources/assets/img/brand/light.svg"
						height="30" class="mb-3" alt="Spaces logo">
					<p>Premium Bootstrap Directory Listing Template</p>
				</div>
				<div class="col-6 col-xl-2 mb-5 mb-xl-0">
					<span class="h5">Themesberg</span>
					<ul class="footer-links mt-2">
						<li><a target="_blank" href="https://themesberg.com/blog">Blog</a></li>
						<li><a target="_blank" href="https://themesberg.com/products">Products</a></li>
						<li><a target="_blank" href="https://themesberg.com/about">About
								Us</a></li>
						<li><a target="_blank" href="https://themesberg.com/contact">Contact
								Us</a></li>
					</ul>
				</div>
				<div class="col-6 col-xl-3 mb-5 mb-xl-0">
					<span class="h5">Other</span>
					<ul class="footer-links mt-2">
						<li><a
							href="https://themesberg.com/docs/spaces/getting-started/overview/">Documentation
								<span class="badge badge-sm badge-secondary ml-2">v3.0</span>
						</a></li>
						<li><a
							href="https://themesberg.com/docs/spaces/getting-started/changelog/">Changelog</a></li>
						<li><a target="_blank" href="https://themesberg.com/contact">Support</a></li>
						<li><a target="_blank"
							href="https://themesberg.com/licensing">License</a></li>
					</ul>
				</div>
				<div class="col-12 col-xl-4 mb-5 mb-xl-0">
					<span class="h5">Get the app</span>
					<p class="text-muted font-small mt-2">It's easy. Just select
						your device.</p>
					<a href="#" class="btn btn-sm btn-white mb-xl-0 mr-2"> <span
						class="d-flex align-items-center"> <span
							class="icon icon-brand mr-2"><span class="fab fa-apple"></span></span>
							<span class="d-inline-block text-left"> <small
								class="font-weight-normal d-block">Available on</small> App
								Store
						</span>
					</span>
					</a> <a href="#" class="btn btn-sm btn-white"> <span
						class="icon icon-brand mr-2"><span
							class="fab fa-google-play"></span></span> <span
						class="d-inline-block text-left"> <small
							class="font-weight-normal d-block">Available on</small> Google
							Play
					</span>
					</a>
				</div>
			</div>
			<hr class="my-3 my-lg-5">
			<div class="row">
				<div class="col mb-md-0">
					<a href="https://themesberg.com" target="_blank"
						class="d-flex justify-content-center"> <img
						src="${pageContext.request.contextPath}/resources/assets/img/themesberg.svg"
						height="25" class="mb-3" alt="Themesberg Logo">
					</a>
					<div
						class="d-flex text-center justify-content-center align-items-center"
						role="contentinfo">
						<p class="font-weight-normal font-small mb-0">
							Copyright Â© Themesberg <span class="current-year">2020</span>.
							All rights reserved.
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Core -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/popper.js/dist/umd/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/headroom.js/dist/headroom.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>

	<!-- NoUISlider -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/nouislider/distribute/nouislider.min.js"></script>

	<!-- Bootstrap Datepicker -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

	<!-- jQuery Waypoints -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/waypoints/lib/jquery.waypoints.min.js"></script>

	<!-- Owl acrousel -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/owl.carousel/dist/owl.carousel.min.js"></script>

	<!-- Smooth scroll -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

	<!-- Fancybox -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

	<!-- Sticky sidebar -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

	<!-- Mapbox & Leaflet.js -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/leaflet/dist/leaflet.js"></script>

	<!-- Chartist -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/chartist/dist/chartist.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

	<!-- Vector Maps -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

	<!-- Sliderform -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.slideform.js"></script>

	<!-- 카카오페이 -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/payments.js"></script>

	<!-- 아임포트 -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<!-- Spaces custom Javascript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/spaces.js"></script>
</body>

</html>