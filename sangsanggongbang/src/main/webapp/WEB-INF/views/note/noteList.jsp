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
						<h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.mNickname}</h2>
						<div class="list-group dashboard-menu list-group-sm mt-4">
							<a href="<c:url value='/dashboard/user/payment/myAccount'/>"
								class="d-flex list-group-item list-group-item-action">내 정보조회
								<span class="icon icon-xs ml-auto"><span
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
				<div class="row">
					<div class="col-lg-12">
						<div class="card card-body bg-white border-light mb-4">
							<div class="container">

								<table class="table table-hover" style="font-size: 14px;">
									<c:if test="${empty list }">
										<h3 class="h4 mb-5">클래스를 이용한 회원이 없습니다.</h3>
									</c:if>
									<c:if test="${!empty list }">
										<tbody>
											<!-- 이용회원 정보반복 -->
											<c:forEach var="map" items="${list}">
												<div class="card border-light mb-3 py-3">
													<div
														class="card-body d-flex align-items-center flex-wrap flex-lg-nowrap py-0">
														<div
															class="col-auto col-lg-1 d-flex align-items-center px-0">
															<input class="form-check-input" type="checkbox"
																name="noteNo" value="${map['noteNo'] }" id="check">
															<label class="form-check-label" for="defaultCheck2"></label>
														</div>
														<div class="col-lg-3 col-8 pl-0 ml-2">
															<a href="./single-message.html" class="h6 text-sm">${map['sNickname'] }</a>
														</div>
														<div class="col col-lg-1 text-right px-0 order-lg-4"
															id="time"
															style="flex: 3 0 8.33333%; max-width: 17.33333%;">
															<span class="text-muted text-sm"><fmt:formatDate
																	value="${map['noteRegdate']}"
																	pattern="yyyy-MM-dd [HH:mm]" /></span>
														</div>
														<div
															class="col-12 col-lg-7 d-flex align-items-center px-0"
															style="flex: 0 0 58.33333%; max-width: 49.33333%;">
															<div class="col col-lg-11 px-0">
																<div
																	class="d-flex flex-wrap flex-lg-nowrap align-items-center"
																	id="content">
																	<a
																		<c:choose>
											<c:when test="${map['recReadFlag']=='N'}">style="color:blue" </c:when> 
											<c:when test="${map['recReadFlag']=='Y'}">style="color:gray" </c:when> 
											</c:choose>
																		href="<c:url value='/note/noteDetail?noteNo=${map["noteNo"] }'/>">
																		${map['noteContent'] }</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
									</c:if>
									</tbody>
								</table>
								<div
									class="card-body d-flex flex-column justify-content-between col-auto py-4 p-lg-3 p-xl-5">
									<div class="d-flex align-items-center mt-3"></div>
								</div>
							</div>
							<div class="d-flex justify-content-center w-100 mt-5">
								<nav aria-label="Page navigation example"
									style="margin-top: -100px;">
									<ul class="pagination">
										<c:if test="${pagingInfo.firstPage>1 }">
											<li class="page-item"><a class="page-link"
												href="<c:url value='/note/noteList?mId=${param.mId }&currentPage=${pagingInfo.firstPage-1}'/>">Previous</a>
											</li>
										</c:if>
										<c:forEach var="i" begin="${pagingInfo.firstPage}"
											end="${pagingInfo.lastPage }">
											<c:if test="${i==pagingInfo.currentPage }">
												<li class="page-item active"><a class="page-link"
													href="#">${i }</a>
											</c:if>
											<c:if test="${i!=pagingInfo.currentPage }">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/note/noteList?mId=${param.mId }&currentPage=${i}'/>">
														${i }</a></li>
											</c:if>
										</c:forEach>
										<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
											<li class="page-item"><a class="page-link"
												href="<c:url value='/note/noteList?mId=${param.mId }&currentPage=${pagingInfo.lastPage+1}'/>">Next</a>
											</li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
						<c:if test="${!empty sessionScope.mId }">
							<a href="<c:url value='/note/noteWrite?mId=${param.mId }'/>">
								<button class="btn mb-2 mr-2 btn-success" id="noteWrite"
									type="button">쪽지쓰기</button>
							</a>
							<a href="<c:url value='/note/noteBox?mId=${param.mId }'/>">
								<button class="btn mb-2 mr-2 btn-success" id="noteBox"
									type="button">보관함</button>
							</a>
						</c:if>
						<c:if test="${!empty sessionScope.hId }">
							<a href="<c:url value='/note/noteWrite?hId=${param.hId }'/>">
								<button class="btn mb-2 mr-2 btn-success" id="noteWrite"
									type="button">쪽지쓰기</button>
							</a>
							<a href="<c:url value='/note/noteBox?hId=${param.hId }'/>">
								<button class="btn mb-2 mr-2 btn-success" id="noteBox"
									type="button">보관함</button>
							</a>
						</c:if>
						<button class="btn mb-2 mr-2 btn-success" id="noteSave"
							type="button">보관하기</button>
						<button class="btn mb-2 mr-2 btn-success" id="noteDelete"
							type="button">삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" value="${param.mId }" id="id" name="mId">
	<input type="hidden" value="${param.hId }" id="id" name="hId">
	</form>

	<%-- 		<div class="row">
			<div class="col-lg-12 mb-5">
				<div class="col mt-3 d-flex justify-content-center">
					<div style="text-align: center;">
						<nav aria-label="Page navigation example">
								<br>
							<ul class="pagination">
								<!-- 이전블럭 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<li class="page-item"><a class="page-link"
										href="<c:url value='/mainevent/eventlist?currentPage=${pagingInfo.firstPage -1 }'/> ">
											<i class="fas fa-angle-double-left"></i>
									</a></li>
								</c:if>
								<!-- 페이징처리시작 -->
								<c:forEach var="i" begin="${pagingInfo.firstPage }"
									end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link"
											style="background-color: #9FB9AE; color: #ffffff;"
											href="<c:url value='/mainevent/eventlist?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
									<c:if test="${i!=pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link"
											href="<c:url value='/mainevent/eventlist?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
								</c:forEach>
								<!-- 다음블럭으로 이동 -->
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
									<li class="page-item"><a class="page-link"
										href="<c:url value='/mainevent/eventlist?currentPage=${pagingInfo.lastPage +1 }'/> ">
											<i class="fas fa-angle-double-right"></i>
									</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div> --%>
	</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<script>
	$(function() {
		$('#blackinsertButton').click(function() {
			var result = confirm('해당 유저를 블랙리스트에 등록하시겠습니까?');
			if (!result) {
				event.preventDefault();
			}
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