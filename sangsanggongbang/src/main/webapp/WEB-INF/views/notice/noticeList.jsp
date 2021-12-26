<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/top.jsp"%>

<!-- 
2. 호스트, 관리자 나누기
3. 디자인 정리하기
 -->
<!-- Hero -->
<section class="section-header bg-primary text-white pb-7 pb-lg-11">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-4">공지사항</h1>
			</div>
		</div>
	</div>
	<div>
		<p>관리자 or 호스트로 로그인 했을때만 나타나게</p>
		<a href="<c:url value='/notice/noticeWrite'/>">
			<button class="btn mb-2 mr-2 btn-white" type="button">공지사항
				등록하기</button>
		</a>
	</div>
</section>
<section class="section section-lg line-bottom-light">
	<div class="container mt-n8 mt-md-n9 mt-lg-n12 z-2">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<c:if test="${!empty list }">
					<c:forEach var="list" items="${list }">
						<div class="card bg-white border-light p-3 rounded">
							<a
								href="<c:url value='/notice/noticeDetail?noticeNo=${list.noticeNo }'/>">
								${list.noticeTitle } </a>
							<div class="card-body p-0 pt-4">
								<a href="./blog-post.html" class="h4"></a>
								<div class="d-flex align-items-center my-4">
									<img class="avatar avatar-sm rounded-circle"
										src="<c:url value='/resources/assets/img/team/profile-picture-2.jpg'/>"
										alt="Neil avatar">
									<h3 class="h6 small ml-2 mb-0">
										<fmt:formatDate value="${list.noticeRegdate }"
											pattern="yyyy-MM-dd" />
									</h3>
								</div>
								<p class="mb-0">${list.noticeContent }</p>
							</div>
						</div>
						<br>
					</c:forEach>
				</c:if>
			</div>


			<div class="d-flex justify-content-center w-100 mt-5">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${pagingInfo.firstPage>1 }">
							<li class="page-item"><a class="page-link"
								href="<c:url value='/notice/noticeList?currentPage=${pagingInfo.firstPage-1}'/>">Previous</a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${pagingInfo.firstPage}"
							end="${pagingInfo.lastPage }">
							<c:if test="${i==pagingInfo.currentPage }">
								<li class="page-item active"><a class="page-link" href="#">${i }</a>
							</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">
								<li class="page-item"><a class="page-link"
									href="<c:url value='/notice/noticeList?currentPage=${i}'/>">
										${i }</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
							<li class="page-item"><a class="page-link"
								href="<c:url value='/notice/noticeList?currentPage=${pagingInfo.lastPage+1}'/>">Next</a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</section>
</main>

<%@ include file="../inc/bottom.jsp"%>
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
</script>
</body>
</html>