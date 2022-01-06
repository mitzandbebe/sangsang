<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/top.jsp"  %>

<!-- 결제모듈 -->

	<c:forEach var="map" items="${classlist}">

		<!-- Hero -->
		<div
			class="section section-header section-image bg-primary overlay-primary  overflow-hidden pb-6" style="color:#46746e;" >
			<div class="container z-2" >
				<div class="row justify-content-center pt-3">
					<div class="col-12 text-center">
						<nav aria-label="breadcrumb">
							<ol
								class="breadcrumb breadcrumb-transparent justify-content-center mb-4">
								<li class="breadcrumb-item text-secondary"><a
									href="<c:url value='/index'/> " style="color:#46746e;">➯목록으로 돌아가기</a></li>
							</ol>
						</nav>
						<h1 class="mb-4">${map["C_NAME"] }</h1>
						<div class="d-block d-md-flex justify-content-center">
							<span class="h6 font-weight-light"><span
								class="fas fa-check-circle mr-1 pr-1"></span>
								${map["CATEGORY_NAME"] }
								</span> 
								<span class="lh-120 ml-md-4">
								<i class="fas fa-map-marker-alt mr-1 pr-1"></i>${ map['L_ADDRESS']}
								${ map['L_ADDRESS_DETAIL']}<a data-fancybox
								href="https://www.google.com/maps/place/New+York,+NY,+USA/@40.6971494,-74.2598683,10z/data=!3m1!4b1!4m5!3m4!1s0x89c24fa5d33f083b:0xc80b8f06e177fe62!8m2!3d40.7127753!4d-74.0059728"
								class="ml-md-3">See Location</a> </span>
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
												            <img class="d-block w-100" src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/>" alt="First slide">
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
														<fmt:formatDate value="${map['C_REGDATE'] }"  pattern="yyyy-MM-dd" />
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
														<div class="h5 mt-3 mb-0">${map["PPNUM"] } 명</div>
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
								<c:import url="/class/review"/>
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
							<div class="tab-pane fade" id="nav-location" role="tabpanel"
								aria-labelledby="nav-location-tab">
								<div class="row">
									<div class="col-12">
										<iframe class="map rounded" id="gmap_canvas"
											src="https://maps.google.com/maps?q=san%20francisco&t=&z=8&ie=UTF8&iwloc=&output=embed"></iframe>
									</div>
								</div>
							</div>

						</div>
						<!-- End of tab -->
					</div>
					<aside class="col-12 col-lg-4 mt-3 mt-lg-0">
						<div class="card border-light mt-4 p-3">
							<h5 class="font-weight-normal">Property Owner</h5>
							<div class="media d-flex align-items-center my-3">
								<a href="./profile.html" class="avatar-lg mr-2"
									data-toggle="tooltip" data-placement="top" title="More details">
									<img class="img-fluid rounded-circle"
									src="${pageContext.request.contextPath}/resources/assets/img/team/profile-picture-1.jpg"
									alt="avatar">
								</a>
								<div class="avatar-name">
									<a class="text-gray" href="./profile.html"
										data-toggle="tooltip" data-placement="top"
										title="More details">Jose Leos</a>
								</div>
							</div>
							<!-- Button Modal -->
							<button type="button" class="btn btn-block btn-secondary mb-3"
								data-toggle="modal" data-target="#modal-form">Contact
								Host</button>
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
						<div class="card border-light mt-4 p-3">
							<label for="exampleFormControlSelect1">클래스 신청일 선택</label>
							<div class="form-group">
								<div class="input-group input-group-border">
									<div class="input-group-prepend">
										<span class="input-group-text"><i
											class="far fa-calendar-alt"></i></span>
									</div>
									<input class="form-control datepicker"
										placeholder="Select date" type="text" value="06/20/2018">
								</div>
							</div>
							<br> <label for="exampleFormControlSelect2">인원수 선택</label>

							<div class="class-confirm03">
								<div class="c03-count">
									<a href="#" id="num-sub">-</a> <input type="text" id="quantity"
										value="1" class="only-number" /> <a href="#" id="num-add">+</a>
								</div>
							</div>
							<input type="hidden" id="classRealPrice" value='40000'>
							<!-- js에서 클래스정보 불러오고 id값으로 처리해야함. -->
							<div class="c03-charge" id="price">${map["C_PRICE"] }</div>
							<div class="text-center">
								<button type="submit" class="btn btn-block btn-primary mt-4"
									id="apibtn">결제하기</button>
							</div>
						</div>
					</aside>
				</div>
			</div>
		</div>
</c:forEach>
		<section class="section bg-soft">
       <c:forEach var="map" items="${catelist}">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h4 class="mb-5 font-weight-bold"><span>${map["CATEGORY_NAME"] }</span> 클래스 전체보기</h4>
						
					</div>
                    <div class="col-md-12">
                        <div class="basic-carousel owl-carousel owl-theme">
                            <!-- Item 1 -->
                            
                            <div class="item" >
                                <!-- Card -->
                                <div class="card border-light mb-4 animate-up-5" >
                                    <a href="<c:url value='/class/detail?cNo=${map["C_NO"]}&categoryName=${map["CATEGORY_NAME"] } '/>" class="position-relative">
                                    <c:choose >
                                    	<c:when test="${not empty map['THUMBNAIL']}">
                                        	<img src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/> " width="auto" height="200px" align="top" class="card-img-top p-2 rounded-xl" alt="썸네일">
                                    	</c:when>
                                    	<c:when test="${map['THUMBNAIL'] eq null}">
                                        	<img src="<c:url value='/resources/upload_images/basic.png'/> " width="auto" height="200px" align="top" class="card-img-top p-2 rounded-xl" alt="기본이미지">
                                    	</c:when>
                                    </c:choose>
                                    </a>
                                    <div class="card-body" style="width:300px; height:150px">
                                        <a href="<c:url value='/class/detail?cNo=${map["C_NO"]} '/>">
                                            <h4 class="h6" >${map["C_NAME"] }</h4>
                                        </a>
                                        <div class="d-flex my-4">
                                            <span class="star fas fa-star text-warning"></span> 
                                            <span class="star fas fa-star text-warning"></span> 
                                            <span class="star fas fa-star text-warning"></span> 
                                            <span class="star fas fa-star text-warning"></span> 
                                            <span class="star fas fa-star text-warning"></span>
                                            <span class="badge badge-pill badge-primary ml-2">5.0</span>
                                        </div> 
                                        
                                    </div>
                                    <div class="card-footer bg-soft border-top">
                                        <div class="d-flex justify-content-between">
                                            <div class="col pl-0">
                                                <span class="text-muted font-small d-block mb-2">가격</span>
                                                <span class="h5 text-dark font-weight-bold" style="font-size:1em">
                                                <fmt:formatNumber value="${map['C_PRICE'] }" pattern="#,###" />원
                                                </span>
                                            </div>
                                            <div class="col">
                                                <span class="text-muted font-small d-block mb-2">인원</span>
                                                <span class="h5 text-dark font-weight-bold">${map["PPNUM"] }명</span>
                                            </div>
                                            <div class="col pr-0">
                                                <span class="text-muted font-small d-block mb-2">지역</span>
                                                <span class="h5 text-dark font-weight-bold">
                                                	<c:set var="addr" value="${ map['L_ADDRESS']}"/>
                                                	${fn:substring(addr,0,2)}
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Card -->
                            </div>
                            
                    </div>
                </div>
            </div>
        </div>
                         </c:forEach>
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
	</main>


<script>
	$(document).ready(function() {
		var hash = location.hash.substring(1);
		$('.nav-tabs #' + hash).trigger('click');
	});
</script>

<%@ include file="../inc/bottom.jsp" %>