<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<br>
<br>
<br>
<br>
<br>
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
<!-- 유효성 검사 -->
<script type="text/javascript">
	$(function(){
		$('form[name=frmRCwrite]').submit(function(){
			$('.infobox').each(function(idx, item){
				if($(this).val().length<1){
					alert($(this).prev().html() + "을(를) 입력하세요");
					$(this).focus();
					event.preventDefault();
					return false;  //each 탈출
				}
			});
		});
		
		$('#btList').click(function(){
			location.href="<c:url value='/recommendation/recommendList'/>";	
		});
		
	});
</script>
<!-- 유효성 검사 -->
<div class=container>
	<div class="card border-light p-md-2">
		<div class="card-body p-4">
			<form name="frmRCwrite" method="post" enctype="multipart/form-data"
				action="<c:url value='/recommendation/recommendWrite'/> ">
				<input type="text" name="groupNo" value="${vo.recoNo }" />
				<input type="text" name="step" value="${vo.step }" />
				<input type="text" name="sortNo" value="${vo.sortNo }" />
				
				<div class="row">
					<div class="col-lg-12 mb-5">
						<input type="hidden" name="flag"<%-- <c:choose>
                        <c:when test="${!empty sessionScope.hId }">
                           value="H"
                        </c:when>
                        <c:when test="${!empty sessionScope.mId }">
                           value="M"
                        </c:when>
                        </c:choose>--%>
                        
                        >
						<hr>
						<div
							style="display: block; width: 100%; border-bottom: solid 1px gray">
							<label for="title">제목 : </label> <input type="text" id="title"
								name="recoTitle" class="infobox"
								style="border: none; outline: none;" />
						</div>

						<br>

						<!-- 불편사항 글쓰기 -->
						<div class="form-group" style="display: block; width: 100%;">
							<label for="exampleFormControlTextarea2">불편사항 내용</label>
							<textarea class="ckediter" id="content" name="recoContent"
								rows="20"></textarea>
						</div>
					</div>
				</div>
				<!-- 버튼 가운데 정렬 -->
				<div style="text-align: center;">
					<input value="등록" class="btn mb-2 mr-2 btn-outline-gray"
						type="submit"> <input value="목록"
						class="btn mb-2 mr-2 btn-outline-gray" id="btlist" type="button">
				</div>
			</form>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>

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

			$('#upfile').each(function(idx, item) {
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


