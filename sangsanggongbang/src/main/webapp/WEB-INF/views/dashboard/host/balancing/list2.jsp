<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
$(function() {
	if($('#tabs-text-1').hasClass('active')==true){
		$('#list1 #pagelinknum').click(function(){
		var i=$(this).text();
		console.log(i);
		$('#list1').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list2?currentPage="+i+"&searchCondition=&searchKeyword=");
		});
	}
});
$(function() {
	/* if($('#tabs-text-2').hasClass('active')==true){ */
		$('#tabs-text-2 #pagelinknum').click(function(){
		var i=$(this).text();
		console.log(i);
		$('#list2').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list2?currentPage="+i+"&searchCondition=&searchKeyword=N");
		});
	/*  } */
});
$(function() {
	if($('#tabs-text-3').hasClass('active')==true){
		$('#list3 #pagelinknum').click(function(){
		var i=$(this).text();
		console.log(i);
		$('#list3').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list2?currentPage="+i+"&searchCondition=&searchKeyword=Y");
		});
	}
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
										<c:if test="${pagingInfo.firstPage>1 }">
										<li class="page-item"><a class="page-link"
											href="<c:url value='/dashboard/host/balancing/list?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
												<i class="fas fa-angle-double-left"></i>
										</a></li>
										</c:if>

										<!-- [1][2][3][4][5][6][7][8][9][10] -->
										<c:forEach var="i" begin="${pagingInfo.firstPage}"
											end="${pagingInfo.lastPage }">
											<c:if test="${i==pagingInfo.currentPage }">
												<span style="color: blue; font-weight: bold; font-size: 1em">
													${i}</span>
											</c:if>
											<c:if test="${i!=pagingInfo.currentPage }">
												<li class="page-item" id="pagelinknum">
													<a class="page-link" id="pagelinknum2">
													${i }
													</a>
													</li>
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
