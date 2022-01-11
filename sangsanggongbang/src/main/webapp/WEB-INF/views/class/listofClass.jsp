<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../inc/top_host.jsp"%>

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
<div class="container z-2" >
			<div class="row justify-content-center pt-3">
				<div class="col-12 text-center">
					<h3 class="mb-4">클래스 수정을 원하시면 클래스 이름을 선택해 주세요</h3>
				</div>
			</div>
		</div>
<!-- 이벤트 목록 테이블로 보여주기 -->
<div class="container">
	<form name="frmList">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">클래스이름</th>
					<th scope="col">클래스일자</th>
					<th scope="col">클래스시간</th>
					<th scope="col">클래스가격</th>
					<th scope="col">클래스종료여부</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty classlist }">
					<tr>
						<td colspan="5">데이터가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${!empty classlist }">
					<!-- 이벤트 내용반복 -->
					<c:forEach var="map" items="${classlist}">
						<tr>
							<td><a
								href="<c:url value='/class/updateclass?cNo=${map["C_NO"] }'/>">
									<div class="d-flex align-items-center">${map["C_NAME"] }</div>
							</a></td>
							<td><fmt:formatDate value="${map['C_START_TIME'] }"
									pattern="yyyy-MM-dd HH:ss" /></td>
							<td>${map["C_TIME"] } 시</td>
							<td><fmt:formatNumber value="${map['C_PRICE'] }" pattern="#,###" />원</td>
							<td>${map["END_FLAG"] }</td>
						</tr>

					</c:forEach>
				</c:if>
			</tbody>
		</table>


<%-- 		<div class="row">
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
		</div> --%>
	</form>
</div>

<%@include file="../inc/bottom_host.jsp"%>
</body>
</html>