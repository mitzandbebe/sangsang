<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<from name="frmreviewList">
	<!-- 리뷰 내용반복 -->
		<c:if test="${empty list }">
			<p class="h5">소중한 첫 리뷰를 등록해주세요</p>
		</c:if>
		<c:if test="${!empty list }">
	<c:forEach var="vo" items="${list }">
			<div class="card bg-white border border-light p-4 mb-4">
				<div class="d-flex justify-content-between align-items-center mb-3">
					<div>
						<ul class="list-unstyled d-flex mt-1 mb-0">
							<li class="list-item small mr-3">${mId }</li>
							<li class="list-item small">${vo.rRegdate }</li>
						</ul>
					</div>
					<c:if test="${vo.RUploadname eq null }">
						<div><img src="<c:url value='/resources/file_upload/${vo.RUploadname }'/> " alt=""></div>
					</c:if>
					<div class="d-flex justify-content-end">
						<span class="d-flex justify-content-center"> 
						<i class="star fa-star fas text-warning mr-2"></i> 
						<i class="star fa-star fas text-warning mr-2"></i> 
						<i class="star fa-star fas text-warning mr-2"></i> 
						<i class="star fa-star  fas text-warning  mr-2"></i>
						<i class="star far fa-star text-gray"></i>
						</span>
					</div>
				</div>
				<textarea readonly>${vo.rContent }</textarea>
			</div>
	</c:forEach>
	
		<div class="row">
		<div class="col-lg-12 mb-5" >
			<div
				class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">
				<div>
					<nav aria-label="Page navigation example">
						<ul class="pagination pagination-sm">
					<!-- 이전블럭 -->
					<c:if test="${pagingInfo.firstPage>1 }">
							<li class="page-item">
					<a class="page-link" href="<c:url value='/class/review?currentPage=${pagingInfo.firstPage -1 }'/> ">
					<i
									class="fas fa-angle-double-left"></i></a></li>
					</c:if>
					<!-- 페이징처리시작 -->
					<c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
							<li class="page-item">
					<a class="page-link" href="<c:url value='/class/review?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
					</li>
					</c:forEach>
					<!-- 다음블럭으로 이동 -->
					<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
							<li class="page-item">
					<a class="page-link" href="<c:url value='/class/review?currentPage=${pagingInfo.lastPage +1 }'/> ">
					<i
									class="fas fa-angle-double-right"></i></a></li>
					</c:if>
						</ul>
					</nav>
				</div>

			</div>
		</div>
	</div>
		</c:if>
</from>
