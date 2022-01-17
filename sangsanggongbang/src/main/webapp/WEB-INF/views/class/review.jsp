<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
	src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script
	src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/>"></script>
<script type="text/javascript">
$(function() {
	let cNo=${param.cNo};
	
		$('#reviewlist #pagelinknum').click(function(){
			var i=$(this).text();
			console.log(i);
			$('#reviewlist').load("<c:url value='/class/review?cNo="+cNo+"&currentPage="+i+"'/> ");
		});
		
		/* 다음페이지 버튼(>) 클릭시 */
		$('#reviewlist #nextpage').click(function(){
			var a=$('#reviewlist #pagelinknum:nth-child(5n+1)').text();
			++a;
			console.log(a);
			$('#reviewlist').load("<c:url value='/class/review?cNo="+cNo+"&currentPage="+a+"'/> " );
		});
		
		/* 이전페이지 버튼(<) 클릭시 */
		$('#reviewlist #backpage').click(function(){
			var b=$('#reviewlist #pagelinknum:first').text();
			--b;
			console.log(b);
			$('#reviewlist').load("<c:url value='/class/review?cNo="+cNo+"&currentPage="+b+"'/> ");
		});
});
</script>

<form name="frmreviewList" method="post" action="<c:url value='/review?cNo=${param.cNo }'/> ">
	<input type="hidden" name="cNo" value="${param.cNo }">
	<input type="hidden" name="categoryName" value="${param.categoryName }">
	<input type="hidden" name="hNo" value="${param.hNo }">
	<!-- 리뷰 내용반복 -->
	<c:if test="${empty list }">
			<p class="h5">아직 리뷰가 없어요! 소중한 첫 리뷰를 남겨주세요(◍•ᴗ•◍)❤</p>
		</c:if>
		<c:if test="${!empty list }">
	<c:forEach var="vo" items="${list }">
			<div class="card bg-white border border-light p-4 mb-4">
				<div class="d-flex justify-content-between align-items-center mb-3">
					<div>
						<ul class="list-unstyled d-flex mt-1 mb-0">
							<li class="list-item small mr-3">${vo.nickname }</li>
							<li class="list-item small">${vo.rRegdate }</li>
						</ul>
					</div>
					<div class="d-flex justify-content-end">
						<span class="d-flex justify-content-center"> 
						<c:if test="${vo.rRate eq 5}">
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
						</c:if>
						<c:if test="${vo.rRate eq 4}">
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star far text-gray mr-2"></i> 
						</c:if>
						<c:if test="${vo.rRate eq 3}">
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star far text-gray mr-2 "></i> 
							<i class="star fa-star far text-gray mr-2"></i> 
						</c:if>
						<c:if test="${vo.rRate eq 2}">
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star far text-gray mr-2 "></i> 
							<i class="star fa-star far text-gray mr-2"></i> 
							<i class="star fa-star far text-gray mr-2"></i> 
						</c:if>
						<c:if test="${vo.rRate eq 1}">
							<i class="star fa-star fas text-warning mr-2"></i> 
							<i class="star fa-star far text-gray mr-2 "></i> 
							<i class="star fa-star far text-gray mr-2 "></i> 
							<i class="star fa-star far text-gray mr-2 "></i> 
							<i class="star fa-star far text-gray mr-2"></i> 
						</c:if>
						</span>
					</div>
				</div>
					<c:if test="${!empty vo.rUploadname }">
						<div><img src="<c:url value='/resources/file_upload/${vo.rUploadname }'/> " alt=""></div>
					</c:if>
				<textarea readonly>${vo.rContent }</textarea>
			</div>
	</c:forEach>
	<c:if test="${mId !=null }">
		<div class="row">
		<div class="col-lg-12 mb-5" >
			<div
				class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">
				<div style="text-align: center;">
					<nav aria-label="Page navigation example">
						<ul class="pagination pagination-sm">
					<!-- 이전블럭 -->
					<c:if test="${pagingInfo.firstPage>1 }">
							<li class="page-item">
					<a class="page-link"  id="backpage"
					<%-- href="<c:url value='/class/detail?cNo=${param.cNo }&categoryName=${param.categoryName }&hNo=${param.hNo }&currentPage=${pagingInfo.firstPage -1 }'/> " --%>
					>
					<i
									class="fas fa-angle-double-left"></i></a></li>
					</c:if>
					<!-- 페이징처리시작 -->
					<c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
					<c:if test="${i==pagingInfo.currentPage }">
							<li class="page-item"><a class="page-link"
									style="background-color: #9FB9AE; color: #ffffff;" id="pagelinknum"
									<%-- href="<c:url value='/class/myclass?currentPage=${i}" onclick="pageFunc(${i})'/> " --%>
									>${i }</a>
							</li>
					</c:if>
					<c:if test="${i!=pagingInfo.currentPage }">
							<li class="page-item"><a class="page-link"  id="pagelinknum"
								<%-- 	href="<c:url value='/class/myclass?currentPage=${i}" onclick="pageFunc(${i})'/> " --%>
									>${i }</a>
							</li>
					</c:if>		
					<%-- 		<li class="page-item" >
					<a class="page-link" id="pagelinknum"
					href="<c:url value='/class/detail?cNo=${param.cNo }&categoryName=${param.categoryName }&hNo=${param.hNo }&currentPage=${i}" onclick="pageFunc(${i})'/> "
					>${i }</a>
					</li> --%>
					</c:forEach>
					<!-- 다음블럭으로 이동 -->
					<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
							<li class="page-item" >
					<a class="page-link" id="nextpage"
					<%--  href="<c:url value='/class/detail?cNo=${param.cNo }&categoryName=${param.categoryName }&hNo=${param.hNo }&currentPage=${pagingInfo.lastPage +1 }'/> " --%>
					 >
					<i class="fas fa-angle-double-right"></i></a></li>
					</c:if>
						</ul>
					</nav>
				</div>

			</div>
		</div>
	</div>
	</c:if>
		</c:if>
</form>
