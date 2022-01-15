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

<section
	class="section-header bg-primary text-white pb-9 pb-lg-12 mb-4 mb-lg-6">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-3">쪽지쓰기</h1>
			</div>
		</div>
	</div>
	<div class="pattern bottom"></div>
</section>
<form method="post" action="<c:url value='/note/noteWrite'/>">
	<c:if test="${!empty sessionScope.mId }">
		<input type="text" id="mNickname" name="mNickname"
			value="${mVo.mNickname }">
	</c:if>
	<c:if test="${!empty sessionScope.hId }">
		<input type="text" id="mNickname" name="mNickname"
			value="${hVo.hNickname }">
	</c:if>
		<c:if test="${!empty sessionScope.mId }">
	<input type="text" id="mId" name="mId" value="${mVo.mId }">
		</c:if>
	<c:if test="${!empty sessionScope.hId }">
		<input type="text" id="hId" name="hId" value="${hVo.hId }">
	</c:if>
	<div class="section section-lg pt-0">
		<div class="container mt-n8 mt-lg-n12 z-2">
			<div class="row justify-content-center">
				<div class="col col-md-10">

					<div class="accordion border-light">
						<div class="col-lg-12 mb-5">
							<div
								class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">
								<div>
									<span>받는사람</span> &nbsp; <input type="checkbox"
										name="selfWrite" id="selfWrite">내게쓰기 <input
										type="text" id="sendPeople" name="rNickname"
										placeholder="닉네임을 입력해주세요" value="" style="width: 350px">
									<br> <br>
									<textarea rows="10" cols="57" name="noteContent"
										id="noteContent" style="resize: none"></textarea>
									<div id="cnt">(0 / 1000)자</div>

									<button class="btn mb-2 mr-2 btn-success" id="noteWrite"
										type="submit">보내기</button>
									<a href="<c:url value='/note/noteList?mId=${param.mId }'/>"><button
											class="btn mb-2 mr-2 btn-success" id="noteWrite"
											type="button">목록</button> </a>
								</div>

								<div
									class="card-body d-flex flex-column justify-content-between col-auto py-4 p-lg-3 p-xl-5">
									<div class="d-flex align-items-center mt-3"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

</main>

<script type="text/javascript">
	$(function() {
		$('#selfWrite').change(function() {
			if ($(this).is(':checked')) {
				userId = $('#mNickname').val();
				$('#sendPeople').val(userId);
			} else {
				$('#sendPeople').val('');
			}
		})
		$('#noteContent').on('keyup', function() {
			$('#cnt').html("(" + $(this).val().length + " / 1000)자");
			if ($(this).val().length > 1000) {
				$(this).val($(this).val().substring(0, 1000));
				$('#cnt').html("(1000 / 1000)자")
				alert("1000자가 넘었습니다.");
			}
		})
	})
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