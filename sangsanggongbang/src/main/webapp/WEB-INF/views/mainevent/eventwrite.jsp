<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../inc/top.jsp" %>
<br><br><br>
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
			<form name="frmEwrite" method="post" enctype="multipart/form-data"
				action="<c:url value='/mainevent/eventwrite'/> ">

				<div class="row">
					<div class="col-lg-12 mb-5">
						<div
							style="display: block; width: 100%; border-bottom: solid 1px gray">
							<label for="title">제목 </label> <input type="text" id="title"
								name="newsTitle" class="infobox"
								style="border: none; outline: none;" />
						</div>

						<div>
				            <label for="upfile">대표이미지</label>
					        <input type="file" name="upfile" id="upfile">
				        </div>
						

						<!-- 이벤트 글쓰기 -->
						<div class="form-group" style="display: block; width: 100%;">
							<label for="exampleFormControlTextarea2">이벤트 내용</label>
							<textarea class="ckediter" id="content" name="newsContent"
								rows="20"></textarea>
						</div>
					</div>
				</div>

				<input value="등록" class="btn mb-2 mr-2 btn-outline-gray"
					type="submit"> 
					<input value="목록"
					class="btn mb-2 mr-2 btn-outline-gray" id="btlist" type="button">

			</form>
		</div>
	</div>
	<script type="text/javascript">
		CKEDITOR.replace('content');
		CKEDITOR.on('dialogDefinition', function (ev) {

            var dialogName = ev.data.name;

            var dialog = ev.data.definition.dialog;

            var dialogDefinition = ev.data.definition;

            if (dialogName == 'image') {

                dialog.on('show', function (obj) {

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
				$('.ckediter').each(function(idx, item) {
					if ($(this).val().length < 1) {
						alert($(this).prev().html() + "을 입력하세요");
						$(this).focus();
						event.preventDefault();
						return false; //each 탈출
					}
	
				});
				
			});
			

			$('#btlist').click(function() {
				location.href = "<c:url value='/mainevent/eventlist'/>";
			});

		});
	
		$(function(){ 
			var privacy_editor = CKEDITOR.replace("termsContent", {filebrowserUploadUrl: '${contextPath}/privacies/imgUpload'}); 
			$("#privacyRegit").click(function(){ 
				privacyRegit(privacy_editor); 
			}); 
	    }); 
		function privacyRegit(privacy_editor){ 
			var category = $('input[name=category]').val(); 
			var version = $("#version").val(); 
			var postAt = $("#postAt").val(); 
			if(version.trim() == ''){ 
				alert("버전을 입력해주세요."); 
				return false; 
			} 
			if(postAt.trim() == ''){ 
				alert("게시일을 선택해주세요."); 
				return false; 
			} 
			if(privacy_editor.getData().trim() == ''){ 
				alert("내용을 입력해주세요."); 
				return false; 
			} 
			$("#privacyDto").submit(); 
		}
		
		
	</script>
<%@include file="../inc/bottom.jsp" %>