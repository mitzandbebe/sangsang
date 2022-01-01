<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
$(function() {
	/* 전체 정산내역 */
		$('#list1 #pagelinknum').click(function(){
			var i=$(this).text();
			console.log(i);
			$('#list1').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+i+"&searchCondition=&searchKeyword=");
		});
		
		/* 다음페이지 버튼(>) 클릭시 */
		$('#list1 #nextpage').click(function(){
			var a=$('#list1 #pagelinknum:nth-child(5n+1)').text();
			++a;
			console.log(a);
			$('#list1').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+a+"&searchCondition=&searchKeyword=");
		});
		
		/* 이전페이지 버튼(<) 클릭시 */
		$('#list1 #backpage').click(function(){
			var b=$('#list1 #pagelinknum:first').text();
			--b;
			console.log(b);
			$('#list1').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+b+"&searchCondition=&searchKeyword=");
		});
});
$(function() {
	/* 정산 완료내역 */
		$('#tabs-text-2 #pagelinknum').click(function(){
			var i=$(this).text();
			console.log(i);
			$('#list2').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+i+"&searchCondition=b_flag&searchKeyword=Y");
		});
		
		/* 다음페이지 버튼(>) 클릭시 */
		$('#list2 #nextpage').click(function(){
			var c=$('#list2 #pagelinknum:nth-child(5n+1)').text();
			++c;
			console.log(c);
			$('#list2').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+c+"&searchCondition=b_flag&searchKeyword=Y");
		});
		
		/* 이전페이지 버튼(<) 클릭시 */
		$('#list2 #backpage').click(function(){
			var d=$('#list2 #pagelinknum:first').text();
			--d;
			console.log(d);
			$('#list2').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+d+"&searchCondition=b_flag&searchKeyword=N");
		});
});
$(function() {
	/* 미정산 내역 */
		$('#list3 #pagelinknum').click(function(){
			var i=$(this).text();
			console.log(i);
			$('#list3').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+i+"&searchCondition=b_flag&searchKeyword=Y");
		});
		
		/* 다음페이지 버튼(>) 클릭시 */
		$('#list3 #nextpage').click(function(){
			var e=$('#list3 #pagelinknum:nth-child(5n+1)').text();
			++e;
			console.log(e);
			$('#list3').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+e+"&searchCondition=b_flag&searchKeyword=Y");
		});
		
		/* 이전페이지 버튼(<) 클릭시 */
		$('#list3 #backpage').click(function(){
			var f=$('#list3 #pagelinknum:first').text();
			--f;
			console.log(f);
			$('#list3').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list?currentPage="+f+"&searchCondition=b_flag&searchKeyword=Y");
		});
});

</script>
<c:set var="total"></c:set>
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
							<small class="text-gray-700"> 진행인원 : ${vo.ppnum}</small><br>
							<small class="text-gray-700"> 클래스가격 : ${vo.cPrice}</small><br>
							<small class="text-gray-700"> 진행일자 : <fmt:formatDate
									value="${vo.bReqDate}" pattern="yyyy-MM-dd" />
							</small>
						</div>
						<c:if test="${vo.bFlag == 'N' }">
							<div class="col-auto">
								<button class="btn btn-sm btn-outline-dark"
									style="font-weight: bold;">정산신청</button>
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
<nav aria-label="Page navigation example" style="margin-left: 50px">
	<ul class="pagination circle-pagination">
		<!-- 이전 블럭으로 이동 -->
		<%-- <c:if test="${pagingInfo.firstPage>1 }"> --%>
		<li class="page-item" id="backpage">
		<a class="page-link">
		<i class="fas fa-angle-double-left"></i>
		</a>
		</li>
		<%-- </c:if> --%>

		<!-- [1][2][3][4][5][6][7][8][9][10] -->
		<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
			<c:if test="${i==pagingInfo.currentPage }">
				<span style="color: blue; font-weight: bold; font-size: 1em"
					id="pagelinknum"> ${i}</span>
			</c:if>
			<c:if test="${i!=pagingInfo.currentPage }">
				<li class="page-item" id="pagelinknum">
				<a class="page-link" id="pagelinknum2">${i }</a></li>
			</c:if>
		</c:forEach>
		<!-- 다음 블럭으로 이동 -->
		<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
			<li class="page-item" id="nextpage"><a class="page-link"
				id="pagelinknum2"> <i class="fas fa-angle-double-right"> </i>
			</a></li>
		</c:if>
		<!--  페이지 번호 끝 -->
	</ul>
</nav>
