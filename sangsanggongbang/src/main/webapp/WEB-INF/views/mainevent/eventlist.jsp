<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../inc/new_top_user.jsp"%>

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->
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

<section class="section-header pb-7 bg-primary text-white">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-10 text-center"></div>
		</div>
	</div>
</section>

<!-- 이벤트 목록 테이블로 보여주기 -->
<div class="container">
	<br>
	<br>
	<br>
	<br>
	<form name="frmList">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">✔</th>
					<th scope="col">이벤트제목</th>
					<!-- <th scope="col">이벤트내용</th> -->
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty list }">
					<tr>
						<td colspan="5">데이터가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${!empty list }">
					<!-- 이벤트 내용반복 -->
					<c:forEach var="vo" items="${list }">
						<tr>
							<th scope="row">${vo.newsNo }</th>
							<td><a
								href="<c:url value='/mainevent/eventdetail?newsNo=${vo.newsNo}'/>">
									<div class="d-flex align-items-center">${vo.newsTitle }</div>
							</a></td>
							<%-- 	<td>
							<a href="<c:url value='/mainevent/eventdetail?newsNo=${vo.newsNo}'/>">
								<c:if test="${fn:length(vo.newsContent)>30 }">
									${fn:substring(vo.newsContent ,0,30)}...
								</c:if> 
								<c:if test="${fn:length(vo.newsContent)<=30 }">
									${vo.newsContent}
								</c:if>
							</a>
						</td> --%>
							<td><fmt:formatDate value="${vo.newsRegdate }"
									pattern="yyyy-MM-dd HH:ss" /></td>
						</tr>

					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<!-- 이벤트 글 작성 버튼 -->
		<br>
		<div class="d-flex justify-content-between mt-3" style="margin: auto">
			<input value="이벤트글 작성" class="btn mb-2 mr-2 btn-primary animate-up-2"
				id="btwrite" type="button">
		</div>
		<div class="row">
			<div class="col-lg-12 mb-5">
				<div class="col mt-3 d-flex justify-content-center">
					<div style="text-align: center;">
						<nav aria-label="Page navigation example">
								<br>
							<ul class="pagination">
								<!-- 이전블럭 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<li class="page-item"><a class="page-link"
										href="<c:url value='/mainevent/eventlist?currentPage=${pagingInfo.firstPage -1 }'/> ">
											<i class="fas fa-angle-double-left"></i>
									</a></li>
								</c:if>
								<!-- 페이징처리시작 -->
								<c:forEach var="i" begin="${pagingInfo.firstPage }"
									end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link"
											style="background-color: #9FB9AE; color: #ffffff;"
											href="<c:url value='/mainevent/eventlist?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
									<c:if test="${i!=pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link"
											href="<c:url value='/mainevent/eventlist?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
								</c:forEach>
								<!-- 다음블럭으로 이동 -->
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
									<li class="page-item"><a class="page-link"
										href="<c:url value='/mainevent/eventlist?currentPage=${pagingInfo.lastPage +1 }'/> ">
											<i class="fas fa-angle-double-right"></i>
									</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">
	$(function() {
		$('#btwrite').click(function() {
			location.href = "<c:url value='/mainevent/eventwrite'/>";
		});
	});
</script>

<%@include file="../inc/bottom.jsp"%>
</body>
</html>