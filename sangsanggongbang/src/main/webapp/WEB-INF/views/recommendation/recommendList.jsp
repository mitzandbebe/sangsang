<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/new_top_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/new_top_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:otherwise> 
</c:choose>
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

<br>
<br>
<br>
<br>

<div class="container">
	<form name="frmList">
		<input type="hidden" name="mId" value="${sessionScope.mId}" /> 
		<input type="hidden" name="hId" value="${sessionScope.hId}" />
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">작성자🙍‍♂️</th>
					<th scope="col">불편사항 제목</th>
					<!-- <th scope="col">불편사항 내용</th> -->
					<th scope="col">작성일</th>
				</tr>
			</thead>
			
			<tbody>
				<c:if test="${empty list }">
					<tr>
					
						<td colspan="5"><hr>데이터가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${!empty list }">
					<!-- 불편사항 내용반복 -->
					<c:forEach var="vo" items="${list }">
						<tr>
							<th scope="row">
							
								<c:if test="${!empty sessionScope.adId }">(${vo.flag } )  
									<c:choose>
										<c:when test="${!empty vo.mId }">
											${vo.mId }
										</c:when>
										<c:when test="${!empty vo.hId }">
											${vo.hId }
										</c:when>
									</c:choose>  
								</c:if>
								<c:if test="${!empty sessionScope.mId }"> 
									<c:choose>
										<c:when test="${vo.flag eq'_RE' }">&ensp;&ensp;ㄴ답변 :  </c:when>
										<c:otherwise>
										${vo.flag }								
										</c:otherwise>
									</c:choose>
								</c:if>
								<c:if test="${!empty sessionScope.hId }"> 
									<c:choose>
										<c:when test="${vo.flag eq'_RE' }">&ensp;&ensp;ㄴ답변 : </c:when>
										<c:otherwise>
											 ${vo.flag }							
										</c:otherwise>
									</c:choose>
								</c:if>
								</th>
							<td><a
								href="<c:url value='/recommendation/recommendDetail?recoNo=${vo.recoNo}'/>">
									<div class="d-flex align-items-center">${vo.recoTitle }</div>
							</a></td>

							<td><fmt:formatDate value="${vo.regdate }"
									pattern="yyyy-MM-dd HH:ss" /></td>
						</tr>

					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<!-- 불편사항 작성 버튼 -->
		<br>
		<c:if test="${empty sessionScope.adId}">
		<div class="d-flex justify-content-between mt-3" style="margin: auto">
			<input value="불편사항 작성" class="btn mb-2 mr-2 btn-primary animate-up-2"
				id="btwrite" type="button">
		</div>
		</c:if>
		<br>
		<div class="row">
			<div class="col-lg-12 mb-5">
				<div class="col mt-3 d-flex justify-content-center">
					<div style="text-align: center;">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<!-- 이전블럭 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<li class="page-item disabled"><a class="page-link"
										href="<c:url value='/recommendation/recommendlist?currentPage=${pagingInfo.firstPage -1 }'/> ">
											<i class="fas fa-angle-double-left"></i>
									</a></li>
								</c:if>
								<!-- 페이징처리시작 -->
								<c:forEach var="i" begin="${pagingInfo.firstPage }"
									end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link" style="background-color:#e4e4e4"
											href="<c:url value='/recommendation/recommendList?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
									<c:if test="${i!=pagingInfo.currentPage }">
										<li class="page-item"><a class="page-link"
											href="<c:url value='/recommendation/recommendList?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
										</li>
									</c:if>
								</c:forEach>
								<!-- 다음블럭으로 이동 -->
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
									<li class="page-item"><a class="page-link"
										href="<c:url value='/recommendation/recommendList?currentPage=${pagingInfo.lastPage +1 }'/> ">
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
			location.href = "<c:url value='/recommendation/recommendWrite'/>";
		});
	});
</script>

<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/bottom_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/bottom.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/bottom_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/bottom.jsp"%>
	</c:otherwise>
</c:choose>
</body>
</html>