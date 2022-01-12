<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



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
	href="${pageContext.request.contextPath }/resources/css/host.css"
	rel="stylesheet">
 
<!-- �룿�듃 �궫�엯 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">

<!-- 寃곗젣紐⑤뱢 -->
</head>

<body class="bg-soft">

	<header class="header-global">
		<nav id="navbar-main"
			class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-5 px-lg-6 navbar-light navbar-transparent navbar-theme-primary">
			<div id="top_row_icon">
			<div class="container">
				<a class="navbar-brand @@logo_classes"
					<c:if test="${!empty sessionScope.mId && empty sessionScope.hId }">
					href="${pageContext.request.contextPath }/index"
					</c:if>
					<c:if test="${empty sessionScope.mId && !empty sessionScope.hId }">
					href="${pageContext.request.contextPath }/host/hostIndex"
					</c:if>
					>
					 <img
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
					<!-- 메뉴1 -->
					<ul class="navbar-nav navbar-nav-hover justify-content-center">
						<li class="nav-item dropdown"><a href="<c:url value='/class/inputclass'/>"
							id="mainPagesDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">클래스</span> <i
								class="fas fa-angle-down nav-link-arrow"></i>
						</a>
							<div class="dropdown-menu dropdown-megamenu p-3 p-lg-4"
								aria-labelledby="mainPagesDropdown">
								<div class="row">
									<div class="col-6 col-lg-4" style="color: #49746E;">
										<ul class="list-style-none mb-4">
											<a href="<c:url value='/class/inputclass'/>"> 
												<span class="nav-link-inner-text mr-1">클래스 등록</span> 
											</a>
										</ul>
										<ul class="list-style-none mb-4">
											<a href="<c:url value='/class/listofClass'/>"> 
												<span class="nav-link-inner-text mr-1">클래스 수정</span> 
											</a>
										</ul>
										<ul class="list-style-none mb-4">
											<a href="<c:url value='/class/listdelete'/>"> 
												<span class="nav-link-inner-text mr-1">클래스 삭제</span> 
											</a>
										</ul>
									</div>
								</div>
							</div>
					</ul>
					<!-- 메뉴2 -->
					<ul class="navbar-nav navbar-nav-hover justify-content-center">
						<li class="nav-item dropdown"><a href="#"
							id="mainPagesDropdown" class="nav-link dropdown-toggle"
							aria-expanded="false" data-toggle="dropdown"> <span
								class="nav-link-inner-text mr-1">메뉴2</span> <i
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
</div>
		<!--프로필, 로그인,로그아웃,쪽지,채팅 -->
			<div id="top_button_row">
				<div class="d-none d-lg-block @@cta_button_classes">
				
					<!-- 프로필 사진 
					<div class="profile_photo">
						<a href="">
						
						</a>					
					</div>
					 프로필 사진 끝 -->
					
					<!--  <a
						href="${pageContext.request.contextPath }/member/memberEditChkPwd"
						target="_blank"
						class="btn btn-md btn-outline-white animate-up-2 mr-3"><i
						class="fas fa-user-edit"></i> 
						<span class="d-xl-none">MY PAGE</span> 
						<span class="d-none d-xl-inline">MY PAGE</span></a>-->

					<c:if test="${empty sessionScope.hId }">
						<a href="${pageContext.request.contextPath }/host/hostLogin"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG IN</a>
					</c:if>

					<c:if test="${!empty sessionScope.hId }">
						<a href= "${pageContext.request.contextPath }/host/hostEditChkPwd" alt="마이페이지">
						<img class="avatar-sm img-fluid rounded-circle mr-2" alt="avatar"
                            <c:if test="${!empty sessionScope.hFilename}">
                                src="<c:url value='/resources/file_upload/${sessionScope.hFilename}'/>" 
                            </c:if>
                            <c:if test="${empty sessionScope.hFilename}">
                                src="<c:url value='/resources/file_upload/default.png'/>" 
                            </c:if>     
                        ></a>
                        <span class="font-weight-bold" style="margin-right: 20px;">${sessionScope.hNickname}님</span>
						<a href="${pageContext.request.contextPath }/host/logout"
							class="btn btn-md btn-secondary animate-up-2"><i
							class="fas fa-user-lock"></i> LOG OUT</a>
					</c:if>
					
					<!-- 채팅창 -->
					&nbsp;&nbsp;&nbsp;&nbsp; 
					
						
						
						<img id="openChat" width="52px"
						src="<c:url value='/resources/assets/img/logo/chatting2_host_dark.png'/>">
						<span id="chatBadge" class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger badge badge-danger"></span>
						
					<!-- 채팅창 끝 --> 
					
					<!--쪽지함-->
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a
						href="<c:url value='note/noteList?mId=${sessionScope.hId }'/>">
						<img width="36px"
						src="<c:url value='/resources/assets/img/logo/letter2_host.png'/>"></a>
					<!--쪽지함 끝-->
				</div>
			</div>
			
		<!-- 프로필, 로그인, 로그아웃, 쪽지, 채팅 끝 -->


			<div class="d-flex d-lg-none align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbar_global" aria-controls="navbar_global"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
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
	<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
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
              	  $('#chatBadge').html('N');
            	  console.log("before Message :" + count);
        	   }else{
        		   
        	   }
        	   count = 100;
        	   console.log("count!!!!!!!"+count);
           }else{
        	   $('#chatBadge').html('');
           }
       });

       //3. send(path, header, message)로 메세지를 보낼 수 있음
       stomp.send('/pub/chat/enter', {}, JSON.stringify({roomId: roomId, writer: username}))
    });
    $('#openChat').click(function(){
    	$('#chatBadge').html('');
    	var contextPath="/sangsanggongbang";
    	$('#chatBadge').html('');
    	open(contextPath+'/chat/room?roomId=${sessionScope.hNickname}','chat',
    	 'width=1000,height=840,left=0,top=0,location=yes,resizable=no');
    });
});

</script>