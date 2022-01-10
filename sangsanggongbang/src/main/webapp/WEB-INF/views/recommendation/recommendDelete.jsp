<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 탑삽입해야함 -->
<%@include file="../inc/top.jsp" %>
<style type="text/css">
.card.border-light.p-md-2 {
    margin-top: 100px;
}
</style>
    <main>
	<!-- 로딩창 -->
        <div
			class="preloader bg-dark flex-column justify-content-center align-items-center">
			<div class="position-relative">
				<img
					src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_light_without_letter.png"
					height="35" alt="Logo loader"> <img
					src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_letter.png"
					height="35" class="rotate-letter" alt="Letter loader">
			</div>
		</div>
	<!-- 로딩창 -->
<form name="frmDelete" method="post" 
	action="<c:url value='/recommendation/recommendDelete'/>" >
	<input type="hidden" name="recoNo" value="${param.recoNo}">
        <!-- Hero -->
        
        <br>
        <br>
        <br>
        <br>
         <div class="section section-sm bg-white pt-6" style='margin-top:100px;'>
            <article class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
						정말로 <span style="color:red">${param.recoNo }번</span> 글을 삭제할까요?
						<br>
						삭제를 원할 시 <span style="color:red">불편사항 삭제</span> 버튼을 눌러주세요
                    </div>
                </div>

            </article>
        </div>

       
   	<div class="" style="margin-left: 50px; margin-top:25px;">
			<input value="불편사항 목록"
					class="btn mb-2 mr-2 btn-primary animate-up-2" id="btlist" type="button">	
			<input value="해당 글로 돌아가기"
					class="btn mb-2 mr-2 btn-primary animate-up-2" id="btdetail" type="button">	
			<input value="불편사항 삭제"
					class="btn mb-2 mr-2 btn-primary animate-up-2" id="btdelete" type="submit">	
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
			location.href = "<c:url value='/recommendation/recommendList'/>";
		});
		$('#btdetail').click(function() {
			location.href = "<c:url value='/recommendation/recommendDetail?recoNo=${param.recoNo}'/>";
		});
	});

</script>
<!-- 푸터삽입해야함 -->
<%@include file="../inc/bottom.jsp" %>
