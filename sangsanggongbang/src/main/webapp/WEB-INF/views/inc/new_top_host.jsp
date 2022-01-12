<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	href="${pageContext.request.contextPath }/resources/css/host.css"
	rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
</head>
<!-- 헤드 설정 끝 -->


<body class="bg-soft">

	<header class="header-global">
		<nav id="navbar-main"
			class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-light navbar-theme-primary">
			<div class="container">
				<!-- 호스트 인덱스 url로 연결하기 -->
				<a class="navbar-brand @@logo_classes"
					href="${pageContext.request.contextPath }/host/hostIndex"> <img
					class="navbar-brand-dark common"
					src="${pageContext.request.contextPath }/resources/assets/img/brand/host_bottom.png"
					height="35" alt="Logo light"> <img
					class="navbar-brand-light common"
					src="${pageContext.request.contextPath }/resources/assets/img/brand/host_top_light.png"
					height="35" alt="Logo dark">
				</a>
				<div class="navbar-collapse collapse" id="navbar_global">
					<div class="navbar-collapse-header">
						<div class="row">
							<div class="col-6 collapse-brand">
								<a
									href="${pageContext.request.contextPath }/resources/index.html">
									<img
									src="${pageContext.request.contextPath }/resources/assets/img/brand/host_top_light.png"
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
							id="supportDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">클래스 관리</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-menu-lg"
								aria-labelledby="supportDropdown">
								<div class="col-auto px-0">
									<div class="list-group list-group-flush">
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/class/myclass'/>"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-secondary"><i
												class="fas fa-file-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">클래스 현황</span>
												<!-- <span class="small">Examples and guides</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/class/inputclass'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-secondary"><i
												class="fas fa-file-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">클래스 등록</span>
												<!-- <span class="small">Examples and guides</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/class/listofClass'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">클래스 수정</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/class/listdelete'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">클래스 삭제</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
									</div>
								</div>
							</div></li>

						<!-- 두번째 탭 -->
						<li class="nav-item dropdown"><a href="#"
							id="supportDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">정산 관리</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-menu-lg"
								aria-labelledby="supportDropdown">
								<div class="col-auto px-0">
									<div class="list-group list-group-flush">
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='#'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-secondary"><i
												class="fas fa-file-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">★★여기에 택스트★★</span>
												<!-- <span class="small">Examples and guides</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='#'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">★★여기에 택스트★★</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='#'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">★★여기에 택스트★★</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
									</div>
								</div>
							</div></li>

						<!-- 세번째 탭 -->
						<li class="nav-item dropdown"><a href="#"
							id="supportDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">My Page</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-menu-lg"
								aria-labelledby="supportDropdown">
								<div class="col-auto px-0">
									<div class="list-group list-group-flush">
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='../class/inputclass'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-secondary"><i
												class="fas fa-file-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">★★여기에 택스트★★</span>
												<!-- <span class="small">Examples and guides</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='/class/listofClass'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">★★여기에 택스트★★</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='../class/listdelete'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">★★여기에 택스트★★</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
										<!-- a태그에 href 링크, span태그 사이에 택스트 제외 아무것도 건들지 마세용!!! -->
										<a href="<c:url value='../class/listdelete'/>" target="_blank"
											class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
											<!-- <span class="icon icon-md icon-primary"><i
												class="fas fa-microphone-alt"></i></span> -->
											<div class="ml-4">
												<span class="text-dark d-block">★★여기에 택스트★★</span>
												<!-- <span class="small">Looking for answers?</span> -->
											</div>
										</a>
									</div>
								</div>
							</div></li>
					</ul>
				</div>

				<!-- 탑 우측 버튼들 -->
				<div class="d-none d-lg-block @@cta_button_classes">

					<!-- 로그인 -->
					<c:if test="${empty sessionScope.hId }">
						<a href="${pageContext.request.contextPath }/host/hostLogin"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG IN</a>
					</c:if>
					<!-- 로그인 끝 -->
					<!-- 로그아웃 -->
					<c:if test="${!empty sessionScope.hId }">
						<a
							href="${pageContext.request.contextPath }/host/hostEditChkPwd"
							alt="마이페이지"> <img
							class="avatar-sm img-fluid rounded-circle mr-2" alt="avatar"
							<c:if test="${!empty sessionScope.hFilename}">
                                src="<c:url value='/resources/file_upload/${sessionScope.hFilename}'/>" 
                            </c:if>
							<c:if test="${!empty sessionScope.hFilename}">
                                src="<c:url value='/resources/file_upload/default.png'/>" 
                            </c:if>>
						</a>
						<span class="font-weight-bold" style="margin-right: 20px;">${sessionScope.hNickname}님</span>
						<a href="${pageContext.request.contextPath }/login/logout"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG OUT</a>
					</c:if>
					<!-- 로그아웃 끝 -->
					<!--쪽지함-->
					&nbsp;&nbsp;&nbsp;&nbsp; <a
						style="position: relative; width: 100px;"
						href="<c:url value='note/noteList?mId=${sessionScope.hId }'/>">
						<img id="letter" width="36px"
						src="<c:url value='/resources/assets/img/logo/letter2_host.png'/>">
						<span id="span1"
						class="badge badge-danger position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
						style="top: -10px; right: -5px;">24</span>
					</a>
					<!--쪽지함 끝-->
					<!-- 채팅창 -->
					&nbsp;&nbsp;&nbsp;&nbsp; <a
						style="position: relative; width: 100px;"
						href="<c:url value='#'/>"> <img id="chat" width="50px"
						src="<c:url value='/resources/assets/img/logo/chatting2_host_dark.png'/>">
						<span id="span2"
						class="badge badge-danger position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
						style="top: -10px; right: -5px;"></span>
					</a> &nbsp;&nbsp;&nbsp;&nbsp;
					<!-- 채팅창 끝 -->

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
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
var flag= "${sessionScope.uOrh}"
console.log(flag);
var roomName = "${room.name}";
var roomId = "${room.roomId}";
var username = null;
   if(flag == 'u'){
    username = "${sessionScope.mNickname}";
   }else{
   	username = "${sessionScope.hNickname}";
   }
$(document).ready(function(){
	console.log(roomId)
    console.log(roomName + ", " + roomId + ", ");

    var sockJs = new SockJS("/sangsanggongbang/stomp/chat");
    //1. SockJS를 내부에 들고있는 stomp를 내어줌
    var stomp = Stomp.over(sockJs);
    var count = null;
	var bool = null;
	
    //2. connection이 맺어지면 실행
    stomp.connect({}, function (){
       console.log("STOMP Connection") 
       $('#chatBadge').css('visibility', 'visible');
       //4. subscribe(path, callback)으로 메세지를 받을 수 있음
       count=0;
       stomp.subscribe("/sub/chat/room/" + roomId, function (chat) {
    	   
           var content = JSON.parse(chat.body);

           var writer = content.writer;
           var str = '';
           console.log(count);
           if(writer !== username){
        	   if(count==0){
        		   count=32;
        		   bool=true;
        	   }else{
        		   bool=false;
        	   }
        	   console.log(count);
        	   console.log(bool);
        	   if(bool){
        		  console.log("after Message :" + count);
              	  var t = "+"+count;
              	  console.log("t>>>>>>>>>>"+t);
              	  $('#span2').html('N');
            	  console.log("before Message :" + count);
        	   }else{
        		   
        	   }
        	   count = 100;
        	   console.log("count!!!!!!!"+count);
           }else{
        	   $('#span2').html('');
           }
       });
    });
    $('#chat').click(function(){
    	$('#span2').html('');
    	var contextPath="/sangsanggongbang";
    	$('#span2').html('');
    	count =0;
    	open(contextPath+'/chat/room?roomId=${sessionScope.hNickname}','chat',
    	 'width=1000,height=840,left=0,top=0,location=yes,resizable=no');
    });
});

</script>
	<!-- 로딩창 끝 -->