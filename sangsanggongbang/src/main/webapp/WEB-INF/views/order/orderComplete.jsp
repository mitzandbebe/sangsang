<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/new_top_user.jsp"%>

<input type="hidden" value="${oVo.cNo}">
<input type="hidden" value="${oVo.mId}">
<input type="hidden" value="${oVo.price}">
<input type="hidden" value="${oVo.refund}">
<input type="hidden" value="${oVo.ea}">
<input type="hidden" value="${oVo.impUid}">
<input type="hidden" value="${oVo.merchantUid}">
<input type="hidden" value="${oVo.fTime}">

<section class="section bg-soft section-lg pt-5"
	style="margin-top: 80px">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-10">
				<div
					class="d-flex flex-column flex-lg-row align-items-center justify-content-between mb-4">
					<a href="<c:url value='/index'/>" class="mb-4 mb-lg-0"><span
						class="icon icon-xs"><span class="fas fa-chevron-left mr-2"></span></span>
						메인으로 돌아가기</a>
				</div>

				<div class="card border-light p-4 p-md-5 position-relative">
					<div class="mb-4 d-flex align-items-center justify-content-center">
						<a class="navbar-brand @@logo_classes"> <img
							class="navbar-brand-light common"
							src="/sangsanggongbang/resources/assets/img/brand/1230_top_light.png"
							height="35" alt="Logo dark">
						</a>
						<h2 class="h2 mb-0">클래스 신청 완료</h2>
						<span class="badge badge-xl badge-success ml-2"
							style="background-color: #9FB9AE;">Success</span>
					</div>
					<c:forEach var="map" items="${list}">
						<div class="row">
							<div class="col-12 col-lg-14">
								<div class="row no-gutters align-items-center">
									<div class="col-12 col-lg-4 col-xl-6">
										<c:choose>
											<c:when test="${not empty map['THUMBNAIL']}">
												<img
													src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/> "
													alt="썸네일">
											</c:when>
											<c:when test="${map['THUMBNAIL'] eq null}">
												<img
													src="<c:url value='/resources/upload_images/basic.png'/> "
													height="400px" width="700px" alt="기본이미지">
											</c:when>
										</c:choose>
									</div>
									<div class="col-12 col-lg-7 col-xl-6">
										<div class="card-body text-dark">
											<h4 class="h4" id="cname">${map["C_NAME"] }</h4>
											<ul class="list-group mb-3">
												<li class="list-group-item font-weight-normal pl-0 py-1">
													<i class="fas fa-award mr-2"></i> ${map['CATEGORY_NAME'] }
												</li>
												<li class="list-group-item font-weight-normal pl-0 py-1">
													<i class="fas fa-map-marker-alt mr-2"></i> ${ map['L_ADDRESS']}
													${ map['L_ADDRESS_DETAIL']}
												</li>
												<li class="list-group-item font-weight-normal pl-0 py-1">
													<i class="fas fa-users"></i> 모집인원 ${map["FPNUM"] } /
													${map["PPNUM"] }명
												</li>
												<li class="list-group-item font-weight-normal pl-0 py-1">
													<i class="far fa-clock mr-1 pr-1"></i> 수강료 <fmt:formatNumber
														value="${map['C_PRICE'] }" pattern="#,###" />원 (인당)
												</li>
												<li class="list-group-item font-weight-normal pl-0 py-1">
													<i class="far fa-calendar-alt mr-1 pr-1"></i> 수강일자 : <fmt:formatDate
														value="${map['C_START_TIME'] }" pattern="yyyy-MM-dd" />
												</li>
												<li class="list-group-item font-weight-normal pl-0 py-1">
													<i class="far fa-clock mr-1 pr-1"></i>시작시간 :
													${map["C_TIME"] }:00시
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>

						<div class="row justify-content-between mb-4 mb-md-3">
							<div class="col-sm col-lg-15">
								<div
									class="mb-3 d-flex align-items-center justify-content-center">
									<h2 class="h2 mb-0">결제 상세</h2>
								</div>
								<br>
								<dl class="row text-sm-left">
									<dt class="col-3 text-sm-center">
										<strong>영수증 번호 :</strong>
									</dt>
									<dd class="col-9">${oVo.merchantUid}</dd>
									<dt class="col-3 text-sm-center">
										<strong>클래스 수강날짜 :</strong>
									</dt>
									<dd class="col-9">
										<fmt:formatDate value="${map['C_START_TIME'] }"
											pattern="yyyy-MM-dd" />
									</dd>
									<dt class="col-3 text-sm-center">
										<strong>클래스 시작시간 :</strong>
									</dt>
									<dd class="col-9">${oVo.fTime}:00 시</dd>
									<dt class="col-3 text-sm-center">
										<strong>아이디 :</strong>
									</dt>
									<dd class="col-9">${oVo.mId}</dd>
									<dt class="col-3 text-sm-center">
										<strong>신청인원 :</strong>
									</dt>
									<dd class="col-9">${oVo.ea} 명</dd>
									<dt class="col-3 text-sm-center">
										<strong>총 결제금액 :</strong>
									</dt>
									<dd class="col-9">
									<fmt:formatNumber value="${oVo.ea*map['C_PRICE']}" pattern="#,###" />
									원
									</dd>
									<dt class="col-12 text-md-center">
									<hr><br>
									<span>클래스 시작 1주일 전까지 취소가 가능하며, 이후 클래스 참여유무와
									관계없이 취소는 불가합니다.</span>
									</dt>
								</dl>
							</div>
						</div>
						<hr>
						<div class="container text-sm-right">
							<span>상상공방 | 常想工房 | One Day Class Matching Site</span> <a
								class="navbar-brand @@logo_classes"> <img
								class="navbar-brand-light common"
								src="/sangsanggongbang/resources/assets/img/brand/1230_top_light.png"
								height="35" alt="Logo dark">
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>


<%@ include file="../inc/bottom.jsp"%>
