<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../inc/top.jsp"%>
<%@ include file="../leftNavi.jsp"%>

<script type="text/javascript">
$(function(){
	$('#wr_submit').click(function(){
		if($('#name').val().
</script>

<div class="col-12 col-lg-8">
	<div class="row mb-5">
		<div class="col-12 mb-4">
			<div class="card card-body bg-white border-light p-0 p-md-4">
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
									<h3 class="h5">전체정산내역</h3>
									<p class="small pr-lg-10">전체 정산내역 입니다.</p>
								</div>
								<c:import url="/dashboard/host/balancing/list?bFlag="></c:import>
							</div>
							<div class="tab-pane fade" id="tabs-text-2" role="tabpanel"
								aria-labelledby="tabs-text-2-tab">
								<div class="card-header border-bottom p-3">
									<h3 class="h5">정산완료내역</h3>
									<p class="small pr-lg-10">완료된 정산내역 입니다.</p>
									
								</div>
								<c:import url="/dashboard/host/balancing/list?bFlag=N"></c:import>
							</div>
							<div class="tab-pane fade" id="tabs-text-3" role="tabpanel"
								aria-labelledby="tabs-text-3-tab">
								<div class="card-header border-bottom p-3">
									<h3 class="h5">미정산내역</h3>
									<p class="small pr-lg-10">정산 대기중인 내역이 보여집니다.</p>
										
								</div>
								<c:import url="/dashboard/host/balancing/list?bFlag=Y"></c:import>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Tab Content -->
				<nav aria-label="Page navigation example" style="margin-left: 50px">
					<ul class="pagination circle-pagination">
						<li class="page-item"><a class="page-link" href="#"><i
								class="fas fa-angle-double-left"></i></a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item "><a class="page-link" href="#">2</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#"><i
								class="fas fa-angle-double-right"></i></a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>

</main>
<%@ include file="../../../inc/bottom.jsp"%>