<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Spaces - Sign up</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Sign up">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Sign up">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Sign up">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath }/resources/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath }/resources/assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="${pageContext.request.contextPath }/resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="${pageContext.request.contextPath }/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css" href="${pageContext.request.contextPath }/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

<!-- VectorMap -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendor/jqvmap/dist/jqvmap.min.css">

<!-- Main CSS -->
<link type="text/css" href="${pageContext.request.contextPath }/resources/css/spaces.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->
<style>
	#msgArea::-webkit-scrollbar {
    display: none;
    border : 1px solid black;
}
</style>
</head>
<body>
	<div class="section section-lg bg-soft" style="height: 100%; width: 100%;">
		<div class="container">
			<div class="col-12">
				<div class="col-12 col-lg-12" style="margin:0 auto;">
					<div id="msgArea" style="width: 90%; height: 700px; overflow-y: auto;" ></div>
					<textarea class="form-control border border-light-gray" id="msg" style="width: 90%" placeholder="Your Message" rows="6" maxlength="1000"></textarea>
					<div>
				    	<button id="button-send" class="btn btn-dark mt-0" style="width: 90%">전송</button>
					</div>
				</div>
				
			</div>
			
		</div>
		
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var flag= "${sessionScope.uOrh}"
	console.log(flag);
	var roomName = "${room.name}";
    var roomId = "${room.roomId}";
    var username = null;
    var myprofile = null;
    if(flag == 'u'){
	    username = "${sessionScope.mNickname}";
	    myprofile = "'/sangsanggongbang/resources/file_upload/${sessionScope.mFilename}'";
	    console.log(username);
    }else{
    	username = "${sessionScope.hNickname}";
    	myprofile = "'/sangsanggongbang/resources/file_upload/${sessionScope.hFilename}'";
    	console.log(username);
    }
$(document).ready(function(){
    console.log(roomName + ", " + roomId + ", ");

    var sockJs = new SockJS("/sangsanggongbang/stomp/chat");
    //1. SockJS를 내부에 들고있는 stomp를 내어줌
    var stomp = Stomp.over(sockJs);
	
    //2. connection이 맺어지면 실행
    stomp.connect({}, function (){
       console.log("STOMP Connection")

       //4. subscribe(path, callback)으로 메세지를 받을 수 있음
       stomp.subscribe("/sub/chat/room/" + roomId, function (chat) {
           var content = JSON.parse(chat.body);
           var writer = content.writer;
           
           var str = '';
           var d = new Date();
      	   /*var today = (d.getMonth()+1)+"-"+d.getDate+" "+d.getHours+":"+d.getMinutes;*/
      	   var today = d.toLocaleString();
           if(writer === username){
        	   str = "<div class='card bg-primary text-white border-light p-4 ml-md-5 ml-lg-6 mb-4'>";
               str += "<div class='d-flex justify-content-between align-items-center mb-2'>";
               str += "<span class='font-small'>";
               str += "<img class='avatar-sm img-fluid rounded-circle mr-3' src="+myprofile+">";
               str += "<span class='font-weight-bold'>"+writer+"</span>";
               str += "<span class='ml-2'>"+today+"</span>";
               str += "</span></div><p class='m-0'>"+content.message+"</p></div>";
               str += "</div></div>";
               $("#msgArea").append(str);
               $('#msgArea').stop().animate({ scrollTop: $('#msgArea')[0].scrollHeight }, 1000);
               console.log($('#msgArea')[0].scrollHeight);
           }else{
        	   
        	   str =  "<div class='card bg-white border-light p-4 mb-4'>";
               str += "<div class='d-flex justify-content-between align-items-center mb-2'>";
               str += "<span class='font-small'>";
               str += "<img class='avatar-sm img-fluid rounded-circle mr-3' src="+content.profileUrl+">";
               str += "<span class='font-weight-bold'>"+writer+"</span>";
               str += "<span class='ml-2'>"+today+"</span></span>";
               str += "</div><p class='m-0'>"+content.message+"</p></div>";
               $("#msgArea").append(str);
               $('#msgArea').stop().animate({ scrollTop: $('#msgArea')[0].scrollHeight }, 1000);
               
           }
       });

       //3. send(path, header, message)로 메세지를 보낼 수 있음
       /*stomp.send('/pub/chat/enter', {}, JSON.stringify({roomId: roomId, writer: username, profileUrl: myprofile}))*/
    });

    $("#button-send").on("click", function(e){
    	 var msg = document.getElementById("msg");
    	 
         console.log(username + ":" + msg.value);
         stomp.send('/pub/chat/message', {}, JSON.stringify({roomId: roomId, message: msg.value, writer: username, profileUrl: myprofile}));
         msg.value = '';
    });
    $("#msg").keydown(function(key) {
        if (key.keyCode == 13) {
        	 var msg = document.getElementById("msg");
        	 
             console.log(username + ":" + msg.value);
             stomp.send('/pub/chat/message', {}, JSON.stringify({roomId: roomId, message: msg.value, writer: username, profileUrl: myprofile}));
             msg.value = '';
        }
    });

출처: https://alpreah.tistory.com/101 [생각에 취하는날]
    function enterkey() {
    	if (window.event.keyCode == 13) {
        	// 엔터키가 눌렸을 때
    		var msg = document.getElementById("msg");
       	 
            console.log(username + ":" + msg.value);
            stomp.send('/pub/chat/message', {}, JSON.stringify({roomId: roomId, message: msg.value, writer: username, profileUrl: myprofile}));
            msg.value = '';
        }
    }
    
});
</script>
    <!-- Core -->
<script src="${pageContext.request.contextPath }/resources/vendor/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/headroom.js/dist/headroom.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- NoUISlider -->
<script src="${pageContext.request.contextPath }/resources/vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="${pageContext.request.contextPath }/resources/vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="${pageContext.request.contextPath }/resources/vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="${pageContext.request.contextPath }/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="${pageContext.request.contextPath }/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="${pageContext.request.contextPath }/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="${pageContext.request.contextPath }/resources/vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="${pageContext.request.contextPath }/resources/vendor/chartist/dist/chartist.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="${pageContext.request.contextPath }/resources/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="${pageContext.request.contextPath }/resources/assets/js/spaces.js"></script>
</body>

</html>
 </body>

</html>