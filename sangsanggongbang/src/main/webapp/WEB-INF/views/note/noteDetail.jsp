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
				<h1 class="display-2 mb-3">쪽지 상세페이지</h1>
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
					<a href="<c:url value='/note/noteWrite?mId=${vo.mId }'/>">
						<button class="btn mb-2 mr-2 btn-success" id="noteWrite"
							type="button">쪽지쓰기</button>
					</a> <a href="<c:url value='/note/noteBox?mId=${vo.mId }'/>">
						<button class="btn mb-2 mr-2 btn-success" id="noteBox"
							type="button">보관함</button>
					</a>			
					<button class="btn mb-2 mr-2 btn-success" id="noteSave"
						type="button">보관하기</button>
					<button class="btn mb-2 mr-2 btn-success" id="noteDelete"
						type="button">삭제</button>
					<div class="accordion border-light">
						<div class="col-lg-12 mb-5">
							<div	
								class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">
								<section style="width: 100%">
									<div>
										<p>보낸사람 : ${vo.rNickname }</p>
									</div>
									<div>
										<span> 받은시간 : <fmt:formatDate
												value="${vo.noteRegdate }" pattern="yyyy-MM-dd [HH:mm]" />
										</span>
									</div>
									<hr style="background: black">
									<div>
										<p>
										<textarea rows="10" cols="80%" readonly="readonly" style="resize: none; border:0px solid black">${vo.noteContent}</textarea>
										</p>
									</div>
								</section>
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
	<input type="text" value="${vo.mId }" id="id">
</form>


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
