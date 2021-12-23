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

<script type="text/javascript"
	src="<c:url value='/resources/ckeditor/ckeditor.js'/> "></script>

<body>
	<div class="card border-light p-md-2">
		<div class="card-body p-4">
			<form name="frmEwrite" method="post" enctype="multipart/form-data"
				action="<c:url value='/mainevent/eventwrite'/> ">

				<div class="row">
					<div class="col-lg-12 mb-5">
						<div
							style="display: block; width: 100%; border-bottom: solid 1px gray">
							<label for="title">제목 </label> <input type="text" id="title"
								name="newsTitle" class="infobox"
								style="border: none; outline: none;" />
						</div>

						<br>

						<!-- 이벤트 글쓰기 -->
						<div class="form-group" style="display: block; width: 100%;">
							<label for="exampleFormControlTextarea2">이벤트 내용</label>
							<textarea class="ckediter" id="content" name="newsContent"
								rows="20"></textarea>
						</div>
					</div>
				</div>

				<input value="등록" class="btn mb-2 mr-2 btn-outline-gray"
					type="submit"> <input value="목록"
					class="btn mb-2 mr-2 btn-outline-gray" id="btlist" type="button">

			</form>
		</div>
	</div>
	<script type="text/javascript">
		CKEDITOR.replace('content');

		$(function() {
			$('form[name=frmEwrite]').submit(function() {
				$('.infobox').each(function(idx, item) {
					if ($(this).val().length < 1) {
						alert($(this).prev().html() + "을 입력하세요");
						$(this).focus();
						event.preventDefault();
						return false; //each 탈출
					}
	
				});
			});
			
	/* 		$('form[name=frmEwrite]').submit(function() {
				// 입력 내용 받기 = CKEDITOR.instances.textarea태그의id.getData();
				if(CKEDITOR.instances.content.getData() =='' 
				        || CKEDITOR.instances.content.getData().length ==0){
				    alert("내용을 입력해주세요.");
				    $("#content").focus();
				    return false;
				}

			} */

			$('#btlist').click(function() {
				location.href = "<c:url value='/mainevent/eventlist'/>";
			});

		});
	
		$(function(){ 
			var privacy_editor = CKEDITOR.replace("termsContent", {filebrowserUploadUrl: '${contextPath}/privacies/imgUpload'}); 
			$("#privacyRegit").click(function(){ 
				privacyRegit(privacy_editor); 
			}); 
	    }); 
		function privacyRegit(privacy_editor){ 
			var category = $('input[name=category]').val(); 
			var version = $("#version").val(); 
			var postAt = $("#postAt").val(); 
			if(version.trim() == ''){ 
				alert("버전을 입력해주세요."); 
				return false; 
			} 
			if(postAt.trim() == ''){ 
				alert("게시일을 선택해주세요."); 
				return false; 
			} 
			if(privacy_editor.getData().trim() == ''){ 
				alert("내용을 입력해주세요."); 
				return false; 
			} 
			$("#privacyDto").submit(); 
		}
		
		
	</script>
</body>
</html>