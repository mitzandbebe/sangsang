<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
									class="far fa-address-card mr-2"></span>클래스 미리보기</a> <a
									class="nav-item nav-link" id="nav-video-tab" data-toggle="tab"
									href="#nav-video" role="tab" aria-controls="nav-video"
									aria-selected="false"><span class="far fa-play-circle mr-2"></span>클래스 설명</a>
								<a class="nav-item nav-link" id="nav-reviews-tab"
									data-toggle="tab" href="#nav-reviews" role="tab"
									aria-controls="nav-reviews" aria-selected="false"><span
									class="far fa-star mr-2"></span>리뷰</a> <a
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
															<span class="fas fa-ruler-combined"></span>
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
															<span class="fas fa-couch"></span>
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
							<!-- Video Tab -->
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
							<!-- End of Video Tab -->
							<!-- Reviews Tab -->
							<div class="tab-pane fade" id="nav-reviews" role="tabpanel"
								aria-labelledby="nav-reviews-tab">
								<div class="card bg-white border border-light p-4 mb-4">
									<div
										class="d-flex justify-content-between align-items-center mb-3">
										<div>
											<a href="./profile.html" class="h5">Awesome place</a>
											<ul class="list-unstyled d-flex mt-1 mb-0">
												<li class="list-item small mr-3">by Margaret Mead</li>
												<li class="list-item small">2 weeks ago</li>
											</ul>
										</div>
										<div class="d-flex justify-content-end">
											<span class="d-flex justify-content-center"> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star  fas text-warning  mr-2"></i> <i
												class="star far fa-star text-gray"></i>
											</span>
										</div>
									</div>
									<p class="m-0">Always remember that you are absolutely
										unique. Just like everyone else.</p>
								</div>
								<div class="card bg-white border border-light p-4 mb-4">
									<div
										class="d-flex justify-content-between align-items-center mb-3">
										<div>
											<a href="./profile.html" class="h5">Great working
												environment</a>
											<ul class="list-unstyled d-flex mt-1 mb-0">
												<li class="list-item small mr-3">by Neil Sims</li>
												<li class="list-item small">2 weeks ago</li>
											</ul>
										</div>
										<div class="d-flex justify-content-end">
											<span class="d-flex justify-content-center"> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star  fas text-warning  mr-2"></i> <i
												class="star far fa-star text-gray"></i>
											</span>
										</div>
									</div>
									<p class="m-0">Your time is limited, so don't waste it
										living someone else's life. Don't be trapped by dogma -- which
										is living with the results of other people's thinking.</p>
								</div>
								<div class="card bg-white border border-light p-4 mb-4">
									<div
										class="d-flex justify-content-between align-items-center mb-3">
										<div>
											<a href="./profile.html" class="h5">Not only a place to
												work, but also to connect!</a>
											<ul class="list-unstyled d-flex mt-1 mb-0">
												<li class="list-item small mr-3">by Jose Leos</li>
												<li class="list-item small">2 weeks ago</li>
											</ul>
										</div>
										<div class="d-flex justify-content-end">
											<span class="d-flex justify-content-center"> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star fas text-warning mr-2"></i> <i
												class="star fa-star  fas text-warning  mr-2"></i> <i
												class="star far fa-star text-gray"></i>
											</span>
										</div>
									</div>
									<p class="m-0">The future belongs to those who believe in
										the beauty of their dreams.</p>
								</div>
								<form method="post">
									<div
										class="d-flex justify-content-between align-items-center mb-3 mt-5">
										<h2 class="h5 m-0">Add a review</h2>
										<span class="d-flex justify-content-center stars-rating">
											<i class="star far fa-star text-gray mr-2"
											data-rating-value="1"></i> <i
											class="star far fa-star text-gray mr-2" data-rating-value="2"></i>
											<i class="star far fa-star text-gray mr-2"
											data-rating-value="3"></i> <i
											class="star far fa-star text-gray mr-2" data-rating-value="4"></i>
											<i class="star far fa-star text-gray" data-rating-value="5"></i>
										</span>
									</div>
									<textarea name="description" class="form-control border"
										placeholder="Add a review" rows="6"
										data-bind-characters-target="#charactersRemaining"
										maxlength="1000" required></textarea>
									<div class="d-flex justify-content-between mt-3">
										<small class="font-weight-light"> <span
											id="charactersRemaining">1000</span> characters remaining
										</small>
										<button type="submit" class="btn btn-primary animate-up-2">Add
											review</button>
									</div>
								</form>
							</div>
							<!-- End of Reviews Tab -->
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
	</c:forEach>
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
							<div class="c03-charge" id="price">40000</div>
							<div class="text-center">
								<button type="submit" class="btn btn-block btn-primary mt-4"
									id="apibtn">결제하기</button>
							</div>
						</div>
					</aside>
				</div>
			</div>
		</div>

		<section class="section bg-soft">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h4 class="mb-5 font-weight-bold">Similar spaces you might
							like</h4>
					</div>
					<c:if test="">
					<c:import url="/class/classlist"></c:import>
					</c:if>
				</div>
			</div>
		</section>
		<!-- End of section -->
	</main>
<%@ include file="../inc/bottom.jsp" %>