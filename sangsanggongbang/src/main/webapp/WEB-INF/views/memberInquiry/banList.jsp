<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/new_top_admin.jsp"%>
<style>


a.tip:hover {
	position: relative
}

a.tip span {
	display: none;
}

a.tip:hover span {
	border:  1px solid;
	padding: 5px 20px 5px 5px;
	display: block;
	z-index: 100;
	 background: url(../images/status-info.png) #f0f0f0 no-repeat 100% 5%; 
	left: 0px;
	margin-left: 40px;
	width: 250px;
	position: absolute;
	top: 10px;
	text-decoration: none;
	color:black;
}
</style>
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
				</a><br> <br>
				<table class="table table-hover">
					<tbody>
						<tr>
							<th scope="col">회원 아이디</th>
							<th scope="col">회원 이름</th>
							<th scope="col">제한 사유</th>
							<th scope="col">참여제한일</th>
							<th scope="col">참여제한해제 하기</th>
						</tr>
					</tbody>
					<tbody>
						<c:forEach var="map" items="${bList }">

							<tr>
								<th scope="row">
									<div class="d-flex align-items-center">
										${map['M_ID'] } <span class="badge badge-primary ml-2"></span>
									</div>
								</th>
								<td>
									<div class="d-flex align-items-center">${map['M_NAME'] }</div>
								</td>
								<td>
									<div class="d-flex align-items-center">
										<a href="#" class="tip" style="color:black;"> <span>${map['BC'] }</span>${map['BCS'] }
										</a>
									</div>
								</td>
								<td><fmt:formatDate value="${map['REGDATE'] }"
										pattern="yyyy-MM-dd" /></td>
								<td>
									<div class="d-flex">
										<a id="cancelButton"
											href="<c:url value='/memberInquiry/banDelete?mNo=${map["M_NO"] }'/>">
											<i data-toggle="tooltip" data-placement="top" title="참여제한해제"><img
												src="<c:url value='/resources/assets/img/kjy/release.png'/>"
												style="width: 20px"></i>
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
										<c:if test="${PagingInfo.firstPage>1 }">
											<li class="page-item"><a class="page-link" id=href="<c:url value='/memberInquiry/banList?currentPage=${PagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">Previous</a>
											</li>
										</c:if>
										<c:forEach var="i" begin="${PagingInfo.firstPage}"
											end="${PagingInfo.lastPage }">
											<c:if test="${i==PagingInfo.currentPage }">
												<li class="page-item active"><a class="page-link"
													href="#">${i }</a>
											</c:if>
											<c:if test="${i!=PagingInfo.currentPage }">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/memberInquiry/banList?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
														${i }</a></li>
											</c:if>

										</c:forEach>
										<c:if test="${PagingInfo.lastPage < PagingInfo.totalPage }">
											<li class="page-item"><a class="page-link"
												href="<c:url value='/memberInquiry/banList?currentPage=${PagingInfo.lastPage+1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">Next</a>
											</li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
						<div class="divSearch" style="margin-left: 320px;">
							<form name="frmSearch" method="post"
								action='<c:url value="/memberInquiry/banList"/>'>
								<select name="searchCondition">
									<option value="m_Id"
										<c:if test="${param.searchCondition=='mId' }">            	
            		selected="selected"
            	</c:if>>회원
										아이디</option>
									<option value="m_Name"
										<c:if test="${param.searchCondition=='mName' }">            	
            		selected="selected"
            	</c:if>>회원
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
<%@ include file="../inc/bottom_admin.jsp"%>

<script type="text/javascript">
	$(function() {
		$('#cancelButton').click(function() {
			var result = confirm('해당 회원을 참여제한해제 시키겠습니까?');
			if (result) {
			} else {
				event.preventDefault();
			}
		})
	})
	var str = $(".divSearch option").val();
	if (str != "") {
		$(".divSearch option").prop("selected", true);
	}}
</script>