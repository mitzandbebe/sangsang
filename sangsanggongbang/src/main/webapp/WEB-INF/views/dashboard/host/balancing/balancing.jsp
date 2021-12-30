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
							role="tab" aria-controls="tabs-text-2" aria-selected="false">정산완료내역</a>
						</li>
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
							id="tabs-text-3-tab" data-toggle="tab" href="#tabs-text-3"
							role="tab" aria-controls="tabs-text-3" aria-selected="false">미정산내역</a>
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
								<div class="card-header border-bottom p-3">
									<p class="small pr-lg-10">전체 정산내역 입니다.</p>
								</div>
								
								<div id="list1"></div>

							</div>
							<div class="tab-pane fade" id="tabs-text-2" role="tabpanel"
								aria-labelledby="tabs-text-2-tab">
								<div class="card-header border-bottom p-3">
									<p class="small pr-lg-10">완료된 정산내역 입니다.</p>
								</div>
								<div id="list2"></div>
							</div>
							<div class="tab-pane fade" id="tabs-text-3" role="tabpanel"
								aria-labelledby="tabs-text-3-tab">
								<div class="card-header border-bottom p-3">
									<p class="small pr-lg-10">정산 대기중인 내역이 보여집니다.</p>
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