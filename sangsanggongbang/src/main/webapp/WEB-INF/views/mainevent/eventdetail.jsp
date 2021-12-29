<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 탑삽입해야함 -->
<%@include file="../inc/top.jsp" %>
    <main>

        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
    <div class="position-relative">
        <img src="${pageContext.request.contextPath }/resources/assets/img/brand/light-without-letter.svg" alt="Logo loader">
        <img src="${pageContext.request.contextPath }/resources/assets/img/brand/letter.svg" class="rotate-letter" alt="Letter loader">
    </div>
</div>
	<form name="frmEdetail" method="post" enctype="multipart/form-data">
	<input type="hidden" name="oldFileName" value="${vo.newsUploadname}">
        <!-- Hero -->
        <section class="section-header pb-7 bg-primary text-white">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10 text-center">
                        <div class="mb-4">
                            <a href="#" class="badge badge-secondary text-uppercase px-3">Event ${vo.newsNo }</a>
                        </div>
                        <h1 class="display-3 mb-4 px-lg-5">${vo.newsTitle }</h1>
                        <div class="post-meta"> 
                            <span class="post-date mr-3">
								<fmt:formatDate value= "${vo.newsRegdate }" pattern="yyyy/MM/dd HH:ss"/>
							</span> 
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="section section-sm bg-white pt-6">
            <article class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
						${vo.newsContent }
                    </div>
                </div>

            </article>
        </div>
   	<div class="" style="margin-left: 50px;">
			<input value="메인으로 돌아가기"
					class="btn mb-2 mr-2 btn-primary animate-up-2" id="btmain" type="button">	
			<input value="이벤트목록"
					class="btn mb-2 mr-2 btn-primary animate-up-2" id="btlist" type="button">	
			<!-- 관리자세션일때로 한정해놓기 -->
			<input value="이벤트수정"
					class="btn mb-2 mr-2 btn-primary animate-up-2" id="btupdate" type="button">	
			<input value="이벤트삭제"
					class="btn mb-2 mr-2 btn-primary animate-up-2" id="btdelete" type="button">	
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
		$('#btmain').click(function() {
			location.href = "<c:url value='/index'/>";
		});
		$('#btlist').click(function() {
			location.href = "<c:url value='/mainevent/eventlist'/>";
		});
		$('#btupdate').click(function() {
			location.href = "<c:url value='/mainevent/eventupdate?newsNo=${vo.newsNo}'/>";
		});
		$('#btdelete').click(function() {
			location.href = "<c:url value='/mainevent/eventdelete?newsNo=${vo.newsNo}'/>";
		});
	});

</script>
<!-- 푸터삽입해야함 -->
<%@include file="../inc/bottom.jsp" %>
