<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/new_top_user.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://kit.fontawesome.com/2db6e9a548.js" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>

<div class="section section-lg bg-soft">
	<div class="container">
		<div class="row pt-5 pt-md-0">

			<div class="col-12 col-md-4 d-none d-lg-block">
				<!-- Navigation -->
				<div class="card border-light p-2">
					<div class="card-body p-2">
						<div class="profile-thumbnail small-thumbnail mx-auto">
							<c:if test="${!empty sessionScope.hFilename }">
								<img
									src="<c:url value='/resources/file_upload/${sessionScope.hFilename }'/>"
									class="card-img-top rounded-circle border-white"
									alt="Joseph Portrait"
									onerror="this.src='${sessionScope.hFilename }'">
							</c:if>
							<c:if test="${empty sessionScope.hFilename }">
								<img src="<c:url value='/resources/assets/img/default.png'/>"
									class="card-img-top rounded-circle border-white"
									alt="Joseph Portrait">
							</c:if>
						</div>
						<h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.hNickname}</h2>
						<div class="list-group dashboard-menu list-group-sm mt-4">
							<a href="<c:url value='/host/hostAccount'/>"
								class="d-flex list-group-item list-group-item-action ">마이페이지
								<span class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/host/hostEditChkPwd'/>"
								class="d-flex list-group-item list-group-item-action ">회원정보
								수정<span class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/class/myclass'/>"
								class="d-flex list-group-item list-group-item-action ">내 클래스
								현황<span class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/memberInquiry/classUser'/>"
								class="d-flex list-group-item list-group-item-action ">클래스 이용회원<span
								class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/dashboard/host/balancing'/>"
								class="d-flex list-group-item list-group-item-action ">정산내역<span
								class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/host/hostEditChkPwd2'/>"
								class="d-flex list-group-item list-group-item-action border-0 active">회원탈퇴<span
								class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 d-lg-none">
				<div class="card bg-white border-light mb-4 mb-lg-5">
					<div class="card-body">
						<div class="row align-items-center">
							<div class="col-10 d-flex">
								<a href="<c:url value='/host/hostAccount'/>"
									class="list-group-item list-group-item-action border-0 ">마이페이지</a>
								<a href="<c:url value='/host/hostEditChkPwd'/>"
									class="list-group-item list-group-item-action border-0 ">회원정보</a>
								<a href="<c:url value='/class/myclass'/>"
									class="list-group-item list-group-item-action d-none d-sm-block border-0">내 클래스
								현황</a> <a href="./security.html"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">클래스 이용회원</a>
								현황</a> <a href="<c:url value='/dashboard/host/balancing'/>"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">정산내역</a>
								현황</a> <a href="<c:url value='/host/hostEditChkPwd2'/>"
									class="list-group-item list-group-item-action d-none d-md-block border-0 active">회원탈퇴</a>
							</div>
							<div class="col-2 d-flex justify-content-center">
								<div class="btn-group dropleft">
									<button
										class="btn btn-link dropdown-toggle dropdown-toggle-split mr-2 m-0 p-0"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="icon icon-sm"> <span
											class="fas fa-ellipsis-h icon-secondary fa-lg"></span>
										</span> <span class="sr-only">Toggle Dropdown</span>
									</button>
									<div class="dropdown-menu">
										 <a href="./security.html"
											class="list-group-item list-group-item-action d-md-none border-0 ">클래스 이용회원</a>
										<a href="<c:url value='/dashboard/host/balancing'/>"
											class="list-group-item list-group-item-action border-0 ">정산내역</a>
										<a href="<c:url value='/host/hostEditChkPwd2'/>"
											class="list-group-item list-group-item-action border-0 active">회원탈퇴</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
 			<div class="col-12 col-lg-8">
				<div class="row">
					<div class="col-lg-12">
						<div class="card card-body bg-white border-light mb-4">
							<div class="container">
								<form name="frmDelete" method="post" action="<c:url value='/host/deleteHost'/>">


									<h3 class="h4 mb-5">
										${sessionScope.hNickname }&nbsp;늘솜님, 너무 아쉬워요<br>
										정말로 탈퇴 하실건가요?
									</h3>
									<h4>더 나은 상상공방이 되도록 노력할게요٩( *˙0˙*)✧ <br>
										<a href="<c:url value='/index'/> "> ➯ 메인으로 돌아가기</a>
									</h4>
									<br>
									<input type="hidden" name="hId" value="${sessionScope.hId }">
									<input id="delete" type="submit" style="border:none;background-color:transparent;'"
										value="➯ 탈퇴할래요 ε٩(๑> ₃ <)۶з"
									/>


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

    </main>
 <%@ include file="../inc/bottom.jsp" %>