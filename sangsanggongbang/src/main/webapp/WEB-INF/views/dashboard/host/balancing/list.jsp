<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../../../inc/top.jsp"%>
<%@ include file="../leftNavi.jsp"%>


<c:if test="${empty list }">
	<tr>
		<td colspan="6">데이터가 없습니다.</td>
	</tr>
</c:if>

<div class="col-12 col-lg-8">
	<div class="row mb-5">
		<div class="col-12 mb-4">
			<div class="card card-body bg-white border-light p-0 p-md-4">
				<!-- Tab Nav -->
				<div class="nav-wrapper position-relative mb-2">
					<ul class="nav nav-pills nav-fill flex-column flex-md-row"
						id="tabs-text" role="tablist">
						
						<%-- <button class="nav-link mb-sm-3 mb-md-0 active">
						<a href="${pageContext.request.contextPath }/dashboard/host/balancing/list">전체정산내역</a></button>
						<button class="nav-link mb-sm-3 mb-md-0">정산완료내역</button>
						<button class="nav-link mb-sm-3 mb-md-0">미정산내역</button> --%>
						
						<li class="nav-item"><a
							class="nav-link mb-sm-3 mb-md-0 active" id="tabs-text-1-tab"
							data-toggle=""
							href="${pageContext.request.contextPath }/dashboard/host/balancing/list"
							role="" aria-controls="tabs-text-1" aria-selected="true">전체정산내역</a></li>
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
							id="tabs-text-2-tab" data-toggle=""
							href="${pageContext.request.contextPath }/dashboard/host/balancing/list?searchCondition=b_flag&searchKeyword=N"
							role="" aria-controls="tabs-text-2" aria-selected="false">정산완료내역</a>
						</li>
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
							id="tabs-text-3-tab" data-toggle=""
							href="${pageContext.request.contextPath }/dashboard/host/balancing/list?searchCondition=b_flag&searchKeyword=Y"
							role="" aria-controls="tabs-text-3" aria-selected="false">미정산내역</a>
						</li>
					</ul>
				</div>

				<!-- End of Tab Nav -->
				<!-- Tab Content -->
				<div class="card">
					<div class="card-body p-0">
						<div class="tab-content" id="tabcontent1">
							<div class="tab-pane fade show active" id="tabs-text-1"
								role="tabpanel" aria-labelledby="tabs-text-1-tab">

								<c:if test="${!empty list }">
									<!--게시판 내용 반복문 시작  -->
									<c:forEach var="vo" items="${list }">
										<div class="card-body px-0 pt-0">
											<ul class="list-group">
												<li class="list-group-item border-bottom">
													<div class="row align-items-center">
														<div class="col">
															<h3 class="h5 mb-1">
																<a href="#">클래스번호 # ${vo.bNo}</a>
															</h3>
															<!-- Text -->
															<small class="text-gray-700"> 호스트번호 : ${vo.hNo}</small><br>
															<small class="text-gray-700"> 진행인원 : ${vo.bPpnum}</small><br>
															<small class="text-gray-700"> 진행일자 : <fmt:formatDate
																	value="${vo.bReqDate}" pattern="yyyy-MM-dd" />
															</small>
														</div>
														<c:if test="${vo.bFlag == 'Y' }">
															<div class="col-auto">
																<button class="btn btn-sm btn-outline-dark"
																	style="font-weight: bold;">정산신청</button>
															</div>
														</c:if>
														<c:if test="${vo.bFlag == 'N' }">
															<div class="col-auto">
																<span class="badge badge-pill badge-success"> <span
																	class="text-uppercase font-weight-bold"
																	style="font-size: 1.3em">정산완료</span>
																</span>
															</div>
														</c:if>
													</div>
												</li>
											</ul>
										</div>
									</c:forEach>
									<!--반복처리 끝  -->
								</c:if>

								<!-- 페이지 번호 추가 -->
								<nav aria-label="Page navigation example"
									style="margin-left: 50px">
									<ul class="pagination circle-pagination">
										<!-- 이전 블럭으로 이동 -->
										<li class="page-item"><a class="page-link"
											href="<c:url value='/dashboard/host/balancing/list?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
												<i class="fas fa-angle-double-left"></i>
										</a></li>

										<!-- [1][2][3][4][5][6][7][8][9][10] -->
										<c:forEach var="i" begin="${pagingInfo.firstPage}"
											end="${pagingInfo.lastPage }">
											<c:if test="${i==pagingInfo.currentPage }">
												<span style="color: blue; font-weight: bold; font-size: 1em">
													${i}</span>
											</c:if>
											<c:if test="${i!=pagingInfo.currentPage }">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/dashboard/host/balancing/list?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
														${i }</a></li>
											</c:if>
										</c:forEach>

										<!-- 다음 블럭으로 이동 -->
										<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
											<a
												href="<c:url value='/dashboard/host/balancing/list?currentPage=${pagingInfo.lastPage+1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
												<i class="fas fa-angle-double-right"></i>
											</a>
										</c:if>
										<!--  페이지 번호 끝 -->
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<!-- End of Tab Content -->

				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../../../inc/bottom.jsp"%>
