<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/top.jsp"%>
<!-- Hero -->
<section class="section-header bg-primary text-white pb-7 pb-lg-11">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-4">블랙리스트</h1>
				<p class="lead d-none d-lg-inline">호스트(가제)님이 처리한 블랙리스트입니다 (관리자 호스트 구분하는 칼럼에 들어갈 것 도 넣어줘야 함)</p>
			</div>
		</div>
	</div> 
</section>
<section class="section section-lg line-bottom-light">
	<div class="container mt-n8 mt-md-n9 mt-lg-n12 z-2">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<c:forEach var="list" items="${list }">
					<div class="card bg-white border-light p-3 rounded">
						<a href="./blog-post.html"> <img
							src="../assets/img/blog/image-2.jpg" class="card-img-top rounded"
							alt="회원 프로필 이미지 들어가는 곳">
						</a>
						<div class="card-body p-0 pt-4">
							<span class="h5">아이디 : ${list.mId }</span>
							<div class="d-flex align-items-center my-4">
								<h3 class="h6 small ml-2 mb-0">
									지정일 : 
									<fmt:formatDate value="${list.regdate }" pattern="yyyy-MM-dd" />
								</h3>
							</div>
							<p class="mb-0">블랙리스트 등록 사유(이건 체크박스로 해서 가저오면 될듯 12-27에 배운 맵으로
								가져오는거)</p>
						</div>
						<a href="<c:url value='/blackList/blackDelete?bno=${list.bno }'/>">
						<button class="btn mb-2 mr-2 btn-dark" type="button"
							id="blackListException" style="width: 190px">블랙리스트에서 제외</button>
							</a>
					</div> 
					<br>  
				</c:forEach>
			</div>
		</div>
		<%-- <div class="d-flex justify-content-center w-100 mt-5">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<c:if test="${pagingInfo.firstPage>1 }">
						<li class="page-item"><a class="page-link"
							href="<c:url value='/blackList/blackList?currentPage=${pagingInfo.firstPage-1}'/>">Previous</a>
						</li>
					</c:if>
					<c:forEach var="i" begin="${pagingInfo.firstPage}"
						end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							<li class="page-item active"><a class="page-link" href="#">${i }</a>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">
							<li class="page-item"><a class="page-link"
								href="<c:url value='/blackList/blackList?currentPage=${i}'/>">
									${i }</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
						<li class="page-item"><a class="page-link"
							href="<c:url value='/blackList/blackList?currentPage=${pagingInfo.lastPage+1}'/>">Next</a>
						</li>
					</c:if>
				</ul>
			</nav>
		</div> --%>
	</div>
</section>
</main>
<%@ include file="../inc/bottom.jsp"%>
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
	$('#blackListException').click(function(){
		var result = confirm('해당 유저를 블랙리스트에서 제외하시겠습니까?');
		if(!result){
			event.preventDefault();
		}
	})
</script>

</body>

</html>