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
<br>
<br>
<br>
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
	<div class="container">
		<div class="card-body p-4">
			<form name="frmEwrite" method="post" enctype="multipart/form-data"
				action="<c:url value='/memberInquiry/banWrite'/> ">
				<input type="text" name="mNo" value="${param.mNo}">
				<div style='border: 1px solid black'>
					<div>
						회원 아이디 : <input type="text" name="mId" value="${vo.mId }">
					</div>
					<div>
						회원 이름 : <input type="text" name="mName" value="${vo.mName }">
					</div>
					<div>
						가입일 : <input type="text" name="regdate"
							value='<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd hh:mm:ss" />'>
					</div>
					<div>
						사유 선택 : <select name="bcs">
							<option value="욕설">욕설 (추후 추가해서 넣자)</option>
							<option value="상습미납">상습미납</option>
							<option value="허위정보">허위정보</option>
						</select>
					</div>
					<div>
						<span>상세 내용 : </span>
						<textarea rows="" cols="" name="bc"></textarea>
					</div>
				</div>
				<br>
				<div style="text-align: center;">
					<input value="등록" class="btn mb-2 mr-2 btn-outline-gray"
						type="submit"> <input value="목록"
						class="btn mb-2 mr-2 btn-outline-gray" id="btlist" type="button">
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	CKEDITOR.replace('content');
	CKEDITOR.on('dialogDefinition', function(ev) {

		var dialogName = ev.data.name;

		var dialog = ev.data.definition.dialog;

		var dialogDefinition = ev.data.definition;

		if (dialogName == 'image') {

			dialog.on('show', function(obj) {

				this.selectPage('Upload'); //업로드텝으로 시작

			});

			dialogDefinition.removeContents('advanced'); // 자세히탭 제거

			dialogDefinition.removeContents('Link'); // 링크탭 제거

		}

	});

	$(function() {
		$('form[name=frmEwrite]').submit(function() {
			$('.infobox').each(function(idx, item) {
				if ($(this).val().length < 1) {
					alert($(this).prev().html() + "을 입력하세요");
					$(this).focus();
					event.preventDefault();
					return false; //each 탈출
				}

			});

			/* $('.ckediter').each(function(idx, item) {
				if ($(this).val().length < 1) {
					alert($(this).prev().html() + "을 입력하세요");
					$(this).focus();
					event.preventDefault();
					return false; //each 탈출
				}
			
			}); */

		});

		$('#btlist').click(function() {
			location.href = "<c:url value='/memberInquiry/banList'/>";
		});

	});

	$(function() {
		var privacy_editor = CKEDITOR.replace("termsContent", {
			filebrowserUploadUrl : '${contextPath}/privacies/imgUpload'
		});
		$("#privacyRegit").click(function() {
			privacyRegit(privacy_editor);
		});
	});
	function privacyRegit(privacy_editor) {
		var category = $('input[name=category]').val();
		var version = $("#version").val();
		var postAt = $("#postAt").val();
		if (version.trim() == '') {
			alert("버전을 입력해주세요.");
			return false;
		}
		if (postAt.trim() == '') {
			alert("게시일을 선택해주세요.");
			return false;
		}
		if (privacy_editor.getData().trim() == '') {
			alert("내용을 입력해주세요.");
			return false;
		}
		$("#privacyDto").submit();
	}
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