<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="memberTop.jsp" %>


        <!-- Section -->
        <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                            <h1 class="mb-0 h3">상상공방에 새로운 늘찬이 되어주세요!</h1>
                        </div>
                    </div>
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <form id ="signup" method="post" action="<c:url value='/member/join'/> ">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputIcon4">아이디(이메일)</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="mId" class="form-control" id="email" placeholder="example@company.com" type="text" aria-label="email adress">
                                        <input type="hidden" name="bday" id="bday"  >
                                        <input type="hidden" name="mNickname" id="mNickname"  >
                                        <input type="hidden" name="mFilename" id="mFilename"  >
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
                                            <input name ="pwd" class="form-control" id="password" placeholder="Password" type="password" aria-label="Password" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="password_confirm">비밀번호 확인</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                            </div>
                                            <input class="form-control" id="password_confirm" placeholder="Confirm password" type="password" aria-label="Password" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="terms">
                                        <label class="form-check-label" for="terms">
                                            <span class="small"><a class="text-secondary" href="./terms.html">약관</a>에 동의합니다.</span>
                                        </label>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">계정 생성하기!</button>
                            </form>
                             <div class="mt-3 mb-4 text-center">
                                <span class="font-weight-normal">SNS로 회원가입하기</span>
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
									//a7349f7993a288fe861d6ebb7abec497
									window.Kakao.init("a7349f7993a288fe861d6ebb7abec497");
									
									function kakaoLogin(){
										window.Kakao.Auth.login({
											scope:'profile_nickname, account_email, gender, birthday, profile_image',
											success:function(authObj){
												console.log(authObj);
												window.Kakao.API.request({
													url:'/v2/user/me',
													success: res=>{
														const kakao_account = res.kakao_account;
														console.log(kakao_account);
														userId = kakao_account.email;
														console.log(userId);
														console.log(kakao_account.profile.profile_image_url);
														
														document.getElementById('email').value=kakao_account.email;
														document.getElementById('bday').value=kakao_account.birthday;
														document.getElementById('mNickname').value=kakao_account.nickname;
														document.getElementById('mFilename').value=kakao_account.profile.profile_image_url;
														document.getElementById('password').value="temppassword";
														document.getElementById('password_confirm').value="temppassword";
														document.getElementById('snsCheck').value="y";
														document.getElementById('signup').submit();
													}
												});
											}
											
										});
									}
								</script>
                            </div>
                            <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    이미 계정이 있으세요?
                                    <a href="<c:url value='/login/login/' /> " class="font-weight-bold">로그인하러가기</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
<%@ include file="memberBottom.jsp" %>