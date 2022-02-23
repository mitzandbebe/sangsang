<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
	$(function() {
		var hostName = window.location.hostname; //localhost 또는 ip 주소 대응 변수바인딩
		/* 전체 정산내역 */
		$('#list1 #pagelinknum').click(
				function() {
					
					var i = $(this).text();
					console.log(i);
					console.log(hostName);
					$('#list1').load(
							"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
									+ i + "&searchCondition=&searchKeyword=");
				});

		/* 다음페이지 버튼(>) 클릭시 */
		$('#list1 #nextpage').click(
				function() {
					var a = $('#list1 #pagelinknum:nth-child(5n+1)').text();
					++a;
					console.log(a);
					$('#list1').load(
							"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
									+ a + "&searchCondition=&searchKeyword=");
				});

		/* 이전페이지 버튼(<) 클릭시 */
		$('#list1 #backpage').click(
				function() {
					var b = $('#list1 #pagelinknum:first').text();
					--b;
					console.log(b);
					$('#list1').load(
							"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
									+ b + "&searchCondition=&searchKeyword=");
				});
	});
	$(function() {
		var hostName = window.location.hostname;
		/* 정산 완료내역 */
		$('#list2 #pagelinknum')
				.click(
						function() {
							var i = $(this).text();
							console.log(i);
							$('#list2')
									.load(
											"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
													+ i
													+ "&searchCondition=b_flag&searchKeyword=N");
						});

		/* 다음페이지 버튼(>) 클릭시 */
		$('#list2 #nextpage')
				.click(
						function() {
							var c = $('#list2 #pagelinknum:nth-child(5n+1)')
									.text();
							++c;
							console.log(c);
							$('#list2')
									.load(
											"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
													+ c
													+ "&searchCondition=b_flag&searchKeyword=N");
						});

		/* 이전페이지 버튼(<) 클릭시 */
		$('#list2 #backpage')
				.click(
						function() {
							var d = $('#list2 #pagelinknum:first').text();
							--d;
							console.log(d);
							$('#list2')
									.load(
											"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
													+ d
													+ "&searchCondition=b_flag&searchKeyword=N");
						});
	});
	$(function() {
		var hostName = window.location.hostname;
		/* 미정산 내역 */
		$('#list3 #pagelinknum')
				.click(
						function() {
							var i = $(this).text();
							console.log(i);
							$('#list3')
									.load(
											"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
													+ i
													+ "&searchCondition=b_flag&searchKeyword=Y");
						});

		/* 다음페이지 버튼(>) 클릭시 */
		$('#list3 #nextpage')
				.click(
						function() {
							var e = $('#list3 #pagelinknum:nth-child(5n+1)')
									.text();
							++e;
							console.log(e);
							$('#list3')
									.load(
											"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
													+ e
													+ "&searchCondition=b_flag&searchKeyword=Y");
						});

		/* 이전페이지 버튼(<) 클릭시 */
		$('#list3 #backpage')
				.click(
						function() {
							var f = $('#list3 #pagelinknum:first').text();
							--f;
							console.log(f);
							$('#list3')
									.load(
											"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
													+ f
													+ "&searchCondition=b_flag&searchKeyword=Y");
						});

	});

	$(function() {
		var hostName = window.location.hostname;
		$('#list1 #balsubmit').click(
				function() {
					var i = $(this).text();
					console.log(i);
					$('#list1').load(
							"http://"+hostName+":9091/sangsanggongbang/admin/balancing/list?currentPage="
									+ i + "&searchCondition=&searchKeyword=");
				});
		$('#list2 #balsubmit').click(function() {
			document.getElementById('#tabs-text-2-tab').click();
		});
	});
</script>

<c:if test="${empty list }">
	<tr>
		<td colspan="6">데이터가 없습니다.</td>
	</tr>
</c:if>

<c:if test="${!empty list }">

	<!--게시판 내용 반복문 시작  -->
	<c:forEach var="vo" items="${list }">
		<div class="card-body px-0 pt-0">
			<ul class="list-group">
				<li class="list-group-item border-bottom">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="h5 mb-1">
								<a
									href="<c:url value="/class/detail?cNo=${vo.cNo}&categoryName=&hNo=${vo.hNo}" />">클래스번호
									#${vo.cNo}</a>
							</h3>
							<%-- 
							<!-- 모달테스트-->
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#modal-default">클래스번호 #${vo.cNo}</button>
							<div class="modal fade" id="modal-default" tabindex="-1"
								role="dialog" aria-labelledby="modal-default" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h6 class="modal-title">Terms of Service</h6>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<c:import url="/class/detail?cNo=${vo.cNo}&categoryName=&hNo=${vo.hNo}"/>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-sm btn-secondary">I
												Got It</button>
											<button type="button"
												class="btn btn-link text-danger ml-auto"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div> 
							<!-- 모달테스트-->
							--%>


							<c:set var="sales" value="${vo.fpnum * vo.cPrice }" />
							<!-- 매출액 -->
							<c:set var="fee" value="${sales * 0.1 }" />
							<!-- 수수료 -->
							<c:set var="amount" value="${sales - fee }" />
							<!-- 정산금액 -->
							<!-- Text -->
							<small class="text-gray-700"> 진행일자 : <fmt:formatDate
									value="${vo.bReqDate}" pattern="yyyy-MM-dd" /></small><br> <small
								class="text-gray-700"> 확정인원 : ${vo.fpnum}명</small><br> <small
								class="text-gray-700"> 매출액 : <fmt:formatNumber
									value="${sales}" pattern="#,###,###" />원
							</small><br> <small class="text-gray-700"> 수수료 : <fmt:formatNumber
									value="${fee}" pattern="#,###,###" />원
							</small><br> <span style="color: darkblue">정산금액 : <fmt:formatNumber
									value="${amount}" pattern="#,###,###" />원
							</span>
						</div>



						<c:if test="${vo.bFlag == 'N' }">
							<div class="col-auto">
								<button class="btn mb-2 mr-2 btn-primary animate-up-2"
									style="font-weight: bold;" name="bNo" id="balsubmit"
									onclick="location.href	='<c:url value="/admin/balancing/submit?bNo=${vo.bNo}"/>'">정산처리하기</button>
							</div>
						</c:if>
						<c:if test="${vo.bFlag == 'Y' }">
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
<div class="container" style="text-align: right;">
	<br>
	<!-- 엑셀 다운로드 -->
	<a class="btn btn-sm btn-outline-dark" id="excelDown"
		style="font-weight: bold; margin-left: 10%"
		href="<c:url value="/admin/excel/download"/>"> 엑셀다운로드</a> <br>
</div>
<div class="container">
	<div class="row">
		<div class="col-lg-12 mb-5">
			<div class="col mt-3 d-flex justify-content-center">
				<div style="text-align: center;">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<!-- 이전 블럭으로 이동 -->
							<%-- <c:if test="${pagingInfo.firstPage>1 }"> --%>
								<li class="page-item" id="backpage"><a class="page-link">
										<i class="fas fa-angle-double-left"></i>
								</a></li>
							<%-- </c:if> --%>
							<!-- [1][2][3][4][5][6][7][8][9][10] -->
							<c:forEach var="i" begin="${pagingInfo.firstPage}"
								end="${pagingInfo.lastPage }">
								<c:if test="${i==pagingInfo.currentPage }">
									<li class="page-item active"><a class="page-link"
										id="pagelinknum"> ${i} </a></li>
								</c:if>
								<c:if test="${i!=pagingInfo.currentPage }">
									<li class="page-item" id="pagelinknum"><a
										class="page-link" id="pagelinknum2">${i }</a></li>
								</c:if>
							</c:forEach>
							<!-- 다음 블럭으로 이동 -->
							<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
								<li class="page-item" id="nextpage"><a class="page-link"
									id="pagelinknum2"> <i class="fas fa-angle-double-right">
									</i>
								</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<%-- <div class="row">
			<div class="col-lg-12 mb-5">
				<div class="col mt-3 d-flex justify-content-center">
					<div style="text-align: center;">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<!-- 이전블럭 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<li class="page-item disabled"><a class="page-link"
										href="<c:url value='/dashboard/admin/list?currentPage=${pagingInfo.firstPage -1 }'/> ">
											<i class="fas fa-angle-double-left"></i>
									</a></li>
								</c:if>
								<!-- 페이징처리시작 -->
								<c:forEach var="i" begin="${pagingInfo.firstPage }"
									end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link" style="background-color:#e4e4e4"
											href="<c:url value='/dashboard/admin/list?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
									<c:if test="${i!=pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link"
											href="<c:url value='/dashboard/admin/list?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
								</c:forEach>
								<!-- 다음블럭으로 이동 -->
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
									<li class="page-item"><a class="page-link"
										href="<c:url value='/dashboard/admin/list?currentPage=${pagingInfo.lastPage +1 }'/> ">
											<i class="fas fa-angle-double-right"></i>
									</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div> --%>
</div>
