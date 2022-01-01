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
							$('#message').css('color', 'green');
							str="늘찬님 안녕하세요!";
							$('#chkId').val('Y');
						}else{
							str="가입하신 이메일이 맞나요?";
							$('#message').css('color', 'red');
							$('#chkId').val('N');
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
				$('#message').html('가입하신 이메일이 맞나요?');
				$('#chkId').val('N');
			}
		});
		var passwordRule = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*-])[a-zA-Z0-9!@#$%^&*-]{8,20}$/;
		
		$('#signup').submit(function(){
			var pwd = $('#newPassword').val();
			if($('#mId').val().length<1){
				alert('아이디를 입력하세요.');
				$('#mId').focus();
				event.preventDefault();
			}else if($('#chkId').val()!='Y'){
				alert('존재하지 않는 이메일입니다.');
				$('#mId').focus();
				event.preventDefault();
			}else if($('#password').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#password').focus();
				event.preventDefault();
			}else if($('#newPassword').val().length<1){
				alert('변경할 비밀번호를 입력하세요');
				$('#newPassword').focus();
				event.preventDefault();
			}else if($('#newPassword').val().length>=10&&!passwordRule.test(pwd)){
				alert('숫자, 영문자, 특수문자(!@#$%^&*-)를 포함한 10~20자리여야 합니다.');
				$('#newPassword').focus();
				event.preventDefault();
			}else if($('#password_confirm').val().length<1){
				alert('2차 비밀번호를 입력하세요');
				$('#password_confirm').focus();
				event.preventDefault();
			}else if($('#newPassword').val()!=$('#password_confirm').val()){
				alert('비밀번호 확인이 일치하지 않습니다!');
				$('#password_confirm').focus();
				event.preventDefault();
			}		
		});
		$('#newPassword').keyup(function(){
			var pwd = $(this).val();
			if(passwordRule.test(pwd) && pwd.length>=10){
				$('#message2').css('color', 'green');
				$('#message2').html('변경가능한 비밀번호입니다.');
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
			if($('#newPassword').val()!=$('#password_confirm').val()){
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
	});
	
</script>

        <!-- Section -->
        <section class="min-vh-100 d-flex align-items-center overlay-soft-dark section-image py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang3.png">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                            <h1 class="mb-0 h3">임시비밀번호를 새로 발급받으셨군요.&nbsp;
                            지금 바로 비밀번호를 변경하세요!</h1>
                        </div>
                    </div>
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <form id ="signup" method="post" action="<c:url value='/member/editPwd'/> ">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputIcon4">아이디(이메일)</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="mId" class="form-control" id="mId" placeholder="임시비밀번호를 발급받은 계정을 입력하세요." type="text" aria-label="email adress">
                                        <input type ="hidden" name="chkId" id="chkId">
                                        <input type="hidden" name="snsCheck" id="snsCheck" value="n" >
                                    </div>
                                    <div>
                                    	<span id="message" style="visibility:hidden">아이디를 입력하세요.</span>
                                    </div>
                                
                                <!-- End of Form --> 
                                <!-- Form -->
                                <div class="form-group">
                                        <label for="password">임시비밀번호</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                            </div>
                                            <input name ="pwd" class="form-control" id="password" placeholder="임시 비밀번호를 입력하세요." type="password" aria-label="Password" >
                                        </div>
                                    
                                 </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="newPassword">새 비밀번호</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-star"></i></span>
                                            </div>
                                            <input class="form-control" name="newPassword" id="newPassword" placeholder="새로운 비밀번호를 입력하세요." type="password" aria-label="Password" >
                                        </div>
                                        <div>
                                    		<span id="message2" style="visibility:hidden">비밀번호를 입력하세요.</span>
                                    	</div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    	
                                        <label for="password_confirm">새 비밀번호 확인</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-star"></i></span>
                                            </div>
                                            <input class="form-control" id="password_confirm" placeholder="비밀번호 확인을 입력하세요." type="password" aria-label="Password" >
                                        </div>
                                        <div>
                                    		<span id="message3" style="visibility:hidden">비밀번호를 입력하세요.</span>
                                    	</div>
                                    </div>
                                    <!-- End of Form -->
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">비밀번호 변경하기!</button>
                            </form>
                            <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    <a href="<c:url value='/login/login' /> " class="font-weight-bold">나중에 변경하고 우선 로그인하겠습니다.</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
<%@ include file="memberBottom.jsp" %>