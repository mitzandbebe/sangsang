<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top_admin.jsp"  %>
        <!-- Hero -->

<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		
		$('#login').submit(function(){
			if($('#mId').val().length < 1){
				alert('아이디를 입력하세요');
				$('#mId').focus();
				event.preventDefault();
			}else if($('#password').val().length < 1){
				alert('비밀번호를 입력하세요.');
				$('#password').focus();
				event.preventDefault();
			}
		});
	});
		
</script>


        <!-- Section -->
        <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" >
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                            <h1 class="mb-0 h3">관리자 페이지 접속</h1>
                        </div>
                    </div>
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <form name ="login" id="login" method="post" action="<c:url value='/admin/adminLogin'/> ">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="adId">관리자 아이디</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="adId" type="text" aria-label="email address" placeholder="관리자 아이디를 입력하세요." class="form-control" id="adId" 
                                        <c:if test="${!empty cookie.ck_adId }">
                                        	value="${cookie.ck_userid.value }"
                                        </c:if>
                                        >
                                    </div>
                                </div>
                                <!-- End of Form -->
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="adPwd">비밀번호</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                            </div>
                                            <input name="adPwd" class="form-control" id="adPwd" placeholder="관리자 비밀번호를 입력하세요." type="password" aria-label="Password">
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">관리자 로그인</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<%@ include file="../inc/bottom_admin.jsp" %>