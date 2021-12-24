<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../member/memberTop.jsp" %>


        <!-- Section -->
        <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                            <h1 class="mb-0 h3">상상공방에 오신 것을 환영합니다!</h1>
                        </div>
                    </div>
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <form name ="login" id="login" method="post" action="<c:url value='/login/loginSubmit'/> ">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="email">아이디(이메일)</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="mId" type="text" aria-label="email address" class="form-control" id="email" 
                                        <c:if test="${!empty cookie.ck_userid }">
                                        	value="${cookie.ck_userid.value }"
                                        </c:if>
                                        <c:if test="${empty cookie.ck_userid }">
	                                        placeholder="example@company.com" 
                                        </c:if>
                                        >
                                        <input type="hidden" name="snsCheck" id="snsCheck" value="n" >
                                    </div>
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
                                            <input name="pwd" class="form-control" id="password" placeholder="Password" type="password" aria-label="Password" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <div class="form-check">
                                            <input class="form-check-input" name = "remember" type="checkbox"  id="remember"
                                            <c:if test="${!empty cookie.ck_userid }">
												checked="checked"
											</c:if>
											>
                                            <label class="form-check-label" for="remember">
                                              아이디 저장하기
                                            </label>
                                        </div>
                                        <div><a href="./forgot-password-email.html" class="small text-right">비밀번호를 잊으셨어요?</a></div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">로그인</button>
                            </form>
                            <div class="mt-3 mb-4 text-center">
                                <span class="font-weight-normal">SNS 로그인하기</span>
                            </div>
                            <div class="btn-wrapper my-4 text-center">
                                <!-- <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                    <span aria-hidden="true" class="fab fa-facebook-f"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                    <span aria-hidden="true" class="fab fa-twitter"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook" type="button" aria-label="github button" title="github button">
                                    <span aria-hidden="true" class="fab fa-github"></span>
                                </button> -->
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
														userId = kakao_account.email;
														document.getElementById('email').value=userId;
														document.getElementById('password').value="temppassword";
														document.getElementById('snsCheck').value="y";
														console.log(kakao_account);
														document.getElementById('login').submit();
													}
												});
											}
											
										});
									}
								</script>
                            </div>
                            <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    아직 계정이 없으세요?
                                    <a href="<c:url value='/member/register' /> " class="font-weight-bold">계정 만들러가기</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
<%@ include file="../member/memberBottom.jsp" %>