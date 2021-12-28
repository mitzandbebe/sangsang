<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/top.jsp"%>
<br>
<br>
<br>
<h3>회원 아이디 클릭시 회원 마이페이지로 이동</h3>
<div class="row">
	<div class="col-12">
		<!-- Tab Nav -->
		<div class="nav-wrapper position-relative mb-2">
			<ul class="nav nav-pills nav-fill flex-column flex-md-row"
				id="tabs-icons-text" role="tablist">
				<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0 active"
					id="tabs-icons-text-1-tab" data-toggle="tab"
					href="#tabs-icons-text-1" role="tab"
					aria-controls="tabs-icons-text-1" aria-selected="true"><i
						class="fas fa-palette mr-2"></i>Visual Design</a></li>
				<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
					id="tabs-icons-text-2-tab" data-toggle="tab"
					href="#tabs-icons-text-2" role="tab"
					aria-controls="tabs-icons-text-2" aria-selected="false"><i
						class="fas fa-laptop-code mr-2"></i>Code Friendly</a></li>
			</ul>
		</div>
		<!-- End of Tab Nav -->
		<!-- Tab Content -->
		<div class="card">
			<div class="card-body p-0">
				<div class="tab-content" id="tabcontent2">
					<div class="tab-pane fade show active" id="tabs-icons-text-1"
						role="tabpanel" aria-labelledby="tabs-icons-text-1-tab">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">회원번호</th>
									<th scope="col">회원 아이디</th>
									<th scope="col">가입일</th>
									<th scope="col">수정 & 참여제한하기</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="vo" items="${mList }">
									<tr>
										<th scope="row">${vo.mNo }</th>
										<td>
											<div class="d-flex align-items-center">
												${vo.mId } <span class="badge badge-primary ml-2">${vo.mGrade }</span>
											</div>
										</td>
										<td><fmt:formatDate value="${vo.regdate}"
												pattern="yyyy-MM-dd" /></td>
										<td>
											<div class="d-flex">
												<i class="fas fa-edit mr-3" data-toggle="tooltip"
													data-placement="top" title="Edit item"></i> <i
													class="fas fa-trash text-danger mr-2" data-toggle="tooltip"
													data-placement="top" title="Delete item"></i>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="tab-pane fade" id="tabs-icons-text-2" role="tabpanel"
						aria-labelledby="tabs-icons-text-2-tab">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">호스트 번호</th>
									<th scope="col">호스트 아이디</th>
									<th scope="col">가입일</th>
									<th scope="col">수정하기</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="vo" items="${hList }">
									<tr>
										<th scope="row">${vo.hNo }</th>
										<td>
											<div class="d-flex align-items-center">
												${vo.hId } <span class="badge badge-primary ml-2">${vo.hGrade }</span>
											</div>
										</td>
										<td><fmt:formatDate value="${vo.regdate}"
												pattern="yyyy-MM-dd" /></td>
										<td>
											<div class="d-flex">
												<i class="fas fa-edit mr-3" data-toggle="tooltip"
													data-placement="top" title="Edit item"></i> 
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- End of Tab Content -->
	</div>
</div>
<%-- <table class="table table-hover">
	<thead>
		<tr>
			<th scope="col">회원번호</th>
			<th scope="col">회원 아이디</th>
			<th scope="col">가입일</th>
			<th scope="col">수정 & 참여제한하기</th>
		</tr>
	</thead>
	<tbody>
	<h3>회원 아이디 클릭시 회원 마이페이지로 이동 & 버튼 클릭으로 멤버, 호스트 정보 조회</h3>
		<c:forEach var="vo" items="${list }">
			<tr>
				<th scope="row">${vo.mNo }</th>
				<td>
					<div class="d-flex align-items-center">
						${vo.mId } <span class="badge badge-primary ml-2">${vo.mGrade }</span>
					</div>
				</td>
				<td><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/> </td>
				<td>
					<div class="d-flex">
						<i class="fas fa-edit mr-3" data-toggle="tooltip"
							data-placement="top" title="Edit item"></i> <i
							class="fas fa-trash text-danger mr-2" data-toggle="tooltip"
							data-placement="top" title="Delete item"></i>
					</div>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table> --%>

<%@ include file="../inc/bottom.jsp"%>