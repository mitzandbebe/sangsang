<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.fa-heart:hover {
    cursor: pointer;
}

.fas.fa-heart {
    color:red;
}
</style>
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

<!-- 결제모듈 -->

	<c:forEach var="map" items="${classlist}">

		<!-- Hero -->
		<div
			class="section section-header section-image bg-primary overlay-primary  overflow-hidden pb-6" style="color:#49746E;" >
			<div class="container z-2" >
			<div class="row justify-content-center pt-3">
				<div class="col-12 text-center">
					<nav aria-label="breadcrumb">
						<ol
							class="breadcrumb breadcrumb-transparent justify-content-center mb-4">
							<li class="breadcrumb-item text-secondary"><a
								href="<c:url value='/index'/> " style="color: #46746e;">➯목록으로
									돌아가기</a></li>
						</ol>
					</nav>
					<h1 class="mb-4">${map["C_NAME"] }</h1>
					<div class="d-block d-md-flex justify-content-center">
						<span class="h6 font-weight-light"><span
							class="fas fa-check-circle mr-1 pr-1"></span>
							${map["CATEGORY_NAME"] } </span>
							<input type="hidden" value="${map['CATEGORY_NAME'] }" id="category">
							 <span class="lh-120 ml-md-4"> <i
							class="fas fa-map-marker-alt mr-1 pr-1"></i>${ map['L_ADDRESS']}
							${ map['L_ADDRESS_DETAIL']}
						</span>
					</div>
					<div class="d-block d-md-flex justify-content-center">
						<span class="d-flex justify-content-center"><c:if
								test="${avgRate eq 5}">
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
							</c:if> <c:if test="${avgRate eq 4}">
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star far text-gray mr-2"></i>
							</c:if> <c:if test="${avgRate eq 3}">
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star far text-gray mr-2 "></i>
								<i class="star fa-star far text-gray mr-2"></i>
							</c:if> <c:if test="${avgRate eq 2}">
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star far text-gray mr-2 "></i>
								<i class="star fa-star far text-gray mr-2"></i>
								<i class="star fa-star far text-gray mr-2"></i>
							</c:if> <c:if test="${avgRate eq 1}">
								<i class="star fa-star fas text-warning mr-2"></i>
								<i class="star fa-star far text-gray mr-2 "></i>
								<i class="star fa-star far text-gray mr-2 "></i>
								<i class="star fa-star far text-gray mr-2 "></i>
								<i class="star fa-star far text-gray mr-2"></i>
							</c:if> <c:if test="${avgRate eq null}">
								아직 리뷰가 없습니다.
							</c:if>
						</span>
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
									class="far fa-handshake mr-2"></span>클래스 미리보기</a> <a
									class="nav-item nav-link" id="nav-video-tab" data-toggle="tab"
									href="#nav-video" role="tab" aria-controls="nav-video"
									aria-selected="false"><span class="fas fa-pen mr-2"></span>클래스 설명</a>
								<a class="nav-item nav-link" id="nav-reviews-tab"
									data-toggle="tab" href="#nav-reviews" role="tab"
									aria-controls="nav-reviews" aria-selected="false"><span
									class="far fa-star mr-2"></span>리뷰</a> 
								<a class="nav-item nav-link" id="nav-qna-tab"
									data-toggle="tab" href="#nav-qna" role="tab"
									aria-controls="nav-qna" aria-selected="false"><span
									class="far fa-question-circle mr-2"></span>Q&A</a> 
									<a
									class="nav-item nav-link" id="nav-location-tab"
									data-toggle="tab" href="#nav-location" role="tab"
									aria-controls="nav-location" aria-selected="false"><span
									class="fas fa-map-marker-alt mr-2"></span>위치</a>
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
												<div id="Carousel2" class="carousel slide" data-ride="carousel">
												    <div class="carousel-inner">
												        <div class="carousel-item active">
												        <c:choose >
					                                    	<c:when test="${not empty map['THUMBNAIL']}">
					                                        	<img src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/> " alt="썸네일">
					                                    	</c:when>
					                                    	<c:when test="${map['THUMBNAIL'] eq null}">
					                                    		<h3>미리보기 이미지가 없습니다.</h3>
					                                        	<img src="<c:url value='/resources/upload_images/basic.png'/> " height="400px" width="700px"  alt="기본이미지">
					                                    	</c:when>
					                                    </c:choose>
												        </div>
												        <c:choose >
												        <c:when test="${not empty map['CONTENTS_FILENAME1']}">
												        <div class="carousel-item">
												            <img class="d-block w-100" src="<c:url value='/resources/upload_images/${map["CONTENTS_FILENAME1"] }'/> " alt="Second slide">
												        </div>
												        </c:when>
												        </c:choose>
												        <c:choose >
												        <c:when test="${not empty map['CONTENTS_FILENAME2']}">
												        <div class="carousel-item">
												            <img class="d-block w-100" src="<c:url value='/resources/upload_images/${map["CONTENTS_FILENAME2"] }'/> " alt="Third slide">
												        </div>
												        </c:when>
												        </c:choose>
												        <c:choose >
												        <c:when test="${not empty map['CONTENTS_FILENAME3']}">
												        <div class="carousel-item">
												            <img class="d-block w-100" src="<c:url value='/resources/upload_images/${map["CONTENTS_FILENAME3"] }'/> " alt="Third slide">
												        </div>
												        </c:when>
												        </c:choose>
												        <c:choose >
												        <c:when test="${not empty map['CONTENTS_FILENAME4']}">
												        <div class="carousel-item">
												            <img class="d-block w-100" src="<c:url value='/resources/upload_images/${map["CONTENTS_FILENAME4"] }'/> " alt="Third slide">
												        </div>
												        </c:when>
												        </c:choose>
												        <c:choose >
												        <c:when test="${not empty map['CONTENTS_FILENAME5']}">
												        <div class="carousel-item">
												            <img class="d-block w-100" src="<c:url value='/resources/upload_images/${map["CONTENTS_FILENAME5"] }'/> " alt="Third slide">
												        </div>
												        </c:when>
												        </c:choose>
												    </div>
												    <a class="carousel-control-prev" href="#Carousel2" role="button" data-slide="prev">
												        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
												        <span class="sr-only">Previous</span>
												    </a>
												    <a class="carousel-control-next" href="#Carousel2" role="button" data-slide="next">
												        <span class="carousel-control-next-icon" aria-hidden="true"></span>
												        <span class="sr-only">Next</span>
												    </a>
												</div>
											</div>
										</div>
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
														<div class="h5 mt-3 mb-0">
														<fmt:formatDate value="${map['C_START_TIME'] }"  pattern="yyyy-MM-dd" />
														</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Date </span>
													</div>
												</div>
												<div class="card mb-0 border-left">
													<div class="card-body text-center px-0 px-md-3">
														<div class="icon icon-secondary">
															<span class="far fa-clock"></span>
														</div>
														<!-- Heading -->
														<div class="h5 mt-3 mb-0">${map["C_TIME"] } 시</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Start time </span>
													</div>
												</div>
												<div class="card mb-0 border-left">
													<div class="card-body text-center px-0 px-md-3">
														<div class="icon icon-secondary">
															<span class="fas fa-users"></span>
														</div>
														<!-- Heading -->
														<div class="h5 mt-3 mb-0">${map["FPNUM"] }/${map["PPNUM"] } 명</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Person </span>
													</div>
												</div>
												<div class="card mb-0 border-left">
													<div class="card-body text-center px-0 px-md-3">
														<div class="icon icon-secondary">
															<span class="fas fa-won-sign"></span>
														</div>
														<!-- Heading -->
														<div class="h5 mt-3 mb-0">
															<fmt:formatNumber value="${map['C_PRICE'] }" pattern="#,###" />원
														</div>
														<!-- Text -->
														<span class="text-muted h6 font-weight-normal mb-0">
															Price </span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- End of About Tab -->
							<!-- content Tab -->
							<div class="tab-pane fade" id="nav-video" role="tabpanel"
								aria-labelledby="nav-video-tab">
								<div class=" position-relative rounded">
											<div class="row mb-5">
									<div class="col-12">
										<div class="fancy-gallery mb-5">
											<div class="row">
											</div>
										</div>
										<textarea class="form-control"id="exampleFormControlTextarea2" rows="20">
											${map["CONTENTS_CONTENT"] }
										</textarea>
									</div>
								</div>
								</div>
							</div>
							<!-- End of content Tab -->
							<!-- Reviews Tab -->
							<div class="tab-pane fade" id="nav-reviews" role="tabpanel"
								aria-labelledby="nav-reviews-tab">
							<div id="reviewlist"></div>
								<%-- <c:import url="/class/review?cNo=${map['C_NO'] }"/> --%>
								<c:import url="/class/addreview?cNo=${map['C_NO'] }"/>
								
							</div>
							<!-- End of Reviews Tab -->
							<!-- Q&A Tab -->

							<div class="tab-pane fade" id="nav-qna" role="tabpanel" aria-labelledby="nav-qna-tab">
								<div class="row">
									<div class="col-12">
										<c:import url="/qa/list?cNo=${map['C_NO']}"/>
									</div>
								</div>
							</div>

							<!-- End of Q&A Tab -->
							
							<!-- 지도 -->
							<div class="tab-pane fade" id="nav-location" role="tabpanel"
								aria-labelledby="nav-location-tab">
								<div class="row">
									<div class="col-12">
										<iframe id="map" style="width:700px;height:400px;" src="<c:url value='/class/classMap?cNo=${map["C_NO"]}'/>"></iframe>
									</div>
								</div>
							</div>

						</div>
						<!-- End of tab -->
					</div>
					<aside class="col-12 col-lg-4 mt-3 mt-lg-0">
						<div class="card border-light mt-4 p-3">
							<h5 class="font-weight-normal">늘솜 정보</h5>
							<div class="media d-flex align-items-center my-3">
								<!-- <a href="./profile.html" class="avatar-lg mr-2"
									data-toggle="tooltip" data-placement="top" title="More details"> -->
									<img class="img-fluid rounded-circle avatar-lg mr-4"
									<c:if test="${empty hostVo.hFilename}">
									src="${pageContext.request.contextPath}/resources/assets/img/default.png"
									</c:if>
									<c:if test="${!empty hostVo.hFilename}">
									src="${pageContext.request.contextPath}/resources/file_upload/${hostVo.hFilename}"
									</c:if>
									alt="프로필사진">
								<!-- </a> -->
								<div class="avatar-name">
									<span style="color:#82AFC5">${hostVo.hNickname}</span><br>
									
								</div>
							</div>
							<div class="mb-3">
								개설한 클래스 | ${classCnt}개&nbsp;&nbsp; 리뷰 | ${reviewCnt}개
							</div>
							<!-- Button Modal -->
							<a href="#" onClick="openChat();">
							<button type="button" class="btn btn-block btn-secondary mb-3">늘솜에게 실시간 문의하기</button></a>
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
						<form action="order" method="post" class="card border-light p-3 mb-4">
						<input type="hidden" id="cNo" name="cNo" value="${map['C_NO'] }">
						<c:if test="${!empty mId }">
						<div class="card border-light mt-4 p-3">
						<input type="hidden" id="con" value="${con }">
						<c:if test="${con == 0 }">
						 <i class="far fa-heart" id="heart">&nbsp;
						 </c:if>
						<c:if test="${con > 0}">
						 <i class="fas fa-heart" id="heart">&nbsp;
						 </c:if>
						 <label for="exampleFormControlSelect2">관심클래스로 등록하기 </label></i>
						 
						 </div>
						 </c:if>
						<div class="card border-light mt-4 p-3">
							<label for="exampleFormControlSelect1">클래스 신청일 </label>
							<div class="form-group">
								<div class="input-group input-group-border">
										<span class="input-group-text">
											<i class="far fa-calendar-alt"></i>
										</span>
									<div class="text-center"><label for="exampleFormControlSelect1">&nbsp;
									<fmt:formatDate value="${map['C_START_TIME'] }"  pattern="yyyy-MM-dd" /></label>
									</div>
								</div>
								<div class="input-group input-group-border">
										<span class="input-group-text">
											<i class="far fa-clock"></i>
										</span>
									<div class="text-center"><label for="exampleFormControlSelect1">&nbsp;
									${map["C_TIME"] } 시</label></div>
								</div> 
							<div class="input-group input-group-border" id="price">
										<span class="input-group-text">
											<i class="fas fa-coins"></i>
										</span>
										<label for="exampleFormControlSelect2">&nbsp;${map["C_PRICE"] }</label></div>
							</div>
							<div class="text-center">
								
								<button type="submit" class="btn btn-block btn-primary mt-4">
								결제하기</a></button>
								
							</div>
						</div>
						</form>
					</aside>
				</div>
			</div>
		</div>
</c:forEach>
		<section class="section bg-soft">
			<div class="container" >
				<div class="row" id="categoryName">
					<c:import url="/class/listbyCategory" />
	            </div>
	        </div>
   <!-- Core -->
   
<script src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/> "></script>

<!-- NoUISlider -->
<script src="<c:url value='/resources/vendor/nouislider/distribute/nouislider.min.js'/> "></script>

<!-- Bootstrap Datepicker -->
<script src="<c:url value='/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js'/> "></script>

<!-- jQuery Waypoints -->
<script src="<c:url value='/resources/vendor/waypoints/lib/jquery.waypoints.min.js'/> "></script>

<!-- Owl acrousel -->
<script src="<c:url value='/resources/vendor/owl.carousel/dist/owl.carousel.min.js'/> "></script>

<!-- Smooth scroll -->
<script src="<c:url value='/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js'/> "></script>

<!-- Fancybox -->
<script src="<c:url value='/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js'/> "></script>

<!-- Sticky sidebar -->
<script src="<c:url value='/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js'/> "></script>

<!-- Mapbox & Leaflet.js -->
<script src="<c:url value='/resources/vendor/leaflet/dist/leaflet.js'/> "></script>

<!-- Chartist -->
<script src="<c:url value='/resources/vendor/chartist/dist/chartist.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js'/> "></script>

<!-- Sliderform -->
<script src="<c:url value='/resources/assets/js/jquery.slideform.js'/> "></script>

<!-- Spaces custom Javascript -->
<script src="<c:url value='/resources/assets/js/spaces.js'/> "></script>
		</section>
		<!-- End of section -->

<!-- 카카오 맵 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0610dd037b7ecb430d9b2d53aa551531&libraries=services"></script>
<script>

//하트 클릭시빨강, 비동기방식으로 저장/삭제

	$(function() {
		const heart = document.querySelector('.fa-heart');

		let cNo = ${param.cNo};
		
		let num = 0;
		

	heart.addEventListener('click', function() {
			if ($('#heart').hasClass('far')) {
				heart.classList.remove('far');
				heart.classList.add('fas');

				$.ajax({
					type : "POST",
					url : '<c:url value="/member/interest"/>',
					data : "cNo=" + cNo,
					success : function(res) {
						alert("관심클래스로 등록하였습니다.");
					},
					error : function() {
						alert("관심클래스로 등록할 수 없습니다.");
						heart.classList.remove('fas');
						heart.classList.add('far');
					}

				}); //ajax 

				num++;
			} else if ($('#heart').hasClass('fas')) { //num==1
				heart.classList.remove('fas');
				heart.classList.add('far');

				$.ajax({
					type : "POST",
					url : '<c:url value="/member/interestdelete"/>',
					data : "cNo=" + cNo,
					success : function(res) {
						alert("관심클래스를 삭제하였습니다.");
					},
					error : function() {
						alert("관심클래스 삭제를할 수 없습니다.");
						heart.classList.remove('far');
						heart.classList.add('fas');
					}

				}); //ajax 

				num--;

			}
		}); //하트클릭

	$('#nav-reviews').ready(function(){
		$('#reviewlist').load("<c:url value='/class/review?cNo="+cNo+"'/>");
		});
		
		
		
	});

	function relayout() {

		// 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
		// 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
		// window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
		map.relayout();
	}
	$(document).ready(function() {
		let hash = location.hash.substring(1);
		$('.nav-tabs #' + hash).trigger('click');
	});
	function openChat() {
		var contextPath = "/sangsanggongbang";
		var roomId = "${hostVo.hNickname}";
		open(contextPath + '/chat/room?roomId=' + roomId, 'chat',
				'width=1000,height=840,left=0,top=0,location=yes,resizable=no');
	}
	
	
	
	
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