<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 탑 넣기 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/new_top_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/new_top_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:otherwise>
</c:choose>
<!-- 탑 완료 -->

<!-- Hero -->
<section
	class="section section-header bg-primary overlay-primary text-white pb-8 pb-lg-10"
	data-background="../assets/img/team-hero.jpg">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-4">Find Your Class.</h1>
				<br>
				<p class="lead mb-4 text-muted">Here's the class you've always
					thought of. Make your day special.</p>
				<!-- <a href="#" class="btn btn-secondary mr-3">What we do <span
					class="ml-2"><span class="fas fa-arrow-right"></span></span></a> -->
			</div>
		</div>
	</div>
	<figure
		class="position-absolute bottom-0 left-0 w-100 d-none d-md-block mb-n2">
		<svg class="fill-white" enable-background="new 0 0 1504 131.3"
			viewBox="0 0 1504 131.3" xmlns="http://www.w3.org/2000/svg">
			<path
				d="m877.8 85c139.5 24.4 348 33.5 632.2-48.2-.2 32.5-.3 65-.5 97.4-505.9 0-1011.6 0-1517.5 0 0-33.3 0-66.7 0-100.1 54.2-11.4 129.5-23.9 220-28.2 91-4.3 173.6 1 307.4 18.6 183.2 24.2 295.2 49.4 358.4 60.5z" /></svg>
	</figure>
</section>
<!-- End of Hero section -->
<!-- Section -->
<section class="section section-lg">
	<div class="container">
		<div class="row">
			<div class="col-md-4 pr-lg-4">
				<h2 class="display-2 font-weight-light mb-5">
					Let's share few things <span class="font-weight-bold">about
						us.</span>
				</h2>
			</div>
			<div class="col-md-4">
				<p class="lead">
					지속되는 코로나 상황으로 코로나 <br>블루가 만연한 요즘, 건강한 생활을<br> 위해서는 자기개발과
					힐링이 필요하다.<br>
					<br> 클래스를 이용하는 고객은 특별한 <br>하루를 만들 수 있는 다양한 클래스를 이용하여
					취미생활을 즐길 수 있고,<br>
					<br> 클래스를 여는 사업자들에게는 새로운 유통 플랫폼을 제공한다.
				</p>
			</div>
			<div class="col-md-4">
				<p class="lead">
					<span class="font-weight-bold">상상공방은</span> 고객과 소통할 수 있는<br>
					창구를 열어, 서로가 필요한 부분을<br> 채울 수 있는 사이트를 만들고자 한다.
				</p>
				<!-- <img class="mt-4" src="../assets/img/signature.svg" alt="signature"
					width="100"> -->
			</div>
		</div>
	</div>
</section>
<!-- End of section -->
<!-- Section -->
<section class="section section-lg pt-0">
	<div class="container">
		<div class="row d-none d-md-block">
			<div class="col">
				<div class="card card-body bg-soft p-0 p-lg-3">
					<div class="card-group bg-soft">
						<div class="card mb-0 bg-soft">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-users"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">3</span>M+
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Users</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-user"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">13</span>K
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Hosts</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-graduation-cap"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">15</span>K
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Classes</p>
							</div>
						</div>
						<!-- <div class="card mb-0 bg-soft border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-globe-americas"></span>
								</div>
								Heading
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">15</span>
								</h3>
								Text
								<p class="text-muted mb-0">Countries</p>
							</div>
						</div> -->
					</div>
					<div class="card-group">
						<div class="card mb-0 border-top bg-soft rounded-0">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-ticket-alt"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="text-dark mr-1">24/7</span>
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Customer Service</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-top border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-dollar-sign"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">50</span>$
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Average Cost</p>
							</div>
						</div>
						<!-- <div class="card mb-0 bg-soft border-top border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-award"></span>
								</div>
								Heading
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">10</span>
								</h3>
								Text
								<p class="text-muted mb-0">Awards</p>
							</div>
						</div> -->
						<div class="card mb-0 bg-soft border-top border-left rounded-0">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-sign-in-alt"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">300</span>
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Peoples Join Everyday</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row d-md-none">
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="card border-light p-4">
					<div class="card-body">
						<h2 class="display-2 mb-2">98%</h2>
						<span>Average satisfaction rating received in the past year</span>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="card border-light p-4">
					<div class="card-body">
						<h2 class="display-2 mb-2">24/7</h2>
						<span>Our support team is a quick chat or email away — 24
							hours a day</span>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="card border-light p-4">
					<div class="card-body">
						<h2 class="display-2 mb-2">220M</h2>
						<span>Data points on spaces and cities distilled down to
							find the perfect match.</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End of section -->
<section class="section section-lg pt-0">
	<div class="container">
		<div class="row justify-content-center mb-5 mb-lg-6">
			<div class="col-12 col-md-8 text-center">
				<h2>
					<span class="font-weight-bold"> Experts & Employees of
						&nbsp; SSGB</span>
				</h2>
				<p class="lead mt-4">Team of SSGB allows us to maintain
					operational efficiency and provide 24/7 customer service while
					working toward a shared goal.</p>
			</div>
		</div>
		<div class="row mb-5 mb-lg-4">
			<div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="card border-light">
					<img src="../resources/assets/img/group2_photo/kangyubin.jpg"
						class="card-img-top rounded-top" alt="강유빈" style="height: 462px;">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">강유빈</h3>
						<span class="card-subtitle text-gray font-weight-normal">Kang Yu-bin</span>
						<p class="card-text my-3">로그인, 회원가입, 회원정보, 채팅,<br> 차트, 회원 결제내역 및 환불,<br> 호스트 탈퇴, 임시 비밀번호</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="mailto:hwaseo0314@naver.com" target="_blank" aria-label="email link"
								class="icon icon-sm icon-emial mr-3"> <span
									class="far fa-paper-plane"></span>
							</a></li>
							<li><a href="https://github.com/mitzandbebe/sangsang/tree/kyb" target="_blank" aria-label="git branch link"
								class="icon icon-sm icon-branch mr-3"> <span
									class="fas fa-code-branch"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="card border-light">
					<img src="../resources/assets/img/group2_photo/ohjunghun.jpg"
						class="card-img-top rounded-top" alt="오정훈" style="height: 462px;">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">오정훈</h3>
						<span class="card-subtitle text-gray font-weight-normal">Oh Jung-hun</span>
						<p class="card-text my-3">호스트 정산목록<br>클래스 결제 관련파트<br>관리자/호스트 정산현황</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="mailto:wlddj22@gmail.com" target="_blank" aria-label="email link"
								class="icon icon-sm icon-emial mr-3"> <span
									class="far fa-paper-plane"></span>
							</a></li>
							<li><a href="https://github.com/JHoon1321/sangsang/tree/jhoon" target="_blank" aria-label="git branch link"
								class="icon icon-sm icon-branch mr-3"> <span
									class="fas fa-code-branch"></span>
							</a></li>

							<li><a href="https://www.instagram.com/wjdgns3226/" target="_blank"
								aria-label="instagram social link"
								class="icon icon-sm icon-instagram"> <span
									class="fab fa-instagram"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
				<div class="card border-light">
					<img src="../resources/assets/img/group2_photo/baejaeyoung.jpg"
						class="card-img-top rounded-top" alt="배재영">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">배재영</h3>
						<span class="card-subtitle text-gray font-weight-normal">Bae Jae-young</span>
						<p class="card-text my-3">Q&A<br>유형별 클래스 검색<br>컨텐츠 자료조사</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="mailto:blc2000y@gmail.com" target="_blank" aria-label="email link"
								class="icon icon-sm icon-emial mr-3"> <span
									class="far fa-paper-plane"></span>
							</a></li>
							<li><a href="https://github.com/mitzandbebe/sangsang/tree/bae-jae-young" target="_blank" aria-label="git branch link"
								class="icon icon-sm icon-branch mr-3"> <span
									class="fas fa-code-branch"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-5 mb-lg-7">
			<div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="card border-light">
					<img src="../resources/assets/img/group2_photo/choiwonjung.jpg"
						class="card-img-top rounded-top" alt="최원정">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">최원정</h3>
						<span class="card-subtitle text-gray font-weight-normal">Choi Won-jung</span>
						<p class="card-text my-3">메인이벤트, 클래스 관련 파트,<br>회원 관심클래스, 호스트 마이클래스,<br>클래스 목록 및 메뉴, 리뷰, 회원탈퇴 
</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">

							<li><a href="mailto:jung9201@gmail.com" target="_blank" aria-label="email link"
								class="icon icon-sm icon-emial mr-3"> <span
									class="far fa-paper-plane"></span>
							</a></li>
							<li><a href="https://github.com/uujploy/sangsang"
								target="_blank" aria-label="git branch link"
								class="icon icon-sm icon-branch mr-3"> <span
									class="fas fa-code-branch"></span>
							</a></li>
							<li><a href="https://www.instagram.com/uuj_ploy/"
								target="_blank" aria-label="instagram social link"
								class="icon icon-sm icon-instagram"> <span
									class="fab fa-instagram"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="card border-light">
					<img src="../resources/assets/img/group2_photo/choisubin.jpg"
						class="card-img-top rounded-top" alt="최수빈">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">최수빈</h3>
						<span class="card-subtitle text-gray font-weight-normal">Choi Su-bin</span>
						<p class="card-text my-3">탑/바텀(멤버, 호스트, 관리자),<br> CSS 총괄, UX/UI Design, 불편사항,<br> FAQ, 고객센터, 회사소개, 이용약관</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="mailto:csb9762@gmail.com" target="_blank" aria-label="email link"
								class="icon icon-sm icon-emial mr-3"> <span
									class="far fa-paper-plane"></span>
							</a></li>
							<li><a
								href="https://github.com/mitzandbebe/sangsang/tree/subin"
								target="_blank" aria-label="git branch link"
								class="icon icon-sm icon-branch mr-3"> <span
									class="fas fa-code-branch"></span>
							</a></li>
							<li><a href="https://www.instagram.com/csb9762/"
								target="_blank" aria-label="instagram social link"
								class="icon icon-sm icon-instagram"> <span
									class="fab fa-instagram"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="card border-light">
					<img src="../resources/assets/img/group2_photo/kimjunyoung.jpg"
						class="card-img-top rounded-top" alt="김준영">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">김준영</h3>
						<span class="card-subtitle text-gray font-weight-normal">Kim Jun-young</span>
						<p class="card-text my-3">공지사항, 블랙리스트 및 참여제한자 설정,<br>멤버/호스트/참여제한자 조회,<br>
						쪽지, 클래스 이용 회원 목록, 메일 보내기</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="mailto:qkqkdldy@naver.com" target="_blank" aria-label="email link"
								class="icon icon-sm icon-emial mr-3"> <span
									class="far fa-paper-plane"></span>
							</a></li>
							<li><a
								href="https://github.com/mitzandbebe/sangsang/tree/kimjun"
								target="_blank" aria-label="git branch link"
								class="icon icon-sm icon-branch mr-3"> <span
									class="fas fa-code-branch"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-5 mb-lg-6">
			<div class="col text-center">
				<h3 class="mb-5">You can find us here</h3>
				<div class="" id="map" style="width: 1110px; height: 400px;"></div>

			</div>
		</div>
		<br>
		<br>
		<br>
		<div class="row mb-5 mb-lg-2">
			<div class="col text-center">
				<h3 class="mb-5">About SSGB</h3>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-12 col-lg-8">
				<!--Accordion-->
				<div class="accordion" id="accordionExample1">
					<div class="card card-sm card-body border-light mb-0">
						<a href="#panel-1" data-target="#panel-1"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-1">
							<span class="h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">상상공방(SSGB)이란?</span></span> <span class="icon"><span
								class="fas fa-plus"></span></span>
						</a>
						<div class="collapse" id="panel-1">
							<div class="pt-3">
								<p class="mb-0">
									상상공방(SSGB)은 원데이 클래스를 모아놓은 플랫폼입니다. <br> 사람들을 모아 공예 DIY,
									베이킹, 쿠킹, 문화예술, 자기계발, 뷰티, 여행, 피트니스, 스포츠, 모임, 스토어, 온라인 등의<br>
									원데이 클래스를 함께 즐기고 소통하며 더 행복한 삶을 살 수 있게 도와주는 서비스 플랫폼입니다.<br>
									<br> 인터넷 홈페이지에서 이용 가능합니다.
								</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-light mb-0">
						<a href="#panel-2" data-target="#panel-2"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-1">
							<span class="h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">상상공방은 누가 진행하나요?</span></span> <span
							class="icon"><span class="fas fa-plus"></span></span>
						</a>
						<div class="collapse" id="panel-2">
							<div class="pt-3">
								<p class="mb-0">
									상상공방은 [늘솜]이 진행합니다.<br>
									<br> 상상공방의 [늘솜]은 상상공방을 통해 다양한 원데이 클래스를 진행하는 진행자입니다.<br>
									<br> 상상공방의 [늘솜]은 본인만이 가지고 있는 컨텐츠가 있나면 누구나 신청이 가능합니다.<br>
								</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-light">
						<a href="#panel-3" data-target="#panel-3"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-1">
							<span class="h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">늘솜과 늘찬은 무엇인가요?</span></span> <span
							class="icon"><span class="fas fa-plus"></span></span>
						</a>
						<div class="collapse" id="panel-3">
							<div class="pt-3">
								<p class="mb-0">
									저희 상상공방은 플랫폼에 올라와 있는 프로그램들을 [상상 클래스] 이라고 칭하고 있습니다.<br>
									<br> 상상공방을 진행하시는 분들을 [늘솜], 참여하시는 분을 [늘찬]이라고 칭하고 있습니다.<br>
									<br>
									<참고>
									<br>
									- '늘솜'은 순우리말로 '늘 솜씨가 좋은'이라는 뜻이예요.<br>
									- '늘차다'라는 말은 '능란하고 재빠르다'는 의미의 형용사로 능력이 있으며 옹골차다는 뜻이에요. 
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of Accordion-->
				<p class="text-center mb-4 mt-6">More things to ASK?</p>
				<p class="text-center">
					<a href="<c:url value='/bottomview/customerService'/>"
						class="btn btn-primary animate-up-2">Contact us.</a>
				</p>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0610dd037b7ecb430d9b2d53aa551531"></script>
<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.500180037784375, 127.0289849392321),
			level: 4
		};

		var map = new kakao.maps.Map(container, options);
		
		var markerPosition  = new kakao.maps.LatLng(37.500180037784375, 127.02898493923217); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/bottom_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/bottom.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/bottom_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/bottom.jsp"%>
	</c:otherwise>
</c:choose>
<!-- 바텀 완료 -->