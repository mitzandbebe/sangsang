<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="inc/new_top_user.jsp"%>
<!-- Hero -->

<section class="section-header">
	<div class="container">
		<div class="row justify-content-center mb-4 mb-xl-5">
			<div class="col-12 col-xl-10 text-center">
				<!-- 글씨 넣을 수 이뜸 -->
				<h1 class="display-2">Find Your Class.</h1>
				항상 생각해온 나만의 클래스
				<p class="lead text-muted mt-4 px-md-6">
					<!-- 글씨 시작~.~ -->
					<span class="font-weight-bold">12,000+</span> coworking spaces with
					desks, offices & meeting rooms in <span class="font-weight-bold">165+</span>
					countries. Discover and reserve space today.
					<!-- 글씨 끝~.~ -->
				</p>
			</div>
		</div>
		<div class="col-12">
			<div class="card p-md-2">
				<div class="card-body p-2 p-md-0">
					<form autocomplete="off" class="row" method="get"
						action="./all-spaces.html">
						<div class="col-12 col-lg-10">
							<div class="form-group form-group-lg mb-lg-0">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fas fa-search"></i></span>
									</div>
									<input id="search-ssgb" type="text"
										class="form-control autocomplete"
										placeholder="Search Your Class" required>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-2" style="align: right;">
							<button class="btn btn-lg btn-primary btn-block animate-up-2"
								type="submit">상상 시작</button>
						</div>
					</form>
				</div>
			</div>
			<br>
			<br>
			<c:import url="/mainevent/eventmain"></c:import>

			<!-- 여기가 거기다 이말이야 그 카테고리별 검색 ㅋㅋ -->
			<div class="row mt-6">
				<div class="col-12">
					<h3 class="h4 mb-5"><i class="fas fa-angle-double-right"></i>클래스 카테고리</h3>
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=공예DIY"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/knitting4.jpg'/> "> <!-- 이미지 못넣겠어ㅠㅠ -->
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">공예 DIY</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=베이킹"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/bake.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">베이킹</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=쿠킹"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/cook.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">쿠킹</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0"
					style="margin-bottom: 25px;">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=문화예술"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/mon.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">문화예술</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
					<!-- 끊는 부분 -->
					<br>
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=자기계발"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/s5.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">자기계발</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=뷰티"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/c2.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">뷰티</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=여행"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/travle.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">여행</h5>
							</div>
						</div>
					</a>   
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=피트니스"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/yoga.PNG'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">피트니스</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				<!-- 끊는 부분 -->
				<br>
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=스포츠"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/sports.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">스포츠</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=모임"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/upload_images/do1_20220110152224023.jpg'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">모임</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=스토어"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/store.PNG'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="text-uppercase text-center">스토어</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
				<div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
					<!-- Card -->
					<a href="${pageContext.request.contextPath }/class/menuCategory?categoryName=온라인"
						class="card img-card fh-400 border-0 outer-bg"
						data-background-inner="<c:url value='/resources/category/online.PNG'/>">
						<div class="inner-bg overlay-dark"></div>
						<div class="card-img-overlay d-flex align-items-center">
							<div class="card-body text-white p-3">
								<h5 class="font-weight-normal text-uppercase text-center">온라인</h5>
							</div>
						</div>
					</a>
					<!-- End of Card -->
				</div>
			</div>
			<c:import url="/class/classlist"></c:import>
		</div>
</section>

<%@ include file="inc/bottom.jsp"%>
