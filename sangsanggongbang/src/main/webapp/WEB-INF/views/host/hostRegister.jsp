<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../member/memberTop.jsp" %>
 <!-- Section -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
<script>
	
	$(function(){
		$('#hId').keyup(function(){
			var id =$('#hId').val();
			if(validate_userid(id) && id.length>=10){
				$.ajax({
					url:"<c:url value='/host/ajaxDuplicate'/>",
					type:"post",
					data:"hId="+id,
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
		$('#hBankName').focus(function(){
			var id =$('#hId').val();
			if(validate_userid(id) && id.length>=10){
				$.ajax({
					url:"<c:url value='/host/ajaxDuplicate'/>",
					type:"post",
					data:"hId="+id,
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
		
		$('#terms3').click(function(){
			open("<c:url value='/member/terms2'/>", "term2", "width=1600, height=1800px, left=0, top=0, resizable=yes, location=yes")
		});
		
		$('#additional').submit(function(){
			var pwd = $('#hPwd').val();
			var id = $('#hId').val();
			
			if($('#hId').val().length<1){
				alert('아이디를 입력하세요.');
				$('#hId').focus();
				event.preventDefault();
			}else if(!validate_userid(id)){
				alert('아이디는 이메일 형식으로만 가능합니다.');
				$('#hId').focus();
				event.preventDefault();
			}else if($('#hPwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#hPwd').focus();
				event.preventDefault();
			}else if($('#hPwd').val().length>=10&&!passwordRule.test(pwd)&& $('#hPwd').val()!=='temppassword'){
				alert('비밀번호는 숫자, 영문자, 특수문자(!@#$%^&*-)를 포함한 10~20자리여야 합니다.');
				$('#hPwd').focus();
				event.preventDefault();
			}else if($('#hPwd2').val().length<1){
				alert('2차 비밀번호를 입력하세요');
				$('#hPwd2').focus();
				event.preventDefault();
			}else if($('#hPwd').val()!=$('#hPwd2').val()){
				alert('비밀번호 확인이 일치하지 않습니다!');
				$('#hPwd2').focus();
				event.preventDefault();
			}else if ($('#hName').val().length<1){
				alert('성명을 입력해주세요.');
				$('#hName').focus();
				event.preventDefault();
			}else if ($('#hNickname').val().length<1){
				alert('닉네임을 입력하세요.');
				$('#hNickname').focus();
				event.preventDefault();
			}else if (!validate_phone($('#hPhone').val())){
				alert('전화번호는 숫자만 가능합니다.');
				$('#hPhone').focus();
				event.preventDefault();
			}else if ($('#hPhone').val().length<11){
				alert('전화번호 입력을 완료해주세요.');
				$('#hPhone').focus();
				event.preventDefault();
			}else if($('#hBday').val().length!=6){
				alert('생년월일 입력을 완료해주세요.');
				$('#hBday').focus();
				event.preventDefault();
			}else if (!validate_phone($('#hBday').val())){
				alert('생년월일은 숫자만 입력가능합니다.');
				$('#hBday').focus();
				event.preventDefault();
			}else if ($('#zipcode').val().length<1){
				alert('우편번호를 검색해주세요.');
				$('#zipcode').focus();
				event.preventDefault();
			}else if ($('#address').val().length<1 ){
				alert('우편번호 검색 시 주소는 자동으로 입력됩니다.');
				$('#address').focus();
				event.preventDefault();
			}else if ($('#hAddressDetail').val()<1){
				alert('상세주소를 입력하세요.');
				$('#hAddressDetail').focus();
				event.preventDefault();
			}else if ($('#hBankName').val()<1){
				alert('정산계좌 은행을 선택하세요.');
				$('#hBankName').focus();
				event.preventDefault();
			}else if ($('#hAccount').val()<1){
				alert('정산계좌를 입력하세요.');
				$('#hAccount').focus();
				event.preventDefault();
			} else if(!$('#termChk2').is(':checked')){
				alert('늘솜 이용약관에 동의해야합니다.');
				$('#termChk2').focus();
				event.preventDefault();
			}else if($('#chkId').val()!='Y'){
				alert('중복된 아이디입니다. 다른 아이디를 입력하세요.');
				$('#hId').focus();
				event.preventDefault();
			}
		});
		var passwordRule = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*-])[a-zA-Z0-9!@#$%^&*-]{8,20}$/;
		
		$('#hPwd').keyup(function(){
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
		$('#hPwd2').keyup(function(){
			var pwd2 = $(this).val();
			if($('#hPwd2').val()!=$('#hPwd').val()){
				$('#message3').css('visibility', 'visible');
				$('#message3').css('color', 'red');
				$('#message3').html('2차 비밀번호가 일치하지 않습니다.');
			}else{
				$('#message3').css('color', 'green');
				$('#message3').html('2차 비밀번호가 일치합니다.');
			}
		});
		
	});
	
	function validate_userid(id){
		var pattern = new RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i);
		return pattern.test(id);
	}
	
	function validate_phone(tel){
		var pattern = new RegExp(/^[0-9]*$/g);
		
		return pattern.test(tel);
	}
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#address").value = data.address
        }
    }).open();
}
var InputImage = 
	 (function loadImageFile() {
	    if (window.FileReader) {
	        var ImagePre; 
	        var ImgReader = new window.FileReader();
	        var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i; 
	 
	        ImgReader.onload = function (Event) {
	            if (!ImagePre) {
	            	  var newPreview = document.getElementById("imagePreview");
		              var older = document.getElementById("older");
		              ImagePre = new Image();
		              ImagePre.style.width = "127.99px";
		              ImagePre.style.height = "127.99px"; 
		              newPreview.removeChild(older);
		              newPreview.appendChild(ImagePre);
		              ImagePre.className = "card-img-top rounded-circle border-white";
	            }
	            ImagePre.src = Event.target.result;
	        };
	 
	        return function () {
	            var img = document.getElementById("upfile").files;
	           
	            if (!fileType.test(img[0].type)) { 
	             alert("이미지 파일을 업로드 하세요"); 
	             return; 
	            }
	            
	            ImgReader.readAsDataURL(img[0]);
	        }
	    }
		document.getElementById("imagePreview").src = document.getElementById("upfile").value;
	})();

</script>
	<section class="min-vh-100 d-flex section-image py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang3.png" style="width: 50%; float: left" >
			<div class="col-12" style="width: 100%; height: 70px; background-color: #82AFC5; opacity: 0.9;">
				<div class="collapse-brand" style="margin-top: 22px; margin-left: 45px; float: left;">
					<a
						href="${pageContext.request.contextPath }/host/hostInfo">
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
      
       <!-- Section -->
     <section class="min-vh-100 d-flex align-items-center section-image py-5 py-lg-0" style="width: 50%; background-color: #82AFC5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-3 mt-md-0 text-white" >
                            <h1 class="mb-0 h3">늘솜 계정을 생성하시고 수익을 창출해보세요!</h1>
                        </div>
                    </div>
                   
                    <div class="col-10 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-580">
                            <form id ="additional" method="post" enctype="multipart/form-data" action="<c:url value='/host/hostRegister'/> " >
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputIcon4">아이디(이메일)</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input type ="hidden" name="chkId" id="chkId" value="N">
                                        <input name="hId" class="form-control" type="text" id="hId" aria-label="email adress"
                                        <c:if test="${!empty vo.hId }">
                                        	readonly = "readonly"
                                        	value="${vo.hId}"
                                        </c:if>
                                        <c:if test="${empty vo.hId }">
                                        	placeholder = "아이디를 입력하세요."
                                        </c:if>
                                        >
                                        <input name="h_snsCheck" readonly="readonly" class="form-control" id="exampleInputIcon4" type="hidden" aria-label="email adress"
                                        <c:if test="${!empty h_snsCheck}"> 
                                        value="${h_snsCheck}"
                                        </c:if>
                                         <c:if test="${empty h_snsCheck}"> 
                                        value="n"
                                        </c:if>
                                        >
                                    </div>
                                    <div>
                                    	<span id="message" style="visibility:hidden">아이디를 입력하세요.</span>
                                    </div>
                                </div>
                               <c:if test="${pwdInputNecessity=='y' ||empty pwdInputNecessity}">
	                                <!-- Form -->
	                              	<div class="row mb-0">
		                                <div class="col-6">
			                                <div class="form-group">
				                                <label for="hPwd">비밀번호</label>
				                           		<div class="input-group">
					                                <div class="input-group-prepend">
					                                	<span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
					                                </div>
					                            	<input name ="hPwd" class="form-control" id="hPwd" placeholder="비밀번호를 입력하세요." type="password" aria-label="Password" >
			                            		</div>
			                            		<div>
                                    				<span id="message2" style="visibility:hidden">비밀번호를 입력하세요.</span>
                                    			</div>
			                        		</div>
		                                </div>
		                                <div class="col-md-6">
		                                	<div class="form-group">
		                                    	<label for="hPwd2">비밀번호 확인</label>
		                                     	<div class="input-group">
		                                        	<div class="input-group-prepend">
		                                            	<span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
		                                        	</div>
		                                      		<input name ="hPwd2" class="form-control" id="hPwd2" placeholder="2차 비밀번호를 입력하세요." type="password" aria-label="Password">
		                                      	</div>
		                                      	<div>
                                    				<span id="message3" style="visibility:hidden">비밀번호를 입력하세요.</span>
                                    			</div>
		                                  	</div>
		                                 </div>
		                              </div>
		                       </c:if>
                               <c:if test="${pwdInputNecessity=='n' }">
                                   <input name ="hPwd" class="form-control" id="hPwd" type="hidden" aria-label="Password" value="${vo.hPwd }">
                               </c:if>
		                             
                                    <!-- End of Form -->
                              		
                                   
                                    <!-- Form -->
                                   <div class="card border-light p-2" style ="margin-bottom: 10px">
								        <div class="card-body p-2">
								        <div style="float: left; margin-left: 0px; margin-top:0px; " >
								        <input type="hidden" name="memFilename" value="${vo.hFilename }">
								            	<c:if test="${!empty vo.hFilename}">
								            		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
								                			<img src="<c:url value='/resources/file_upload/${vo.hFilename }'/>" style="width: 129px; height:129px;"id="nImg" class="card-img-top rounded-circle border-white" alt="프로필사진">
								                		</div>
								           			 </div>
								           			  <div class="input-group"  style = "text-align: center;">
														  <input type="file" id="upfile" class="form-control " name = "upfile" onchange="InputImage();" style="display: none;" value="${vo.hFilename}">
														  <label class="input-group-text btn btn-outline-primary" for="upfile" style="margin-top: 30px">프로필 사진 업로드하기</label>
														  <input type="hidden" name="memberFilename" value="${vo.hFilename }">
													  </div>
								                </c:if>
								               
								                <c:if test="${empty vo.hFilename }">
								            		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
								                			<img src="${pageContext.request.contextPath }/resources/assets/img/default.png" id="nImg" class="card-img-top rounded-circle border-white" alt="프로필사진">
								                		</div>
								            		</div>
								            		<div class="input-group"  style = "text-align: center;">
														<input type="file" name ="upfile" id="upfile" class="form-control "  onchange="InputImage();" style="display: none;">
														<label class="input-group-text btn btn-outline-primary" for="upfile" style="margin-top: 20px">프로필 사진 업로드하기</label>
													</div>
								                </c:if>
											</div>
										  <div class="col-md-8 mb-3" style = "float: left; margin-left: 10px; margin-top:10px;" >
                                                <div class="form-group">
                                                    <label for="hName">이름</label>
                                                    <div class="input-group">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-id-card"></i></span>
			                                            </div>
                                           				<input name ="hName" class="form-control" id="hName" type="text"  
                                           				<c:if test="${!empty vo.hName}">
                                           					value="${vo.hName}"
                                           				</c:if>
                                           				<c:if test="${empty vo.hName}">
                                           					placeholder="이름을 입력하세요."
                                           				</c:if>
                                           				>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-8" style = "float: left; margin-left: 10px;">
                                                <div class="form-group">
                                                   <label for="hNickname">닉네임</label>
                                                    <div class="input-group">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-smile"></i></span>
			                                            </div>
                                           				<input name ="hNickname" class="form-control" id="hNickname" type="text" 
                                           				<c:if test="${!empty vo.hNickname}">
                                           					value="${vo.hNickname}"
                                           				</c:if>
                                           				<c:if test="${empty vo.hNickname}">
                                           					placeholder="닉네임을 입력해주세요."
                                           				</c:if>
                                           				>
                                            		</div>
                                                </div>
                                            </div>
										</div>
									</div>
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="hPhone">핸드폰번호</label>
                                                    <div class="input-group">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-mobile-alt"></i></span>
			                                            </div>
	                                           	 		<input name ="hPhone" class="form-control" id="hPhone" maxlength="11" type="text"
	                                           	 		<c:if test="${!empty vo.hPhone}">
                                           					 value="${vo.hPhone}"
                                           				</c:if>
                                           				<c:if test="${empty vo.hPhone}">
                                           					placeholder="휴대폰 번호를 입력해주세요. (-제외)" 
                                           				</c:if>
	                                           	 		>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="hBday">생년월일</label>
                                                    <div class="input-group">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>
			                                            </div>
	                                           			 <input name ="hBday" class="form-control" id="hBday" maxlength="6" type="text" 
	                                           			 <c:if test="${!empty vo.hBday}">
                                           					 value="${vo.hBday}"
                                           				 </c:if>
                                           				 <c:if test="${empty vo.hBday}">
                                           					 placeholder="생년월일 6자리를 입력하세요. ex)950720"
                                           				 </c:if>
	                                           			 >
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                     <label for="hZipcode">우편번호</label>
                                                     <div class="input-group">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-compass"></i></span>
			                                            </div>
			                                           	<input name ="hZipcode" class="form-control" id="zipcode" readonly="readonly" placeholder="우편번호를 검색하세요." type="text"  aria-describedby="button-addon2" 
			                                           	<c:if test="${!empty vo.hZipcode}">
                                           					 value="${vo.hZipcode}"
                                           				</c:if>
                                           				<c:if test="${empty vo.hZipcode}">
                                           					 placeholder="우편번호를 검색하세요. ex)950720"
                                           				</c:if>
			                                           	>
			                                           	<button type="button" id="button-addon2" class="btn btn-outline-primary btn-sm" onclick="kakaopost()" >우편번호 검색</button>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                     <label for="hAddress">주소</label>
                                                     <div class="input-group">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-compass"></i></span>
			                                            </div>
                                           			  <input name ="hAddress" class="form-control" id="address" readonly="readonly" type="text" 
                                           			  	<c:if test="${!empty vo.hAddress}">
                                           					value="${vo.hAddress}"
                                           				</c:if>
                                           				<c:if test="${empty vo.hAddress}">
                                           					 placeholder="우편번호 검색시 자동으로 입력됩니다."
                                           				</c:if>
                                           			  >
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <label for="hAddressDetail">상세주소</label>
                                   	<div class="input-group mb-3">
                                		<div class="input-group-prepend">
                                            <span class="input-group-text"><i class="far fa-compass"></i></span>
                                        </div>
                                       	<input name ="hAddressDetail" class="form-control" id="hAddressDetail"  type="text" 
                                       	<c:if test="${!empty vo.hAddressDetail}">
                          					value="${vo.hAddressDetail}"
                          				</c:if>
                          				<c:if test="${empty vo.hAddressDetail}">
                          					 placeholder="상세주소를 입력하세요. ex)대원빌 101호" 
                          				</c:if>
                                       	>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div id="accInput" class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                     <label for="hBankName">정산계좌</label>
                                                     <div class="input-group">
														<div class="input-group">
														<div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-money-check-alt"></i></span>
			                                            </div>
															<select class="custom-select" id="hBankName" name="hBankName">
																<option selected>정산계좌의 은행을 선택하세요.</option>
																<option value="KB국민은행">KB국민은행</option>
																<option value="신한은행">신한은행</option>
																<option value="우리은행">우리은행</option>
																<option value="하나은행">하나은행</option>
																<option value="한국씨티은행">한국씨티은행</option>
																<option value="농협">농협</option>
																<option value="카카오뱅크">카카오뱅크</option>
															</select>
														</div>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                     <label for="hAccount">계좌번호 입력</label>
                                                     <div class="input-group">
	                                                     <div class="input-group-prepend">
				                                            <span class="input-group-text"><i class="fas fa-money-check-alt"></i></span>
				                                        </div>
				                                       	<input name ="hAccount" class="form-control" id="hAccount"  placeholder="정산금액을 받을 계좌를 입력하세요." type="text">
				                                     </div>
												</div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="termChk2">
                                        <label class="form-check-label" for="terms">
                                            <span class="small"><a class="text-secondary" href="#" id="terms3">약관</a>에 동의합니다. </span> 
                                        </label>
                                        <span class="small" style="float: right;"><a class="text-secondary" href="<c:url value='/host/hostIndex'/> " >늘솜 메인 홈페이지로 이동하기</a></span>
                                    </div>
                                <button type="submit" class="btn btn-block btn-primary">늘솜계정 등록하기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<%@ include file="../member/memberBottom.jsp" %>