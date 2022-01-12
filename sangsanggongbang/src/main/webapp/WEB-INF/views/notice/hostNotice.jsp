<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>




	<section class="section-header mt-2">
	<div class="section section-lg bg-soft pt-0" id="hInotice" style="text-align: center;">

		<div class="container mt-n8 mt-md-n9 mt-lg-n12 z-2 pb-0">
			<div>
				<div class="col-12 col-md-12 col-lg-12 mb-4 mb-lg-5" id="noticeMain"
					style="margin-top: 225px;">
					<c:if test="${!empty list }">
						<c:forEach var="list" items="${list }">
							<div class="card bg-white border-light p-3 rounded" style="max-Width: 66.66666%;margin-left: 5%;">
								<a
									href="<c:url value='/notice/noticeDetail?noticeNo=${list.noticeNo }'/>">
									${list.noticeTitle } <c:if test="${!empty sessionScope.adId }">(${list.noticeFlag })</c:if>
								</a>
								<div class="card-body p-0 pt-4">
									<a href="./blog-post.html" class="h4"></a>
									<div class="d-flex align-items-center my-4" style="margin-left: 56px;">
										<img class="avatar avatar-sm rounded-circle"
											src="<c:url value='/resources/assets/img/team/profile-picture-2.jpg'/>"
											alt="">
										<h3 class="h6 small ml-2 mb-0">
											<fmt:formatDate value="${list.noticeRegdate }"
												pattern="yyyy-MM-dd" />
										</h3>
										&emsp;<span>조회수 : ${list.noticeReadcount }</span>
									</div>
									<c:if test="${fn:length(list.noticeContent)>150 }">
									${fn:substring(list.noticeContent,0,150) }...
								</c:if>
									<c:if test="${fn:length(list.noticeContent)<=150 }">
										<p class="mb-0">${list.noticeContent }</p>
									</c:if>
								</div>
							</div>
							<br>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</section>


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
