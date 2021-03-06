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
<!-- Hero -->
<section class="section-header bg-primary text-white pb-7 pb-lg-11">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-4">
					<br> <br>Black List
				</h1>

			</div>
		</div>
	</div>
</section>
<section class="section section-lg line-bottom-light">
	<div class="container">
		<div class="row justify-content-center">
			<!-- <div class="col-12 col-md-3 col-lg-4 mb-4 mb-lg-5">  -->
				<!-- 	<div class="col-12"> -->
				<c:forEach var="map" items="${list }">
					<div class="card bg-white border-light p-3 rounded" style="margin:10px;">
						<div style="width: 100px">
							<a href="#"> <img
								src="<c:url value='/resources/assets/img/${map["M_IMG_URL"] }'/>"
								class="card-img-top rounded" alt="회원 프로필 이미지 들어가는 곳">
							</a>
						</div>
						<div class="card-body p-0 pt-4">
							<p class="h5">이름 : ${map['M_NAME'] }</p>
							<span class="h5">아이디 : ${map['M_ID'] } </span>
							<div class="d-flex align-items-center my-4">
								<h3 class="h6 small ml-2 mb-0">
									지정일 :
									<fmt:formatDate value="${map['REGDATE'] }" pattern="yyyy-MM-dd" />
								</h3>
							</div>
						</div>
						<a
							href="<c:url value='/blackList/blackDelete?bno=${map["BNO"] }&mId=${map["M_ID"] }'/>">
							<button class="btn mb-2 mr-2 btn-dark" type="button"
								id="blackListException" style="width: 190px">블랙리스트에서 제외</button>
						</a>
					</div>
					<br>
				</c:forEach>
			</div>
		</div>

	</div>
	<br> <br> <br> <br>
	<div class="d-flex justify-content-center w-100 mt-5"
		style="margin-left: 149px;">
		<nav aria-label="Page navigation example" style="margin-top: -100px;">
			<ul class="pagination" style="margin-left: -150px">

				<c:if test="${pagingInfo.firstPage>1 }">
					<li class="page-item"><a class="page-link"
						href="<c:url value='/blackList/blackList?hId=${sessionScope.hId }&currentPage=${pagingInfo.firstPage-1}'/>">Previous</a>
					</li>
				</c:if>
				<c:forEach var="i" begin="${pagingInfo.firstPage}"
					end="${pagingInfo.lastPage }">
					<c:if test="${i==pagingInfo.currentPage }">
						<li class="page-item active"><a class="page-link" href="#">${i }</a>
					</c:if>
					<c:if test="${i!=pagingInfo.currentPage }">
						<li class="page-item"><a class="page-link"
							href="<c:url value='/blackList/blackList?hId=${sessionScope.hId }&currentPage=${i}'/>">
								${i }</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
					<li class="page-item"><a class="page-link"
						href="<c:url value='/blackList/blackList?hId=${sessionScope.hId }&currentPage=${pagingInfo.lastPage+1}'/>">Next</a>
					</li>
				</c:if>
			</ul>
		</nav>
	</div>
	</div>
</section>
<!-- </main> -->
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
<script src="../assets/js/spaces.js"></script>
<script>
	// here you should load content from an Ajax request and when it
	// loads you can disable the button from loading
	$('#loadOnClick').click(function() {
		$button = $(this);
		$loadContent = $('#extraContent');
		$allLoaded = $('#allLoadedText');
		$button.addClass('btn-loading');
		$button.attr('disabled', true);

		setTimeout(function() {
			$loadContent.show();
			$button.hide();
			$allLoaded.show();
		}, 1500);
	});
	$('#blackListException').click(function() {
		var result = confirm('해당 유저를 블랙리스트에서 제외하시겠습니까?');
		if (!result) {
			event.preventDefault();
		}
	})
</script>

</body>