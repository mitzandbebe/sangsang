<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="memberTop.jsp" %>
<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		$('#mId').keyup(function(){
			var id =$('#mId').val();
			if(validate_userid(id) && id.length>=10){
				$.ajax({
					url:"<c:url value='/member/ajaxDuplicate'/>",
					type:"post",
					data:"mId="+id,
					success:function(res){
						var str="";
						if(res){
							$('#message').css('color', 'orange');
							str="중복된 아이디입니다.";
							$('#chkId').val('N');
						}else{
							str="사용가능한 아이디입니다.";
							$('#message').css('color', 'green');
							$('#chkId').val('Y');
						}
						
						$('#message').html(str);
					},
					error:function(xhr, status, error){
						alert("error : "+ error);
					}
				});
			}else{
				$('#message').css('color', 'red');
				$('#message').css('visibility', 'visible');
				$('#message').html('올바른 이메일 형식이 아닙니다.');
				$('#chkId').val('N');
			}
		});
		
		$('#wr_submit').click(function(){
			if(!validate_userid($('#mId').val())){
				alert('아이디는 이메일 형식으로만 가능합니다.');
				$('#mId').focus();
				event.preventDefault();
			}else if($('#chkId').val()!='Y'){
				alert('중복된 아이디입니다. 다른 아이디를 입력하세요.');
				$('#mId').focus();
				event.preventDefault();
			}else if($('#password').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#password').focus();
				event.preventDefault();
			}else if($('#password').val().length>1&&$('#password').val().length<10){
				alert('숫자, 영문자, 특수문자(!@#$%^&*-)를 포함해야 합니다.');
				$('#password').focus();
				event.preventDefault();
			}else if($('#password').val()!=$('#password_confirm').val()){
				alert('비밀번호 확인이 일치하지 않습니다!');
				$('#password_confirm').focus();
				event.preventDefault();
			}else if(!$('#termChk').is(':checked')){
				alert('이용약관에 동의해야합니다.');
				$('#termChk').focus();
				event.preventDefault();
			}		
		});
		$('#password').keyup(function(){
			var pwd = $(this).val();
			if(passwordRule.test(pwd) && pwd.length>=10){
				$('#message2').css('color', 'green');
				$('#message2').html('사용가능한 비밀번호입니다.');
			}else if(!passwordRule.test(pwd)&&pwd.length>=10){
				$('#message2').css('color', 'orange');
				$('#message2').html('숫자, 영문자, 특수문자(!@#$%^&*)를 포함해야 합니다');
			}else{
				$('#message2').css('visibility', 'visible');
				$('#message2').css('color', 'red');
				$('#message2').html('비밀번호 보안수준 : 위험');
			}
			
		});
		$('#password_confirm').keyup(function(){
			var pwd2 = $(this).val();
			if($('#password').val()!=$('#password_confirm').val()){
				$('#message3').css('visibility', 'visible');
				$('#message3').css('color', 'red');
				$('#message3').html('2차 비밀번호가 일치하지 않습니다.');
			}else{
				$('#message3').css('color', 'green');
				$('#message3').html('2차 비밀번호가 일치합니다.');
			}
		});
		
		function validate_userid(id){
			var pattern = new RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i);
			return pattern.test(id);
		}
		var passwordRule = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*-])[a-zA-Z0-9!@#$%^&*-]{8,20}$/;
		
		$('#terms').click(function(){
			open("<c:url value='/member/terms'/>", "term", "width=1600, height=1800px, left=0, top=0, resizable=yes, location=yes")
		});
			
	});
	
</script>

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
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="mId" class="form-control" id="mId" placeholder="example@company.com" type="text" aria-label="email adress">
                                        
                                        <input type ="hidden" name="chkId" id="chkId">
                                        <input type="hidden" name="mFilename" id="mFilename"  >
                                        <input type="hidden" name="snsCheck" id="snsCheck" value="n" >
                                        
                                    </div>
                                    <div>
                                    	<span id="message" style="visibility:hidden">아이디를 입력하세요.</span>
                                    </div>
                                </div>
                                <!-- End of Form --> 
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="password">비밀번호</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                            </div>
                                            <input name ="pwd" class="form-control" id="password" placeholder="Password" type="password" aria-label="Password" required>
                                        </div>
                                        <div>
                                    		<span id="message2" style="visibility:hidden">비밀번호를 입력하세요.</span>
                                    		
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
                                        <div>
                                    		<span id="message3" style="visibility:hidden">비밀번호를 입력하세요.</span>
                                    	</div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="termChk">
                                        <label class="form-check-label" for="terms">
                                            <span class="small"><a class="text-secondary" href="#" id="terms">약관</a>에 동의합니다.</span>
                                        </label>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">계정 생성하기!</button>
                            </form>
                             <div class="mt-3 mb-4 text-center">
                                <span class="font-weight-normal">SNS로 회원가입하기</span>
                            </div>
                            <div class="btn-wrapper my-4 text-center">
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