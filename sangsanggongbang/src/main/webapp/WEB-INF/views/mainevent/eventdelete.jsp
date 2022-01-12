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
<main>

	<div
		class="preloader bg-dark flex-column justify-content-center align-items-center">
		<div class="position-relative">
			<img
				src="${pageContext.request.contextPath }/resources/assets/img/brand/light-without-letter.svg"
				alt="Logo loader"> <img
				src="${pageContext.request.contextPath }/resources/assets/img/brand/letter.svg"
				class="rotate-letter" alt="Letter loader">
		</div>
	</div>
	<form name="frmDelete" method="post"
		action="<c:url value='/mainevent/eventdelete'/>">
		<input type="hidden" name="newsNo" value="${param.newsNo}"> <input
			type="hidden" name="oldFileName" value="${vo.newsUploadname}">
		<!-- Hero -->
		<section class="section-header pb-7 bg-primary text-white">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-12 col-lg-10 text-center"></div>
				</div>
			</div>
		</section>

		<div class="container">
			<div class="row justify-content-left">
				<div class="col-12 col-lg-8">
					<br> <br> <br> <br>
					<br> <br> <br> <br> ${vo.newsContent }
					<div class="mb-4" style="font-size:15pt;">
						정말로 <span style="color: red; font-size:15pt;">${param.newsNo }번</span> 글을 삭제할까요?😧
						<br> 삭제를 원할 시 <span style="color: red">이벤트삭제</span> 버튼을 눌러주세요
					</div>
					<br> <br> <br> <br>
					<br> <br> <br> <br>
					<div style="text-align: left;">
						<input value="이벤트목록"
							class="btn mb-2 mr-2 btn-primary animate-up-2" id="btlist"
							type="button"> <input value="해당 글로 돌아가기"
							class="btn mb-2 mr-2 btn-primary animate-up-2" id="btdetail"
							type="button">
						<!-- 관리자세션일때로 한정해놓기 -->
						<input value="이벤트삭제"
							class="btn mb-2 mr-2 btn-primary animate-up-2" id="btdelete"
							type="submit">
					</div>
					<br> <br>
				</div>
			</div>
		</div>
	</form>
</main>
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
<script type="text/javascript">
	$(function() {
		$('#btlist').click(function() {
			location.href = "<c:url value='/mainevent/eventlist'/>";
		});
		$('#btdetail')
				.click(
						function() {
							location.href = "<c:url value='/mainevent/eventdetail?newsNo=${param.newsNo}'/>";
						});
	});
</script>
<!-- 푸터삽입해야함 -->
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
