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

<title>상상공방-탑</title>

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
	href="${pageContext.request.contextPath }/resources/css/spaces.css"
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
						<!-- 첫번째 탭 -->
						<li class="nav-item dropdown"><a href="#"
							id="mainPagesDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">상상클래스</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-megamenu-sm p-3 p-lg-4"
								aria-labelledby="mainPagesDropdown">
								<div class="row">
									<!-- 카테고리별 클래스 -->
									<div class="col-6">
										<h6 class="d-block mb-3 text-primary">Category</h6>

										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=공예DIY">공예
													DIY</a></li>
											<!-- 정렬 건들지 말 것 -->
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=베이킹">베이킹</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=쿠킹">쿠킹</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=문화예술">문화예술</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=자기계발">자기계발</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=뷰티">뷰티</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=여행">여행</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=피트니스">피트니스</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=스포츠">스포츠</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=모임">모임</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=스토어">스토어</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menuCategory?categoryName=온라인">온라인</a>
											</li>
										</ul>
									</div>
									<!-- 지역별 클래스 -->
									<div class="col-6">
										<h6 class="d-block mb-3 text-primary">Area</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=서울">서울</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=경기">경기</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=인천">인천</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=강원">강원</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=충청">충청</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=세종">세종</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=전라">전라</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=경상">경상</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/class/menulocation?addr=제주">제주</a>
											</li>
										</ul>
									</div>
								</div>
							</div></li>
						<!--  두번째 탭 -->
						<li class="nav-item "><a
							href="<c:url value='/member/memberEditChkPwd'/>"
							class="nav-link "> <span class="nav-link-inner-text mr-1">
									My Page </span>
						</a></li>
					</ul>
				</div>


				<!-- 탑 우측 버튼들 -->
				<div class="d-none d-lg-block @@cta_button_classes">

					<!-- 로그인 -->
					<c:if test="${empty sessionScope.mId }">
						<a href="${pageContext.request.contextPath }/login/login"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG IN</a>
					</c:if>
					<!-- 로그인 끝 -->

					<!-- 로그아웃, 프로필 사진 띄우기 -->
					<c:if test="${!empty sessionScope.mId }">
						<a
							href="${pageContext.request.contextPath }/member/memberEditChkPwd"
							alt="마이페이지"> <img
							class="avatar-sm img-fluid rounded-circle mr-2" alt="avatar"
							<c:if test="${!empty sessionScope.mFilename}">
                                src="<c:url value='/resources/file_upload/${sessionScope.mFilename}'/>" 
                            </c:if>
							<c:if test="${empty sessionScope.mFilename}">
                                src="<c:url value='/resources/assets/img/default.png'/>" 
                            </c:if>>
						</a>
						<span class="font-weight-bold" style="margin-right: 20px;">${sessionScope.mNickname}님</span>
						<a href="${pageContext.request.contextPath }/login/logout"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG OUT</a>
					</c:if>
					<!-- 로그아웃, 프로필 사진 띄우기 끝 -->
					<c:if test="${!empty sessionScope.mId }">
						<!--쪽지함-->
					&nbsp;&nbsp;&nbsp;&nbsp; <a style="position: relative;"
							width="100px;"
							href="<c:url value='note/noteList?mId=${sessionScope.mId }'/>">
							<img id="letter" width="36px"
							src="<c:url value='/resources/assets/img/kjy/letter_neulchan.png'/>">
							<span id="span1"
							class="badge badge-danger position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
							style="top: -10px; right: -5px;"></span>
						</a>
						<!--쪽지함 끝-->

						<!-- 채팅창 -->
					&nbsp;&nbsp;&nbsp;&nbsp; <a style="position: relative;"
							width="100px;" href="<c:url value='#'/>"> <img id="chat"
							width="50px"
							src="<c:url value='/resources/assets/img/logo/chatting2_user_light.png'/>">
							<span id="span2"
							class="badge badge-danger position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
							style="top: -10px; right: -5px;"></span>
						</a> &nbsp;&nbsp;&nbsp;&nbsp;
					<!-- 채팅창 끝 -->
					</c:if>
				</div>

				<!-- 탑우측 버튼 끝 -->

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
		<script type="text/javascript">
			$(function() {
				 /* var wsUri = "ws://localhost:8080/readNum"; */

				function send_message() {
					const websocket = new WebSocket("ws://localhost:8080/read/num");
					websocket.onopen = function(evt) {
						alert('여긴1');
						onOpen(evt);
					};
					websocket.onmessage = function(evt) {
						alert('여긴2');
						onMessage(evt);
					};
					websocket.onerror = function(evt) {
						onError(evt);
					};
				}
				function onOpen(evt) {
						alert('여긴-1');
					websocket.send("${sessionScope.mId}");
				}
				function onMessage(evt) {
						alert('여긴-2');
					$('#span1').append(evt.data);
				}
				function onError(evt) {
				}
				$(document).ready(function() {
					send_message();
				});
			})
		</script>
