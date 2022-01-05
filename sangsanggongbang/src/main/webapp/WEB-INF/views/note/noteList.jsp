<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
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
				<h1 class="display-2 mb-3">쪽지함</h1>
				<p class="lead">One place for our legal documentation and
					policies</p>
			</div>
		</div>
	</div>
	<div class="pattern bottom"></div>
</section>
<form method="post" action="" name="frm">
	<div class="section section-lg pt-0">
		<div class="container mt-n8 mt-lg-n12 z-2">
			<div class="row justify-content-center">
				<div class="col col-md-10">
					<a href="<c:url value='/note/noteWrite?mId=${param.mId }'/>">
						<button class="btn mb-2 mr-2 btn-success" id="noteWrite"
							type="button">쪽지쓰기</button>
					</a>
					<button class="btn mb-2 mr-2 btn-success" id="noteSave"
						type="button">보관하기</button>
					<button class="btn mb-2 mr-2 btn-success" id="noteDelete"
						type="button">삭제</button>
					<div class="accordion border-light">
						<div class="col-lg-12 mb-5">
							<div
								class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">
								<table>
									<tr>
										<th><input type="checkbox" id="allCheck"
											value="${map['noteNo'] }"></th>
										<th>보낸사람</th>
										<th>내용</th>
										<th>날짜</th>
									</tr>
									<c:forEach var="map" items="${list }">
										<tr>
											<td><input type="checkbox" id="check" name="noteNo"
												value="${map['noteNo'] }"></td>
											<td>${map['mId'] }</td>
											<td>${map['noteContent'] }</td>
											<td><fmt:formatDate value="${map['noteRegdate']}"
													pattern="yyyy-MM-dd [HH:mm]" /></td>
										</tr>
									</c:forEach>
								</table>
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
	<input type="text" value="${param.mId }" id="id">
</form>
</main>
<script type="text/javascript">
	$(function() {
		$('#allCheck').change(function() {
			if ($(this).is(':checked')) {
				$("input[type=checkbox]").each(function() {
					$(this).prop("checked", true);
				})
			} else {
				$("input[type=checkbox]").each(function() {
					$(this).prop("checked", false);
				})
			}
		})
		$('#check').click(function() {
			if ($('input[name=check]:checked').length == 3) {
				$('#allCheck').prop("checked", true)
			} else {
				$('#allCheck').prop("checked", false)
			}
		})

		$("#noteDelete").click(
				function() {
					$('form[name=frm]').prop('action',
							"<c:url value='/note/noteDelete'/>");
					$('form[name=frm]').submit();
				})

	})
</script>

<%@include file="../inc/bottom.jsp"%>
