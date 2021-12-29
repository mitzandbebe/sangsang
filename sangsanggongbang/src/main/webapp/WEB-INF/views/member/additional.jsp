<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="memberTop.jsp" %>
<script src="https://kit.fontawesome.com/2db6e9a548.js" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$('#pType').change(function(){
			if($('#pType option:selected').val()=='카드'){
				$('#accInput').css({'display':'none'});
				$('#cardInput').css({'display':'flex'});
				$('#cvc').css({'display':'flex'});
			}else{
				$('#cardInput').css({'display':'none'});
				$('#cvc').css({'display':'none'});
				$('#accInput').css({'display':'flex'});
			}
		});
		
		$('#terms2').click(function(){
			open("<c:url value='/member/terms2'/>", "term2", "width=1600, height=1800px, left=0, top=0, resizable=yes, location=yes")
		});
		
		$('#termChk2').click(function(){
			open("<c:url value='/member/terms2'/>", "term2", "width=1600, height=1800px, left=0, top=0, resizable=yes, location=yes")
		});
		
		$('#additional').submit(function(){
			var cardnum = $('#cardnum1').val()+$('#cardnum2').val()+$('#cardnum3').val()+$('#cardnum4').val();
			$('#cardnum').val('cardnum');
			
			if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				event.preventDefault();
			}else if ($('#pwd2').val().length<1){ 
				alert('2차 비밀번호를 확인하세요.');
				$('#pwd2').focus();
				event.preventDefault();
			}else if ($('#pwd').val().length>0&&$('#pwd2').val().length<8){
				alert('비밀번호는 영문, 숫자 포함 8자리 이상입니다. ');
				$('#pwd').focus();
				event.preventDefault();
			}else if($('#pwd').val()!==$('#pwd2').val()){
				alert('2차 비밀번호가 일치하지 않습니다.');
				$('#pwd2').focus();
				event.preventDefault();
			}else if ($('#mName').val().length<1){
				alert('성명을 입력해주세요.');
				$('#mName').focus();
				event.preventDefault();
			}else if ($('#mNickname').val().length<1){
				alert('닉네임을 입력하세요.');
				$('#mNickname').focus();
				event.preventDefault();
			}else if (!validate_phone($('#phone').val())){
				alert('전화번호는 숫자만 가능합니다.');
				$('#phone').focus();
				event.preventDefault();
			}else if ($('#phone').val().length<11){
				alert('전화번호 입력을 완료해주세요.');
				$('#phone').focus();
				event.preventDefault();
			}else if($('#bday').val().length!=6){
				alert('생년월일 입력을 완료해주세요.');
				$('#bday').focus();
				event.preventDefault();
			}else if (!validate_phone($('#bday').val())){
				alert('생년월일은 숫자만 입력가능합니다.');
				$('#cardNum').focus();
				event.preventDefault();
			}else if ($('#zipcode').val().length<1){
				alert('우편번호를 검색해주세요.');
				$('#zipcode').focus();
				event.preventDefault();
			}else if ($('#address').val().length<1 ){
				alert('우편번호 검색 시 주소는 자동으로 입력됩니다.');
				$('#address').focus();
				event.preventDefault();
			}else if ($('#mAddressDetail').val()<1){
				alert('상세주소를 입력하세요.');
				$('#mAddressDetail').focus();
				event.preventDefault();
			}else if ($('#pType option:selected').val()<1){
				alert('결제유형을 입력하세요.');
				$('#pType').focus();
				event.preventDefault();
			}else if ($('#nCard').val()<1){
				alert('결제수단 별칭을 입력하세요.');
				$('#nCard').focus();
				event.preventDefault();
			}else if ($('#bankName').val()<1){
				alert('은행명을 선택하세요.');
				$('#bankName').focus();
				event.preventDefault();
			}else if ($('#accNum').val()<1){
				alert('계좌번호를 입력하세요.');
				$('#accNum').focus();
				event.preventDefault();
			}else if ($('#cardCom option:selected').val()<1){
				alert('카드사를 선택하세요.');
				$('#cardCom').focus();
				event.preventDefault();
			}else if ($('#cardNum').val()!=16){
				alert('카드번호를 완료하세요.');
				$('#accNum').focus();
				event.preventDefault();
			}else if (!validate_phone($('#cardNum').val())){
				alert('카드번호는 숫자만 입력가능합니다.');
				$('#cardNum').focus();
				event.preventDefault();
			}else if ($('#cardNum').val()!=16){
				alert('카드번호를 입력하세요.');
				$('#cardNum').focus();
				event.preventDefault();
			}else if(!$('#terms').is(':checked')){
				alert('이용약관에 동의해야합니다.');
				$('#terms').focus();
				event.preventDefault();
			}else if(!$('#termChk2').is(':checked')){
				alert('이용약관에 동의해야합니다.');
				$('#termChk2').focus();
				event.preventDefault();
			}
		});
		
	});
	
	
	
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

      
       <!-- Section -->
     <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white" >
                            <h1 class="mb-0 h3">부가정보를 입력하고 상상공방의 서비스를 제한없이 이용하세요!</h1>
                        </div>
                    </div>
                   
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-580">
                            <form id ="additional" method="post" enctype="multipart/form-data" action="<c:url value='/member/additional'/> " >
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputIcon4">아이디(이메일)</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input name="mId" readonly="readonly" class="form-control" id="exampleInputIcon4" type="text" aria-label="email adress" value="${cookie.ck_userid.value }">
                                        <input name="snsCheck" readonly="readonly" class="form-control" id="exampleInputIcon4" type="hidden" aria-label="email adress" value="${cookie.snsCheck.value}">
                                    </div>
                                </div>
                                <c:if test="${cookie.snsCheck.value=='y' }">
	                                <!-- Form -->
	                              	<div class="row">
		                                <div class="col-md-6 mb-3">
			                                <div class="form-group">
				                                <label for="password">비밀번호</label>
				                           		<div class="input-group mb-4">
					                                <div class="input-group-prepend">
					                                	<span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
					                                </div>
					                            	<input name ="pwd" class="form-control" id="pwd" placeholder="상상공방에서 사용할 비밀번호를 설정하세요." type="password" aria-label="Password" >
			                            		</div>
			                        		</div>
		                                </div>
		                                <div class="col-md-6 mb-3">
		                                	<div class="form-group">
		                                    	<label for="password">비밀번호 확인</label>
		                                     	<div class="input-group mb-4">
		                                        	<div class="input-group-prepend">
		                                            	<span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
		                                        	</div>
		                                      		<input name ="pwd2" class="form-control" id="pwd2" placeholder="2차 비밀번호를 입력하세요." type="password" aria-label="Password">
		                                      	</div>
		                                  	</div>
		                                 </div>
		                             </div>
                                    <!-- End of Form -->
                               </c:if>
                                    <!-- Form -->
                                    <div class="card border-light p-2" style ="margin-bottom: 20px">
								        <div class="card-body p-2">
								        <div style="float: left; margin-left: 50px; margin-top:15px; " >
								            	<c:if test="${!empty cookie.mFilename}">
								            		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
								                			<img src="${cookie.mFilename.value }" id="nImg" class="card-img-top rounded-circle border-white" alt="프로필사진">
								                		</div>
								           			 </div>
								           			  <div class="input-group mb-3"  style = "text-align: center;">
														  <input type="file" id="inputGroupFile02" class="form-control " name = "mFilename"onchange="InputImage();" style="display: none;" value="${cookie.mFilename.value }">
														  <label class="input-group-text btn btn-outline-primary" for="inputGroupFile02" style="margin-top: 30px">프로필 사진 업로드하기</label>
													  </div>
								                </c:if>
								                <c:if test="${empty cookie.mFilename }">
								            		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
								                			<img src="${pageContext.request.contextPath }/resources/assets/img/default.png" id="nImg" class="card-img-top rounded-circle border-white" alt="프로필사진">
								                		</div>
								            		</div>
								            		<div class="input-group mb-3"  style = "text-align: center;">
														<input type="file" name ="upfile" id="upfile" class="form-control "  onchange="InputImage();" style="display: none;">
														<label class="input-group-text btn btn-outline-primary" for="upfile" style="margin-top: 30px">프로필 사진 업로드하기</label>
													</div>
								                </c:if>
										</div>
										  <div class="col-md-8 mb-3" style = "float: left; margin-left: 60px; margin-top:25px;" >
                                                <div class="form-group">
                                                    <label for="mName">이름</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-id-card"></i></span>
			                                            </div>
                                           				<input name ="mName" class="form-control" id="mName" placeholder="성명" type="text">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 mb-3" style = "float: left; margin-left: 60px;">
                                                <div class="form-group">
                                                    <label for="mNickname">닉네임</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-smile"></i></span>
			                                            </div>
                                           				<input name ="mNickname" class="form-control" id="mNickname" placeholder="닉네임을 입력해주세요." type="text">
                                            		</div>
                                                </div>
                                            </div>
								       </div>
								    </div>
                                    <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-7 mb-3">
                                                <div class="form-group">
                                                    <label for="phone">핸드폰번호</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-mobile-alt"></i></span>
			                                            </div>
	                                           	 		<input name ="phone" class="form-control" id="phone" placeholder="휴대폰 번호를 입력해주세요. (-제외)" maxlength="11" type="text">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-5 mb-3">
                                                <div class="form-group">
                                                    <label for="bday">생년월일</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>
			                                            </div>
	                                           			 <input name ="bday" class="form-control" id="bday" maxlength="6" placeholder="생년월일 6자리를 입력하세요. ex)950720" type="text">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                     <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-5 mb-3">
                                                <div class="form-group">
                                                     <label for="mZipcode">우편번호</label>
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-compass"></i></span>
			                                            </div>
			                                           	<input name ="mZipcode" class="form-control" id="zipcode" readonly="readonly" placeholder="우편번호를 검색하세요." type="text"  aria-describedby="button-addon2">
			                                           	<button type="button" id="button-addon2" class="btn btn-outline-primary" onclick="kakaopost()" >우편번호 검색</button>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 mb-3">
                                                <div class="form-group">
                                                     <label for="mAddress">주소</label>
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-compass"></i></span>
			                                            </div>
                                           			  <input name ="mAddress" class="form-control" id="address" readonly="readonly" placeholder="우편번호 검색시 자동으로 입력됩니다." type="text">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <label for="mAddressDetail">상세주소</label>
                                   	<div class="input-group mb-4">
                                		<div class="input-group-prepend">
                                            <span class="input-group-text"><i class="far fa-compass"></i></span>
                                        </div>
                                       	<input name ="mAddressDetail" class="form-control" id="addressDetail"  placeholder="상세주소를 입력하세요. ex)대원빌 101호" type="text">
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
	                              	<div class="row">
		                                <div class="col-md-6 mb-3">
			                                <div class="form-group">
				                                <label for="password">기본결제수단 등록</label>
				                           		<div class="input-group mb-4">
					                                <div class="input-group-prepend">
		                                          		<span class="input-group-text"><i class="fas fa-money-bill"></i></span>
		                                        	</div>
			                                       	<select class="custom-select" id="pType" name = "pType">
														<option selected>결제수단유형을 선택하세요.</option>
														<option value="카드">카드</option>
														<option value="자동이체">자동이체</option>
													</select>
			                        			</div>
			                        		</div>
		                                </div>
		                                <div class="col-md-6 mb-3">
		                                	<div class="form-group">
		                                    	<label for="payNick">기본결제수단 별칭</label>
		                                     	<div class="input-group mb-4">
		                                        	<div class="input-group-prepend">
		                                            	<span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
		                                        	</div>
		                                      		<input name ="payNick" class="form-control" id="payNick" placeholder="결제수단의 별칭을 입력하세요." type="text">
		                                      	</div>
		                                  	</div>
		                                 </div>
		                            </div>
                                    <!-- End of Form -->
                                   
                                    <!-- Form -->
                                    <div id="accInput" class="row" style="display: none">
                                            <div class="col-md-5 mb-3">
                                                <div class="form-group">
                                                     <label for="mZipcode">자동이체 은행</label>
                                                     <div class="input-group mb-4">
														<div class="input-group mb-3">
														<div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-money-check-alt"></i></span>
			                                            </div>
															<select class="custom-select" id="bankName" name="bankName">
																<option selected value="none">자동이체를 등록할 은행을 선택하세요.</option>
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
                                            <div class="col-md-7 mb-3">
                                                <div class="form-group">
                                                     <label for="accNum">계좌번호 입력</label>
                                                     <div class="input-group mb-4">
	                                                     <div class="input-group-prepend">
				                                            <span class="input-group-text"><i class="fas fa-money-check-alt"></i></span>
				                                        </div>
				                                       	<input name ="accNum" class="form-control" id="accNum"  placeholder="계좌번호를 입력하세요." type="text">
				                                     </div>
												</div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div id="cardInput" class="row" style="display: none">
                                            <div class="col-md-4 mb-3">
                                                <div class="form-group">
                                                     <label for="cardCom">카드사</label>
                                                     <div class="input-group mb-4">
														<div class="input-group mb-3">
														<div class="input-group-prepend">
			                                                <span class="input-group-text"><span class="fas fa-credit-card"></span></span>
			                                            </div>
															<select class="custom-select" id="cardCom" name = "cardCom" value="none">
																<option selected>카드사를 선택하세요.</option>
																<option value="신한">신한</option>
																<option value="삼성">삼성</option>
																<option value="현대">현대</option>
																<option value="KB국민">KB국민</option>
																<option value="우리">우리</option>
																<option value="NH농협">NH농협</option>
																<option value="하나">하나</option>
															</select>
														</div>
														
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 mb-3">
                                                <div class="form-group">
                                                     <label for="cardNum">카드번호</label>
                                                     <div class="input-group mb-3">
														<input type="text" id="cardNum1" class="form-control" maxlength="4" aria-label="Username">
														<span class="input-group-text">-</span>
														<input type="text" id="cardNum2" class="form-control" maxlength="4" aria-label="Server">
														<span class="input-group-text">-</span>
														<input type="text" id="cardNum3" class="form-control" maxlength="4" aria-label="Server">
														<span class="input-group-text">-</span>
														<input type="password" id="cardNum4" class="form-control" maxlength="4" aria-label="Server">
														<input type = "hidden" name = "cardNum" id="cardNum">
													</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form --> 
                                    <!-- Form -->
                                    	<div id="cvc" class="row" style="display: none">
                                            <div class="col-md-7 mb-3">
                                                <div class="form-group">
                                                    <label for="CVC">CVC번호</label>
                                                    <div class="input-group mb-4">
	                                           	 		<input name ="CVC" class="form-control" id="CVC" placeholder="카드 뒷면 CVC번호를 입력하세요." maxlength="3" type="password">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-5 mb-3">
                                                <div class="form-group">
                                                    <label for="cardExp">카드 유효기간</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><span class="fas fa-calendar-alt"></span></span>
			                                            </div>
	                                           			 <input name ="cardExp" class="form-control" id="cardExp" maxlength="5" placeholder="MM/YY" type="text">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                     <!-- Form -->
                                    <label for="cPwd">결제비밀번호 설정</label>
                                   	<div class="input-group mb-4">
                                		<div class="input-group-prepend">
                                            <span class="input-group-text"><i class="far fa-compass"></i></span>
                                        </div>
                                       	<input name ="cPwd" class="form-control" id="cPwd" maxlength="6"  placeholder="결제비밀번호를 설정하세요.(숫자 6자리)" type="password">
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="termChk2">
                                        <label class="form-check-label" for="terms">
                                            <span class="small"><a class="text-secondary" href="#" id="terms2">약관</a>에 동의합니다. </span> 
                                        </label>
                                        <span class="small" style="float: right;"><a class="text-secondary" href="<c:url value='/main'/> " >메인 홈페이지로 이동하기</a></span>
                                    </div>
                                <button type="submit" class="btn btn-block btn-primary">부가정보입력 완료하기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
<%@ include file="memberBottom.jsp" %>