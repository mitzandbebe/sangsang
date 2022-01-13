<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>


<h2></h2>
<p style="font-size:13pt;font-weight:bold">
	클래스 신청과 결제가 정상적으로 완료되었습니다
</p>

<input type="hidden" value="${oVo.cNo}">
<input type="hidden" value="${oVo.mId}">
<input type="hidden" value="${oVo.price}">
<input type="hidden" value="${oVo.refund}">
<input type="hidden" value="${oVo.ea}">
<input type="hidden" value="${oVo.impUid}">
<input type="hidden" value="${oVo.merchantUid}">
<input type="hidden" value="${oVo.fTime}">

<section class="section bg-soft section-lg pt-5"
	style="margin-top: 150px">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-10">
				<div
					class="d-flex flex-column flex-lg-row align-items-center justify-content-between mb-4">
					<a href="<c:url value='/index'/> " class="mb-4 mb-lg-0"><span
						class="icon icon-xs"><span class="fas fa-chevron-left mr-2"></span></span>
						메인으로 돌아가기</a>
				</div>
				<div class="card border-light p-4 p-md-5 position-relative">
					<c:forEach var="map" items="${list}">
						<div
							class="d-flex justify-content-between pb-4 pb-md-5 mb-4 mb-md-5 border-bottom border-light">
							<c:choose>
								<c:when test="${not empty map['THUMBNAIL']}">
									<img
										src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/> "
										style="width: 45%;" alt="썸네일">
								</c:when>
								<c:when test="${map['THUMBNAIL'] eq null}">
									<h3>미리보기 이미지가 없습니다.</h3>
									<img src="<c:url value='/resources/upload_images/basic.png'/> "
										style="width: 45%;" alt="기본이미지">
								</c:when>
							</c:choose>
							<div style="width: 50%;">
								<h4>${map["C_NAME"] }</h4>
								<ul class="list-group simple-list">
									<li class="list-group-item font-weight-normal pl-0 py-1">${map['CATEGORY_NAME'] }</li>
									<li class="list-group-item font-weight-norma pl-0 py-1"><i
										class="fas fa-map-marker-alt mr-1 pr-1"></i>${ map['L_ADDRESS']}
										${ map['L_ADDRESS_DETAIL']}</li>
									<li class="list-group-item font-weight-normal pl-0 py-1">
										<i class="far fa-calendar-alt mr-1 pr-1"></i> <fmt:formatDate
											value="${map['C_START_TIME'] }" pattern="yyyy-MM-dd" />
									</li>
									<li class="list-group-item font-weight-normal pl-0 py-1">
										<i class="far fa-clock mr-1 pr-1"></i> ${map["C_TIME"] }:00
									</li>
								</ul>
							</div>
						</div>

						<div class="mb-6 d-flex align-items-center justify-content-center">
							<h2 class="h1 mb-0">클래스 신청 완료</h2>
							<span class="badge badge-xl badge-success ml-2"
								style="background-color: #9FB9AE;">Success</span>
						</div>
						<div class="row justify-content-between mb-4 mb-md-5">
							<div class="col-sm">
								<h5>결제정보:</h5>
								<div>
									<ul class="list-group simple-list">
										<li class="list-group-item font-weight-norma pl-0 py-1">${oVo.mId}</li>
										<li class="list-group-item font-weight-norma pl-0 py-1">${oVo.price}
											원</li>
										<li class="list-group-item font-weight-norma pl-0 py-1">${oVo.ea}
											개</li>
										<li class="list-group-item font-weight-norma pl-0 py-1">${oVo.refund}</li>
									</ul>
								</div>
							</div>
							<div class="col-sm col-lg-8">
								<dl class="row text-sm-right">
									<dt class="col-6">
										<strong>상점번호 :</strong>
									</dt>
									<dd class="col-6">${oVo.impUid}</dd>
									<dt class="col-6">
										<strong>영수증 번호 :</strong>
									</dt>
									<dd class="col-6">${oVo.merchantUid}</dd>
									<dt class="col-6">
										<strong>클래스 시간 :</strong>
									</dt>
									<dd class="col-6">
										<fmt:formatDate value="${map['C_START_TIME'] }"
											pattern="yyyy-MM-dd" />
										&nbsp;${oVo.fTime}:00
									</dd>
								</dl>
							</div>
						</div>
					<h4>Payments to:</h4>
					<span>상상공방 | 常想工房 | One Day Class Matching Site</span>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>


<%@ include file="../inc/bottom.jsp"%>     
