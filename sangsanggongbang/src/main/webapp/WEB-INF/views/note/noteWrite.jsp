<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
<script src="https://kit.fontawesome.com/2db6e9a548.js"
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div class="section section-lg bg-soft">
	<div class="container">
		<div class="row pt-5 pt-md-0">

			<div class="col-12 col-md-4 d-none d-lg-block">
				<!-- Navigation -->
				<div class="card border-light p-2">
					<div class="card-body p-2">
						<div class="profile-thumbnail small-thumbnail mx-auto">
							<c:if test="${!empty sessionScope.mFilename }">
								<img
									src="<c:url value='/resources/file_upload/${sessionScope.mFilename }'/>"
									class="card-img-top rounded-circle border-white"
									alt="Joseph Portrait"
									onerror="this.src='${sessionScope.mFilename }'">
							</c:if>
							<c:if test="${empty sessionScope.mFilename }">
								<img src="<c:url value='/resources/file_upload/default.png'/>"
									class="card-img-top rounded-circle border-white"
									alt="Joseph Portrait">
							</c:if>
						</div>
						<c:if test="${!empty sessionScope.mId }">
							<h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.mNickname}</h2>
							<div class="list-group dashboard-menu list-group-sm mt-4">
								<a href="<c:url value='/dashboard/user/payment/myAccount'/>"
									class="d-flex list-group-item list-group-item-action">내
									정보조회 <span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/member/memberEditChkPwd'/>"
									class="d-flex list-group-item list-group-item-action">회원정보
									수정<span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/dashboard/user/payment/myPayment'/>"
									class="d-flex list-group-item list-group-item-action ">내
									결제내역<span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/dashboard/user/payment/refundList'/>"
									class="d-flex list-group-item list-group-item-action">환불내역조회<span
									class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/member/interestClass'/>"
									class="d-flex list-group-item list-group-item-action ">내
									관심클래스<span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a
									href="<c:url value='/note/noteList?mId=${sessionScope.mId }'/>"
									class="d-flex list-group-item list-group-item-action  active  border-0">쪽지함<span
									class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/member/memberEditChkPwd2'/>"
									class="d-flex list-group-item list-group-item-action  border-0">회원탈퇴<span
									class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a>
							</div>
						</c:if>
						<c:if test="${!empty sessionScope.hId }">
							<h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.hNickname}</h2>
							<div class="list-group dashboard-menu list-group-sm mt-4">
								<a href="<c:url value='/dashboard/host/account'/>"
									class="d-flex list-group-item list-group-item-action">마이페이지
									<span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/host/hostEditChkPwd'/>"
									class="d-flex list-group-item list-group-item-action   ">회원정보
									수정<span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/class/myclass'/>"
									class="d-flex list-group-item list-group-item-action">내 클래스
									현황<span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>

								</a> <a href="<c:url value='/memberInquiry/classUser'/>"
									class="d-flex list-group-item list-group-item-action ">클래스
									이용회원<span class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/dashboard/host/balancing'/>"
									class="d-flex list-group-item list-group-item-action ">정산내역<span
									class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a
									href="<c:url value='/note/noteList?hId=${sessionScope.hId }'/>"
									class="d-flex list-group-item list-group-item-action active border-0">쪽지함<span
									class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a> <a href="<c:url value='/host/hostEditChkPwd2'/>"
									class="d-flex list-group-item list-group-item-action  border-0">회원탈퇴<span
									class="icon icon-xs ml-auto"><span
										class="fas fa-chevron-right"></span></span>
								</a>
							</div>
						</c:if>
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
									class="list-group-item list-group-item-action border-0  active ">회원정보</a>
								<a href="<c:url value='/class/myclass'/>"
									class="list-group-item list-group-item-action d-none d-sm-block border-0 active">내
									클래스 현황</a> <a href="./security.html"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">클래스
									이용회원</a> 현황</a> <a href="<c:url value='/dashboard/host/balancing'/>"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">정산내역</a>
								현황</a> <a href="./security.html"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">회원탈퇴</a>
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
											class="list-group-item list-group-item-action d-md-none border-0 ">클래스
											이용회원</a> <a href="<c:url value='/dashboard/host/balancing'/>"
											class="list-group-item list-group-item-action border-0 ">정산내역</a>
										<a href="<c:url value='/host/hostEditChkPwd2'/>"
											class="list-group-item list-group-item-action border-0 ">회원탈퇴</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-lg-8">
				<form method="post" action="<c:url value='/note/noteWrite'/>">
					<c:if test="${!empty sessionScope.mId }">
						<input type="hidden" id="mNickname" name="mNickname"
							value="${mVo.mNickname }">
					</c:if>
					<c:if test="${!empty sessionScope.hId }">
						<input type="hidden" id="mNickname" name="mNickname"
							value="${hVo.hNickname }">
					</c:if>
					<c:if test="${!empty sessionScope.mId }">
						<input type="hidden" id="mId" name="mId" value="${mVo.mId }">
					</c:if>
					<c:if test="${!empty sessionScope.hId }">
						<input type="hidden" id="hId" name="hId" value="${hVo.hId }">
					</c:if>
					<div class="row">
						<div class="col-lg-12">
							<div class="card card-body bg-white border-light mb-4">
								<div class="container">
									<div>
										<span>받는사람 :</span> &nbsp; <input type="checkbox"
											name="selfWrite" id="selfWrite">&nbsp;내게쓰기&ensp; <input
											type="text" id="sendPeople" name="rNickname"
											placeholder="닉네임을 입력해주세요" value="" style="width:70%;">
										<br> <br>
										<textarea style="height: auto; width: 100%;"
											name="noteContent" id="noteContent" style="resize: none"></textarea>
										<div id="cnt">(0 / 1000)자</div>
										<br>

										<button class="btn mb-2 mr-2 btn-primary animate-up-2"
											id="noteWrite" type="submit">보내기</button>
										<c:if test="${!empty sessionScope.mId }">
											<a
												href="<c:url value='/note/noteList?mId=${sessionScope.mId }'/>"><button
													class="btn mb-2 mr-2 btn-primary animate-up-2"
													id="noteWrite" type="button">목록</button> </a>
										</c:if>
										<c:if test="${!empty sessionScope.hId }">
											<a
												href="<c:url value='/note/noteList?hId=${sessionScope.hId }'/>"><button
													class="btn mb-2 mr-2 btn-primary animate-up-2"
													id="noteWrite" type="button">목록</button> </a>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>
	<input type="hidden" value="${sessionScope.mId }" id="id" name="mId">
	<input type="hidden" value="${sessionScope.hId }" id="id" name="hId">
	</form>
</div>


<script type="text/javascript">
	$(function() {
		$('#selfWrite').change(function() {
			if ($(this).is(':checked')) {
				userId = $('#mNickname').val();
				$('#sendPeople').val(userId);
			} else {
				$('#sendPeople').val('');
			}
		})
		$('#noteContent').on('keyup', function() {
			$('#cnt').html("(" + $(this).val().length + " / 1000)자");
			if ($(this).val().length > 1000) {
				$(this).val($(this).val().substring(0, 1000));
				$('#cnt').html("(1000 / 1000)자")
				alert("1000자가 넘었습니다.");
			}
		})
		$(function() {
			$('textarea').keyup(function(e) {
				$(this).css('height', 'auto');
				$(this).height(this.scrollHeight);
			})
		})
	})
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