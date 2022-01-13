<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../member/memberTop.jsp" %>

<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		
		$('#login').submit(function(){
			if($('#hId').val().length < 1){
				alert('아이디를 입력하세요');
				$('#hId').focus();
				event.preventDefault();
			}else if($('#hPwd').val().length < 1){
				alert('비밀번호를 입력하세요.');
				$('#hPwd').focus();
				event.preventDefault();
			}
		});
	});
		
</script>
 <!-- Section -->
        <section class="min-vh-100 d-flex section-image py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang3.png" style="width: 50%; float: left" >
			<div class="col-12" style="width: 100%; height: 70px; background-color: #82AFC5; opacity: 0.9;">
				<div class="collapse-brand" style="margin-top: 22px; margin-left: 45px; float: left;">
					<a
						href="${pageContext.request.contextPath }/resources/index.html">
						<img
						src="${pageContext.request.contextPath }/resources/assets/img/brand/1230_top_light.png"
						height="35" alt="Logo Impact">
					</a>
				</div>
				<div class="text-center text-md-center text-white" style="width: 400px; margin-top: 22px; margin-left: 20px; float: right;">
	            	<h2 class="mb-0 h4">상상공방 늘솜 로그인페이지
	            	</h2>
	            </div>
	       </div>
        </section>
        <section class="min-vh-100 d-flex align-items-center section-image py-5 py-lg-0" style="width: 50%; background-color: #82AFC5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                            <h1 class="mb-0 h3">늘솜님 안녕하세요!
                            </h1>
                        </div>
                    </div>
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <form name ="login" id="login" method="post" action="<c:url value='/host/hostLogin'/> ">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="hId">아이디(이메일)</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="hId" type="text" aria-label="email address" class="form-control" id="hId" 
                                        <c:if test="${!empty cookie.host_userid }">
                                        	value="${cookie.host_userid.value }"
                                        </c:if>
                                        <c:if test="${empty cookie.host_userid }">
	                                        placeholder="example@company.com" 
                                        </c:if>
                                        >
                                       
                                        <input type="hidden" name="h_snsCheck" id="h_snsCheck" value="n" >
                                        <input type="hidden" name="hFilename" id="hFilename" >
                                    </div>
                                     <div><span class="small text-right">(기존 회원 계정으로 로그인 가능합니다.)</span></div>
                                </div>
                                <!-- End of Form -->
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="password">비밀번호</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                            </div>
                                            <input name="hPwd" class="form-control" id="hPwd" placeholder="Password" type="password" aria-label="Password">
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <div class="form-check">
                                            <input class="form-check-input" name = "remember" type="checkbox"  id="remember"
                                            <c:if test="${!empty cookie.host_userid }">
												checked="checked"
											</c:if>
											>
                                            <label class="form-check-label" for="remember">
                                              아이디 저장하기
                                            </label>
                                        </div>
                                        <div><a href="<c:url value='/member/findPwd'/>" class="small text-right">비밀번호를 잊으셨어요?</a></div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-block btn-secondary">로그인</button>
                               
                            </form>
                            
                            <div class="btn-wrapper my-4 text-center">
                                <a href="javascript:kakaoLogin()"><img src="https://www.gb.go.kr/supportRequest/images/certi_kakao_login.png" style="height:60px;width:auto;"></a>
								<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
								<script type="text/javascript">
								var userId ="";
								var userId="";
									//a7349f7993a288fe861d6ebb7abec497
									window.Kakao.init("a7349f7993a288fe861d6ebb7abec497");
									
									function kakaoLogin(){
										window.Kakao.Auth.login({
											scope:'profile_nickname, account_email, gender',
											success:function(authObj){
												console.log(authObj);
												window.Kakao.API.request({
													url:'/v2/user/me',
													success: res=>{
														const kakao_account = res.kakao_account;
														console.log(kakao_account);
														userId = kakao_account.email;
														console.log(kakao_account.profile.profile_image_url);
														document.getElementById('hId').value=userId;
														document.getElementById('hPwd').value="temppassword";
														document.getElementById('h_snsCheck').value="y";
														
														document.getElementById('login').submit();
													}
												});
											}
											
										});
									}
								</script>
                            </div>
                        	<div class="d-block d-sm-flex justify-content-center align-items-center mt-2">
                        		<span class="font-weight-normal">
                           		상상공방 계정이 없으신가요?
                            	<a href="<c:url value='/host/hostRegister' />" class="font-weight-bold">늘솜계정 만들러가기</a>
                        		</span>
                    		</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<%@ include file="../member/memberBottom.jsp" %>
