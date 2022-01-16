<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style type="text/css">
.card.border-light.p-md-2 {
	margin-top: 100px;
}
</style>

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



<div class="card border-light p-md-2">
	<div class="card-body p-4">
		<form name="frmRCwrite" method="post" enctype="multipart/form-data"
			action="<c:url value='/recommendation/recommendUpdate'/> ">
			<input type="hidden" name="recoNo" value="${param.recoNo}">
			<%-- <input type="hidden" name="oldFileName" value="${vo.newsUploadname}"> --%>
			<div class="row">
				<div class="col-lg-12 mb-5">
					<!-- 불편사항 제목 -->
					<div
						style="display: block; width: 100%; border-bottom: solid 1px gray">
						<label for="title">제목 </label> <input type="text" id="title"
							name="recoTitle" class="infobox" value="${vo.recoTitle }"
							style="border: none; outline: none; width: 80%" />
					</div>

					<!-- 불편사항 글쓰기 -->
					<div class="form-group" style="display: block; width: 100%;">
						<label for="exampleFormControlTextarea2">불편사항 내용</label>
						<textarea class="ckediter" id="content" name="recoContent"
							rows="20">${vo.recoContent }</textarea>
					</div>
				</div>
			</div>

			<input value="수정등록" class="btn mb-2 mr-2 btn-outline-gray"
				type="submit"> <input value="목록"
				class="btn mb-2 mr-2 btn-outline-gray" id="btlist" type="button">

		</form>
	</div>
</div>
<script type="text/javascript">
		CKEDITOR.replace('content');

		$(function() {
			$('form[name=frmRCwrite]').submit(function() {
				$('.infobox').each(function(idx, item) {
					if ($(this).val().length < 1) {
						alert($(this).prev().html() + "을 입력하세요");
						$(this).focus();
						event.preventDefault();
						return false; //each 탈출
					}
	
				});
				
			});
			$('#btlist').click(function() {
				location.href = "<c:url value='/recommendation/recommendList'/>";
			});
		});
		
	</script>
<%@include file="../inc/bottom.jsp"%>