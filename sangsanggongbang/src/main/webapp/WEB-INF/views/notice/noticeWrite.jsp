<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>이벤트 글쓰기</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Blog post">
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
<meta property="og:title" content="Spaces - Blog post">
<meta property="og:description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url"
	content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Blog post">
<meta property="twitter:description"
	content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120"
	href="<c:url value='/resources/assets/img/favicon/apple-touch-icon.png'/> ">
<link rel="icon" type="image/png" sizes="32x32"
	href="<c:url value='/resources/assets/img/favicon/favicon-32x32.png'/> ">
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value='/resources/assets/img/favicon/favicon-16x16.png'/> ">
<link rel="manifest"
	href="<c:url value='/resources/assets/img/favicon/site.webmanifest'/> ">
<link rel="mask-icon"
	href="<c:url value='/resources/assets/img/favicon/safari-pinned-tab.svg'/> "
	color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css"
	href="<c:url value='/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css'/> "
	rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css"
	href="<c:url value='/resources/vendor/leaflet/dist/leaflet.css'/>"
	rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet"
	href="<c:url value='/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css'/> ">

<!-- VectorMap -->
<link rel="stylesheet"
	href="<c:url value='/resources/vendor/jqvmap/dist/jqvmap.min.css'/> ">

<!-- Main CSS -->
<link type="text/css" href="<c:url value='/resources/css/spaces.css'/> "
	rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->
<script
	src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script
	src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/>"></script>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value='/resources/ckeditor/ckeditor.js'/> "></script>
</head>
<body>
	<form name="frmEwrite" method="post" enctype="multipart/form-data"
		action="<c:url value='/notice/noticeWrite'/> ">
		<div class="row">
			<div class="col-lg-12 mb-5">
				<div
					class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">

					<!-- 이벤트 글쓰기 -->
					<div class="form-group">
						<label for="exampleFormControlTextarea2">공지사항 등록</label>
						<br>
						<input type="text" id="title" name="noticeTitle">
						<textarea class="form-control" id="content" name="noticeContent"
							rows="20"></textarea>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 mb-5">
				<div
					class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">
					<div>
						<input value="등록" class="btn mb-2 mr-2 btn-outline-gray"
							type="submit"> <input value="목록"
							class="btn mb-2 mr-2 btn-outline-gray" id="btlist" type="button">
					</div>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript">
		CKEDITOR.replace('content');

		$(function() {
			$('form[name=frmEwrite]').submit(function() {
				$('#content').each(function(idx, item) {
					if ($(this).val().length < 1) {
						alert($(this).prev().html() + "을 입력하세요");
						$(this).focus();
						event.preventDefault();
						return false; //each 탈출
					}
				});
			});

			$('#btlist').click(function() {
				location.href = "<c:url value='/notice/noticeList'/>";
			});

		});
	</script>
</body>
</html>