<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<script type="text/javascript"
	src="<c:url value='/resources/ckeditor/ckeditor.js'/> "></script>
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
<div class="container">
	<div class="row"> 
		<div class="col-12">
			<div class="col-12">
				<br> <br> <br> <br> <a
					href="<c:url value='/memberInquiry/memberList'/>"><button
						class="btn mb-2 mr-2 btn-dark" type="button">일반회원</button></a> <a
					href="<c:url value='/memberInquiry/hostList'/>"><button
						class="btn mb-2 mr-2 btn-dark" type="button">호스트 회원</button></a> <a
					href="<c:url value='/memberInquiry/banList'/>">
					<button class="btn mb-2 mr-2 btn-dark" type="button">참여제한회원</button>
				</a> <br> <br>
				<table class="table table-hover">
					<tbody>
						<tr>
							<th scope="col">늘찬 아이디</th>
							<th scope="col">늘찬 이름</th>
							<th scope="col">가입일</th>
							<th scope="col">참여제한하기</th>
						</tr>
					</tbody>
					<tbody>
						<c:forEach var="vo" items="${mList }">
							<tr>
								<th scope="row"><div class="d-flex align-items-center">
										${vo.mId } <span class="badge badge-primary ml-2">${vo.mGrade }</span>
									</div></th>
								<td>
									<div class="d-flex align-items-center">${vo.mName }</div>
								</td>
								<td><fmt:formatDate value="${vo.regdate}"
										pattern="yyyy-MM-dd" /></td>
								<td>
									<div class="d-flex" >
										<a id="banbutton"
											href="<c:url value='/memberInquiry/banWrite?mNo=${vo.mNo }'/>">
											<i class="fas fa-trash text-danger mr-2"
											data-toggle="tooltip" data-placement="top" title="참여제한하기"></i>
										</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="row">
					<div class="col-lg-12 mb-5">
						<div class="col mt-3 d-flex justify-content-center">
							<div style="text-align: center;">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<c:if test="${mPagingInfo.firstPage>1 }">
											<li class="page-item"><a class="page-link" id="mPaging"
												href="<c:url value='/memberInquiry/memberList?currentPage=${mPagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">Previous</a>
											</li>
										</c:if>
										<c:forEach var="i" begin="${mPagingInfo.firstPage}"
											end="${mPagingInfo.lastPage }">
											<c:if test="${i==mPagingInfo.currentPage }">
												<li class="page-item active"><a class="page-link"
													href="#">${i }</a>
											</c:if>
											<c:if test="${i!=mPagingInfo.currentPage }">
												<li class="page-item"><a class="page-link" id="mPaging"
													href="<c:url value='/memberInquiry/memberList?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
														${i }</a></li>
											</c:if>
										</c:forEach>
										<c:if test="${mPagingInfo.lastPage < mPagingInfo.totalPage }">
											<li class="page-item"><a class="page-link" id="mPaging"
												href="<c:url value='/memberInquiry/memberList?currentPage=${mPagingInfo.lastPage+1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">Next</a>
											</li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
						<div class="divSearch" style="margin-left: 320px;">
							<form name="frmSearch" method="post"
								action='<c:url value="/memberInquiry/memberList"/>'>
								<select name="searchCondition">
									<option value="m_Id"
										<c:if test="${param.searchCondition=='mId' }">            	
            		selected="selected"
            	</c:if>>늘찬
										아이디</option>
									<option value="m_Name"
										<c:if test="${param.searchCondition=='mName' }">            	
            		selected="selected"
            	</c:if>>늘찬
										이름</option>
								</select> <input type="text" name="searchKeyword" title="검색어 입력"
									value="${param.searchKeyword}"> <input type="submit"
									value="검색">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
	/* 	$('#banbutton').each(function(index) {
			$(this).click(function() {
				var result = confirm('해당 회원을 참여제한시키겠습니까?');
				if (result) {
					
				} else {
					event.preventDefault();
				}
			})
		}) */
	})
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
