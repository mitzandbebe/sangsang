<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../inc/top.jsp"%>
<%@ include file="../leftNavi.jsp"%>

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
				<c:set var="sumAllPrice" value="0" />
				<c:set var="sumFlagYPrice" value="0" />
				<c:set var="sumFlagYmonthPrice" value="0" />
				<c:set var="sumFlagNPrice" value="0" />
				<c:set var="classCountN" value="0" />
				<c:set var="classCountY" value="0" />
				
				<!-- 당월 구하기 -->
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<c:set var="sysMonth">
				<fmt:formatDate value="${now}" pattern="MM" /></c:set>
				
				<c:forEach var="vo" items="${list }">
				<!-- 전체 -->
					<c:set var="sumA" value="${vo.cPrice * vo.ppnum}" />
					<c:set var="sumAllPrice" value="${sumAllPrice+sumA }" />

				<!-- 미정산 -->
					<c:if test="${vo.bFlag == 'N' }">
						<c:set var="sumN" value="${vo.cPrice * vo.ppnum}" />
						<c:set var="sumFlagNPrice" value="${sumFlagNPrice+sumN }" />
						<c:set var="classCountN" value="${classCountN+1}" />
						
						<fmt:parseDate var="chkbReqDate" value="${vo.bReqDate}" pattern="yyyy-MM-dd" />
						<c:set var="bReqMonth">
						<fmt:formatDate value="${chkbReqDate}" pattern="MM" /></c:set>
						<c:if test="${sysMonth == bReqMonth && vo.bFlag == 'N' }">
						<c:set var="sumFlagYmonthPrice" value="${sumFlagYmonthPrice+sumN }" />
						</c:if>
					</c:if>

				<!-- 정산완료 -->
					<c:if test="${vo.bFlag == 'Y' }">
						<c:set var="sumY" value="${vo.cPrice * vo.ppnum}" />
						<c:set var="sumFlagYPrice" value="${sumFlagYPrice+sumY }" />
						<c:set var="classCountY" value="${classCountY+1}" />
					</c:if>
					
				</c:forEach>

				

				전체 ${sumAllPrice }원<br>
				전체 클래수개수 ${list.size()}<br>
				미정산${sumFlagNPrice }원<br>
				정산완료 ${sumFlagYPrice }원<br>
				미정산 클래스 수${classCountN }<br>
				정산완료 클래스 수${classCountY }<br>
				당월 ${sysMonth}월<br>
				당월 미정산금액 ${sumFlagYmonthPrice} 월

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
													<span class="d-block h6 font-weight-normal"> 전체 정산금액
													</span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumAllPrice }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<!-- <span class="fas fa-angle-up text-success"></span> <span
															class="fas fa-angle-down text-success"></span> -->
															<span class="text-success font-weight-bold">미정산 내역 포함</span>
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
													<span class="fas fa-file-invoice-dollar"></span>
												</div>
												<div>
													<span class="d-block h6 font-weight-normal">${sysMonth}월 정산총액 </span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumFlagNPrice }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<!-- <span class="fas fa-angle-up text-success"></span> <span
															class="fas fa-angle-down text-success"></span>  -->
															<span class="text-success font-weight-bold">미정산 내역 포함</span>
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
								<div class="card-header border-bottom p-3">
									<p class="small pr-lg-10">정산 대기중인 내역이 보여집니다.</p>
								</div>
								<!-- 누적금액 -->
								<div class="row">
									<div class="col-12 col-sm-6 mb-4">
										<div class="card border-light">
											<div class="card-body d-block d-md-flex align-items-center">
												<div
													class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
													<span class="">N</span>
												</div>
												<div>
													<span class="d-block h6 font-weight-normal"> 당월
														정산누적금액 </span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumAllPrice }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<span class="fas fa-angle-up text-success"></span> <span
															class="fas fa-angle-down text-success"></span> <span
															class="text-success font-weight-bold">18.2%</span> 전월대비
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
													<span class="fas fa-file-invoice-dollar"></span>
												</div>
												<div>
													<span class="d-block h6 font-weight-normal">정산예정금액 </span>
													<h5 class="h3 font-weight-bold mb-1">
														<fmt:formatNumber value="${sumFlagNPrice }"
															pattern="###,###,###" />
														원
													</h5>
													<div class="small mt-2">
														<span class="fas fa-angle-up text-success"></span> <span
															class="fas fa-angle-down text-success"></span> <span
															class="text-success font-weight-bold">4.2%</span> 전월대비
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
								<div class="card-header border-bottom p-3">
									<p class="small pr-lg-10">완료된 정산내역 입니다.</p>
								</div>
								<div id="list3"></div>


								</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Tab Content -->
			</div>
		</div>
	</div>
</div>
</main>
<%@ include file="../../../inc/bottom.jsp"%>