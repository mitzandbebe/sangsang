<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../inc/new_top_admin.jsp"%>
<div class="section section-lg bg-soft">
	<div class="container">
<%-- 		<div class="row pt-5 pt-md-0">

			<div class="col-12 col-md-8 d-none d-lg-block">
				<!-- Navigation -->
				<div class="card border-light p-2">
					<div class="card-body p-2">
						<div class="profile-thumbnail small-thumbnail mx-auto">
							<c:if test="${!empty sessionScope.hFilename }">
								<img
									src="<c:url value='/resources/file_upload/${sessionScope.hFilename }'/>"
									class="card-img-top rounded-circle border-white"
									alt="Joseph Portrait"
									onerror="this.src='${sessionScope.mFilename }'">
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
								class="d-flex list-group-item list-group-item-action">회원정보
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
								class="d-flex list-group-item list-group-item-action active ">정산내역<span
								class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="./messages.html"
								class="d-flex list-group-item list-group-item-action border-0">회원탈퇴<span
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
									class="list-group-item list-group-item-action border-0">마이페이지</a>
								<a href="<c:url value='/host/hostEditChkPwd'/>"
									class="list-group-item list-group-item-action border-0 ">회원정보</a>
								<a href="<c:url value='/class/myclass'/>"
									class="list-group-item list-group-item-action d-none d-sm-block border-0">내 클래스
								현황</a> <a href="./security.html"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">클래스 이용회원</a>
								현황</a> <a href="<c:url value='/dashboard/host/balancing'/>"
									class="list-group-item list-group-item-action d-none d-md-block border-0 active">정산내역</a>
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
											class="list-group-item list-group-item-action d-md-none border-0 ">클래스 이용회원</a>
										<a href="<c:url value='/dashboard/host/balancing'/>"
											class="list-group-item list-group-item-action border-0 ">정산내역</a>
										<a href="./messages.html"
											class="list-group-item list-group-item-action border-0 ">회원탈퇴</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> --%>

<div class="col-12 col-lg-8">
	<div class="row mb-5">
		<div class="col-12 mb-4">
			<div class="card card-body bg-white border-light p-0 p-md-4">
				<!-- 카드영역시작 -->
				<!-- Tab Nav -->
				<div class="nav-wrapper position-relative mb-2">
					<ul class="nav nav-pills nav-fill flex-column flex-md-row"
						id="tabs-text" role="tablist">
						<!-- <form>
						<input type="hidden" name="bFlag" value="">
						</form> -->
						<li class="nav-item"><a
							class="nav-link mb-sm-3 mb-md-0 active" id="tabs-text-1-tab"
							data-toggle="tab" href="#tabs-text-1" role="tab"
							aria-controls="tabs-text-1" aria-selected="true">전체정산내역</a></li>
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
							id="tabs-text-2-tab" data-toggle="tab" href="#tabs-text-2"
							role="tab" aria-controls="tabs-text-2" aria-selected="false">미정산내역</a>
						</li>
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
							id="tabs-text-3-tab" data-toggle="tab" href="#tabs-text-3"
							role="tab" aria-controls="tabs-text-3" aria-selected="false">정산완료내역</a>
						</li>
					</ul>
				</div>
				<!-- End of Tab Nav -->
				<!-- 정산금액 계산식 -->
				<c:set var="sumAllPrice" value="0" /> <!-- 전체금액 -->
				<c:set var="sumFlagYPrice" value="0" /><!-- 정산완료금액 -->
				<c:set var="sumFlagYmonthPrice" value="0" /><!-- 당월 정산완료 금액 -->
				<c:set var="sumFlagNPrice" value="0" /><!-- 미정산금액 -->
				<c:set var="sumFlagNmonthPrice" value="0" /><!-- 당월 미정산 금액 -->
				<c:set var="classCountN" value="0" /><!-- 미정산 건수 -->
				<c:set var="classCountY" value="0" /><!-- 정산 건수 -->
				<c:set var="classCountMonthN" value="0" /><!-- 당월 미정산 건수 -->
				<c:set var="classCountMonthY" value="0" /><!-- 당월 정산 건수 -->
				
				<!-- 당월 구하기 -->
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<c:set var="sysMonth">
				<fmt:formatDate value="${now}" pattern="MM" /></c:set>
				
				<c:forEach var="vo" items="${list }">
				
					<c:set var="sumA" value="${vo.cPrice * vo.fpnum}" />
					<c:set var="sumAllPrice" value="${sumAllPrice+sumA }" />

				
					<c:if test="${vo.bFlag == 'N' }">
						<c:set var="sumN" value="${vo.cPrice * vo.fpnum}" />
						<c:set var="sumFlagNPrice" value="${sumFlagNPrice+sumN }" />
						<c:set var="classCountN" value="${classCountN+1}" />
						
						<fmt:parseDate var="chkbReqDate" value="${vo.bReqDate}" pattern="yyyy-MM-dd" />
						<c:set var="bReqMonth">
						<fmt:formatDate value="${chkbReqDate}" pattern="MM" /></c:set>
						
						<c:if test="${sysMonth == bReqMonth}">
							<c:set var="sumFlagNmonthPrice" value="${sumFlagNmonthPrice+sumN }" />
							<c:set var="classCountMonthN" value="${classCountMonthN+1}" />
						</c:if>
					</c:if>

				<!-- 정산완료 -->
					<c:if test="${vo.bFlag == 'Y' }">
						<c:set var="sumY" value="${vo.cPrice * vo.fpnum}" />
						<c:set var="sumFlagYPrice" value="${sumFlagYPrice+sumY }" />
						<c:set var="classCountY" value="${classCountY+1}" />
						
						<fmt:parseDate var="chkbReqDate" value="${vo.bReqDate}" pattern="yyyy-MM-dd" />
						<c:set var="bReqMonth">
						<fmt:formatDate value="${chkbReqDate}" pattern="MM" /></c:set>
						
						<c:if test="${sysMonth == bReqMonth}">
							<c:set var="sumFlagYmonthPrice" value="${sumFlagYmonthPrice+sumY }" />
							<c:set var="classCountMonthY" value="${classCountMonthY+1}" />
						</c:if>
					</c:if>
				</c:forEach>

 				전체 ${sumAllPrice }원<br>
				전체 클래수개수 ${list.size()}<br>
				미정산 총금액 ${sumFlagNPrice }원<br>
				정산완료 총액 ${sumFlagYPrice }원<br>
				미정산 클래스 수 ${classCountN }<br>
				정산완료 클래스 수 ${classCountY }<br>
				당월 ${sysMonth}월<br>
				당월 미정산금액 ${sumFlagNmonthPrice}원<br>
				당월 정산금액 ${sumFlagYmonthPrice}원<br>
				당월 정산총액 ${sumFlagNmonthPrice+sumFlagYmonthPrice}원

				<!-- Tab Content -->
				<div class="card">
					<div class="card-body p-0">
						<div class="tab-content" id="tabcontent1">
							<div class="tab-pane fade show active" id="tabs-text-1"
								role="tabpanel" aria-labelledby="tabs-text-1-tab">
								<!-- <div class="card-header border-bottom p-3">
									<p class="small pr-lg-10"></p>
								</div> -->
								<!-- 누적금액 -->
								<div class="row">
									<div class="col-12 col-sm-6 mb-4">
										<div class="card border-light">
											<div class="card-body d-block d-md-flex align-items-center">
												<div
													class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
													<span class="">${list.size()}</span>건
												</div>
												<div>
													<span class="d-block h6 font-weight-normal"> 전체 누적정산금액
													</span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumAllPrice-(sumAllPrice*0.1) }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<!-- <span class="fas fa-angle-up text-success"></span> <span
															class="fas fa-angle-down text-success"></span> -->
															<span class="text-success font-weight-bold">미정산내역 포함 / 수수료 10%제외</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-12 col-sm-6 mb-4">
										<div class="card border-light">
											<div class="card-body d-block d-md-flex align-items-center">
												<div
													class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
													<span class="">${classCountMonthY+classCountMonthN}</span>건
												</div>
												<div>
													<span class="d-block h6 font-weight-normal">${sysMonth}월 정산총액 </span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber 
														value="${(sumFlagNmonthPrice+sumFlagYmonthPrice)-(sumFlagNmonthPrice+sumFlagYmonthPrice)*0.1}"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<!-- <span class="fas fa-angle-up text-success"></span> <span
															class="fas fa-angle-down text-success"></span>  -->
															<span class="text-success font-weight-bold">미정산내역 포함 / 수수료 10%제외</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 누적금액 종료 -->
								<div id="list1"></div>
								
							</div>
							<div class="tab-pane fade" id="tabs-text-2" role="tabpanel"
								aria-labelledby="tabs-text-2-tab">
								<!-- 누적금액 -->
								<div class="row">
									<div class="col-12 col-sm-6 mb-4">
										<div class="card border-light">
											<div class="card-body d-block d-md-flex align-items-center">
												<div
													class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
													<span class="">${classCountN }</span>건
												</div>
												<div>
													<span class="d-block h6 font-weight-normal">총 미정산금액 </span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumFlagNPrice-sumFlagNPrice*0.1 }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<span class="text-success font-weight-bold">수수료 10%제외</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-12 col-sm-6 mb-4">
										<div class="card border-light">
											<div class="card-body d-block d-md-flex align-items-center">
												<div
													class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
													<span class="">${classCountMonthN}</span>건
												</div>
												<div>
													<span class="d-block h6 font-weight-normal">${sysMonth}월 미정산금액 </span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumFlagNmonthPrice-sumFlagNmonthPrice*0.1 }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<span class="text-success font-weight-bold">수수료 10%제외</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 누적금액 종료 -->
								<div id="list2"></div>
							</div>
							<div class="tab-pane fade" id="tabs-text-3" role="tabpanel"
								aria-labelledby="tabs-text-3-tab">
								<!-- 누적금액 -->
								<div class="row">
									<div class="col-12 col-sm-6 mb-4">
										<div class="card border-light">
											<div class="card-body d-block d-md-flex align-items-center">
												<div
													class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
													<span class="">${classCountY}</span>건
												</div>
												<div>
													<span class="d-block h6 font-weight-normal"> 총 정산완료금액
													</span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumFlagYPrice-sumFlagYPrice*0.1 }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<span class="text-success font-weight-bold">수수료 10%제외</span>
													</div>
													<div class="small mt-2">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-12 col-sm-6 mb-4">
										<div class="card border-light">
											<div class="card-body d-block d-md-flex align-items-center">
												<div
													class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
													<span class="">${classCountMonthY}</span>건
												</div>
												<div>
													<span class="d-block h6 font-weight-normal">${sysMonth}월 정산완료금액 </span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumFlagYmonthPrice-sumFlagYmonthPrice*0.1}"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<span class="text-success font-weight-bold">수수료 10%제외</span>
													</div>
													<div class="small mt-2">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 누적금액 종료 -->
								<div id="list3"></div>


							</div>
						</div>
					</div>
				</div>
				<!-- End of Tab Content -->
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>

<%@ include file="../../../inc/bottom_admin.jsp"%>