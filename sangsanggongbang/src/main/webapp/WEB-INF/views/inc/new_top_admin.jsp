<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>상상공방</title>

<!-- Primary Meta Tags -->
<title>Spaces - All items list</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - All items list">
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
<meta property="og:title" content="Spaces - All items list">
<meta property="og:description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url"
	content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - All items list">
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
	href="${pageContext.request.contextPath }/resources/css/admin.css"
	rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">

</head>
<!-- 헤드 설정 끝 -->


<body class="bg-soft">

	<header class="header-global">
		<nav id="navbar-main"
			class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-light navbar-theme-primary">
			<div class="container">
				<a class="navbar-brand @@logo_classes"
					href="${pageContext.request.contextPath }/admin/adminIndex"> <img
					class="navbar-brand-dark common"
					src="${pageContext.request.contextPath }/resources/assets/img/brand/admin_bottom.png"
					height="35" alt="Logo light"> <img
					class="navbar-brand-light common"
					src="${pageContext.request.contextPath }/resources/assets/img/brand/admin_top_light.png"
					height="35" alt="Logo dark">
				</a>
				<div class="navbar-collapse collapse" id="navbar_global">
					<div class="navbar-collapse-header">
						<div class="row">
							<div class="col-6 collapse-brand">
								<a
									href="${pageContext.request.contextPath }/resources/index.html">
									<img
									src="${pageContext.request.contextPath }/resources/assets/img/brand/admin_top_light.png"
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
						<!-- 첫번째 탭 -->
						<li class="nav-item dropdown">
							<!-- 드랍다운 없이 탭자체에 링크 걸거면 바로밑줄 #에다! --> <a href="#"
							id="supportDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">회원관리</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-menu-lg"
								aria-labelledby="supportDropdown">
								<div class="col-auto px-0">
									<div class="list-group list-group-flush">
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/memberInquiry/memberList'/>"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-secondary"><i
												class="fas fa-file-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">늘찬 조회</span>
												<!-- <span class="small">Examples and guides</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/memberInquiry/hostList'/>"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">늘솜 조회</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/memberInquiry/banList'/>"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">참여제한자 조회</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
									</div>
								</div>
							</div>
						</li>
						<!-- 두번째 탭 -->
						<li class="nav-item dropdown"><a href="#"
							id="mainPagesDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">게시판 관리</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-megamenu-sm p-3 p-lg-4"
								aria-labelledby="mainPagesDropdown">
								<div class="row">
									<!-- 게시판 관리 -->
									<div class="col-6">
										<h6 class="d-block mb-3 text-primary">공지사항</h6>
										<ul class="list-style-none mb-4">
											<!-- 정렬 건들지 말 것 -->
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/notice/noticeList">공지사항
													목록</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/notice/noticeWrite">공지사항
													작성</a></li>
										</ul>
									</div>
									<div class="col-6">
										<h6 class="d-block mb-3 text-primary">이벤트</h6>
										<ul class="list-style-none mb-4">
											<!-- 정렬 건들지 말 것 -->
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/mainevent/eventlist">이벤트
													목록</a></li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/mainevent/eventwrite">이벤트
													작성</a></li>
										</ul>
									</div>
									<div class="col-6">
										<h6 class="d-block mb-3 text-primary">불편사항</h6>
										<ul class="list-style-none mb-4">
											<!-- 정렬 건들지 말 것 -->
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/recommendation/recommendList">불편사항 목록</a>
											</li>
										</ul>
									</div>
									<!-- 세번째 탭 -->
									<li class="nav-item "><a
										href="<c:url value='/admin/balancing'/>" class="nav-link ">
											<span class="nav-link-inner-text mr-1"> 정산내역/승인</span>
									</a></li>
									<!-- 네번째 탭 -->
									<li class="nav-item "><a
										href="<c:url value='/admin/refundList'/>" class="nav-link ">
											<span class="nav-link-inner-text mr-1"> 환불내역/승인 </span>
									</a></li>
									<!-- 다섯번째 탭 -->
									<li class="nav-item "><a
										href="<c:url value='/mail/mailSend'/>" class="nav-link ">
											<span class="nav-link-inner-text mr-1"> 메일 보내기</span>
									</a></li>
					</ul>
				</div>
				<!-- 탑 우측 버튼들 -->
				<div class="d-none d-lg-block @@cta_button_classes">

					<!-- 로그인 -->
					<c:if test="${empty sessionScope.adId }">
						<a href="${pageContext.request.contextPath }/admin/adminLogin"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG IN</a>
					</c:if>
					<!-- 로그인 끝 -->
					<!-- 로그아웃 -->
					<c:if test="${!empty sessionScope.adId }">
						<a href="${pageContext.request.contextPath }/login/logout"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG OUT</a>
					</c:if>
					<!-- 로그아웃 끝 -->


				</div>
				<!-- 화면 크기 줄일 때 반응형 네비게이션 바 -->
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

	<!-- 로딩창 -->
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
	<!-- 로딩창 끝 -->