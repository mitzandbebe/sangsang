<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>상상공방-탑</title>

<!-- Primary Meta Tags -->
<title>Spaces - All items list</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - All items list">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - All items list">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - All items list">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

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
    <nav id="navbar-main" class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-light navbar-theme-primary">
        <div class="container">
			<a class="navbar-brand @@logo_classes"
				href="${pageContext.request.contextPath }/index"> 
				<img
				class="navbar-brand-dark common"
				src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_bottom.png"
				height="35" alt="Logo light"> 
				<img
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
								src="${pageContext.request.contextPath }/resources/assets/img/brand/admin_top_light.png"
								height="35" alt="Logo Impact">
							</a>
						</div>
							<div class="col-6 collapse-close">
                            <a href="#navbar_global" role="button" class="fas fa-times" data-toggle="collapse"
                                data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false"
                                aria-label="Toggle navigation"></a>
                        </div>
                    </div>
                </div>
                
                
                
                <ul class="navbar-nav navbar-nav-hover justify-content-center">
                <!-- 첫번쨰 탭 -->
                  <li class="nav-item dropdown">
                        <a href="#" id="mainPagesDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">상상 클래스</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-megamenu p-3 p-lg-4" aria-labelledby="mainPagesDropdown">
                            <div class="row">
                                <div class="col-6 col-mb-4" >
                                    <h6 class="d-block mb-3 text-primary">Category</h6>
										<ul class="list-style-none mb-4">
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/index.html">공예
													DIY</a></li> <!-- 정렬 건들지 말 것 -->
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
										<!-- <h6 class="d-block text-primary">Legal</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/legal.html">Legal center</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/terms.html">Terms & agreement</a>
                                        </li>
                                    </ul> -->
                                </div>
                                <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">Area</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item"><a class="megamenu-link"
												href=".${pageContext.request.contextPath }/resources/html/index-2.html">서울</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/index-3.html">경기</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/about.html">인천</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/pricing.html">강원</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/team.html">충북</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">충남</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">세종</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">전북</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">전남</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">경북</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">경남</a>
											</li>
											<li class="mb-2 megamenu-item"><a class="megamenu-link"
												href="${pageContext.request.contextPath }/resources/html/contact.html">제주</a>
											</li>
                                    </ul>
                                    <!-- <h6 class="d-block mb-3 text-primary">Support</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/support.html">Support center</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/support-topic.html">Support topic</a>
                                        </li>
                                    </ul> -->
                                   <!--  <h6 class="d-block mb-3 text-primary">Blog</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/blog.html">Blog</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/blog-post.html">Blog post</a>
                                        </li>
                                    </ul> -->
                                </div>
                                <!-- <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">User</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/sign-in.html">Sign in</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/sign-up.html">Sign up</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/forgot-password.html">Forgot password</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/reset-password.html">Reset password</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Special</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/404.html">404 Not Found</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/500.html">500 Server Error</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/maintenance.html">Maintenance</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/coming-soon.html">Coming soon</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/blank.html">Blank page</a>
                                        </li>
                                    </ul>
                                </div> -->
                            </div>
                        </div>
                    </li>
                    <!-- 두번째 탭 -->
                    <!-- <li class="nav-item dropdown">
                        <a href="#" id="dashboardPagesDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">상상클래스</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-megamenu-sm p-3 p-lg-4" aria-labelledby="dashboardPagesDropdown">
                            <div class="row">
                                <div class="col-6">
                                    <h6 class="d-block mb-3 text-primary">카테고리</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/account.html">My account</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/settings.html">Settings</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/security.html">Security</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Items</h6>
                                    <ul class="list-style-none">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/my-items.html">My items</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/edit-item.html">Edit item</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-6">
                                    <h6 class="d-block mb-3 text-primary">Messaging</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/messages.html">Messages</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/single-message.html">Chat</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Billing</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/billing.html">Billing details</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/invoice.html">Invoice</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li> -->
                    <!--  세번쨰 탭 -->
                    <!-- <li class="nav-item dropdown">
                        <a href="#" id="supportDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">Support</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg" aria-labelledby="supportDropdown">
                            <div class="col-auto px-0">
                                <div class="list-group list-group-flush">
                                    <a href="https://themesberg.com/docs/spaces/getting-started/quick-start/" target="_blank"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-secondary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">Documentation<span class="badge badge-sm badge-secondary ml-2">v3.0</span></span>
                                            <span class="small">Examples and guides</span>
                                        </div>
                                    </a>
                                    <a href="https://themesberg.com/contact" target="_blank"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-primary"><i
                                                class="fas fa-microphone-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">Support</span>
                                            <span class="small">Looking for answers?</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li> -->
                </ul>
                
           </div>
            <!-- 탑 우측 버튼들 -->
            <div class="d-none d-lg-block @@cta_button_classes">
					<!-- 프로필 사진 -->
					<!-- <div class="profile_photo" style="margin-left: 235px; "> -->
					
						
                            
					<!-- </div> -->
					<!-- 프로필 사진 끝 -->
					
					<!-- 마이 페이지 -->
					<!--  <a
						href="${pageContext.request.contextPath }/member/memberEditChkPwd"
						class="btn btn-md btn-outline-white animate-up-2 mr-3"><i
						class="fas fa-user-edit"></i> 
						<span class="d-xl-none">MY PAGE</span> 
						<span class="d-none d-xl-inline">MY PAGE</span></a>-->
					<!-- 마이 페이지 끝 -->
					<!-- 로그인 -->
					<c:if test="${empty sessionScope.mId }">
						<a href="${pageContext.request.contextPath }/login/login"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG IN</a>
					</c:if>
					<!-- 로그인 끝 -->
					<!-- 로그아웃 -->
					<c:if test="${!empty sessionScope.mId }">
					<a href = "${pageContext.request.contextPath }/member/memberEditChkPwd" alt="마이페이지">
						<img class="avatar-sm img-fluid rounded-circle mr-2" alt="avatar"
                            <c:if test="${!empty sessionScope.mFilename}">
                                src="<c:url value='/resources/file_upload/${sessionScope.mFilename}'/>" 
                            </c:if>
                            <c:if test="${!empty sessionScope.mFilename}">
                                src="<c:url value='/resources/file_upload/default.png'/>" 
                            </c:if>     
                        > </a>
                        <span class="font-weight-bold" style="margin-right: 20px;">${sessionScope.mNickname}님</span>
						<a href="${pageContext.request.contextPath }/login/logout"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG OUT</a>
					</c:if>            
					<!-- 로그아웃 끝 -->
					<!--쪽지함-->
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a style="position:relative;" width="100px;"
						href="<c:url value='note/noteList?mId=${sessionScope.mId }'/>">
						<img id="letter" width="36px"
						src="<c:url value='/resources/assets/img/kjy/letter_neulchan.png'/>">
						<span id="span1" class="badge badge-danger position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" 
						style="top:-10px; right:-5px;">24</span>
					</a>
					<!--쪽지함 끝-->
					<!-- 채팅창 -->
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a style="position:relative;" width="100px;"
						href="<c:url value='#'/>">
						<img id="chat" width="50px"
						src="<c:url value='/resources/assets/img/logo/chatting2_user_light.png'/>">
						<span id="span2" class="badge badge-danger position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" 
						style="top:-10px; right:-5px;">9</span>
						</a>
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<!-- 채팅창 끝 --> 
					
			</div>
			<!-- 화면 크기 줄일 때 반응형 네비게이션 바 -->
            <div class="d-flex d-lg-none align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global"
                    aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation"><span
                        class="navbar-toggler-icon"></span></button>
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
