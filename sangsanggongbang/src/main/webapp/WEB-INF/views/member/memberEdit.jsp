<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://kit.fontawesome.com/2db6e9a548.js" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#address").value = data.address
        }
    }).open();
}
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
	
	$('#additional').submit(function(){
		var cardnum = $('#cardNum1').val()+$('#cardNum2').val()+$('#cardNum3').val()+$('#cardNum4').val();
		$('#cardnum').val('cardnum');
	});
	
	
});

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

        <div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                
                    <div class="col-12 col-md-4 d-none d-lg-block">
    <!-- Navigation -->
    <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
            	<c:if test="${sessionScope.snsCheck=='y' }">
                	<img src="${vo.mFilename }" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
                </c:if>
                <c:if test="${sessionScope.snsCheck=='n' }">
                	<c:if test="${vo.mFilename!=null }">
                		<img src="${pageContext.request.contextPath }/resources/file_upload/${vo.mFilename }" class="card-img-top rounded-circle border-white">
                	</c:if>
                	<c:if test="${vo.mFilename==null }">
                		<img src="${pageContext.request.contextPath }/resources/assets/img/default.png" class="card-img-top rounded-circle border-white">
                	</c:if>
                </c:if>
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${vo.mNickname}</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
                <a href="./account.html" class="d-flex list-group-item list-group-item-action ">Overview <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/memberEdit'/>" class="d-flex list-group-item list-group-item-action  active ">회원정보 수정<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./my-items.html" class="d-flex list-group-item list-group-item-action ">My Items<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./security.html" class="d-flex list-group-item list-group-item-action ">Security<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./billing.html" class="d-flex list-group-item list-group-item-action ">Billing<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./messages.html" class="d-flex list-group-item list-group-item-action  border-0">Messages<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
            </div>
        </div>
    </div>
</div>
<div class="col-12 d-lg-none">
    <div class="card bg-white border-light mb-4 mb-lg-5">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-10 d-flex">
                    <a href="./account.html" class="list-group-item list-group-item-action border-0 ">Overview</a>
                    <a href="./settings.html" class="list-group-item list-group-item-action border-0  active ">Settings</a>
                    <a href="./my-items.html" class="list-group-item list-group-item-action d-none d-sm-block border-0 ">My Items</a>
                    <a href="./security.html" class="list-group-item list-group-item-action d-none d-md-block border-0 ">Security</a>
                </div>
                <div class="col-2 d-flex justify-content-center">
                    <div class="btn-group dropleft">
                        <button class="btn btn-link dropdown-toggle dropdown-toggle-split mr-2 m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="icon icon-sm">
                                <span class="fas fa-ellipsis-h icon-secondary fa-lg"></span>
                            </span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <div class="dropdown-menu">
                            <a href="./my-items.html" class="list-group-item list-group-item-action d-sm-none border-0 ">My Items</a>
                            <a href="./security.html" class="list-group-item list-group-item-action d-md-none border-0 ">Security</a>
                            <a href="./billing.html" class="list-group-item list-group-item-action border-0 ">Billing</a>
                            <a href="./messages.html" class="list-group-item list-group-item-action border-0 ">Messages</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                    <div class="col-12 col-lg-8">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card card-body bg-white border-light mb-4">
                                    <h2 class="h5 mb-4">회원정보 수정</h2>
                                    <form id="memberEdit" method="post" enctype="multipart/form-data" action="<c:url value='/member/memberEdit'/> ">
                                        <div class="card border-light p-2" style ="margin-bottom: 20px">
								        <div class="card-body p-2">
								        <div style="float: left; margin-left: 0px; margin-top:0px; " >
								            	<c:if test="${sessionScope.snsCheck=='y' }">
								            		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
								                			<img src="${vo.mFilename }" id="nImg" class="card-img-top rounded-circle border-white" alt="프로필사진">
								                		</div>
								           			 </div>
								           			  <div class="input-group mb-3"  style = "text-align: center;">
														  <input type="file" id="inputGroupFile02" class="form-control " name = "mFilename"onchange="InputImage();" style="display: none;" value="${cookie.mFilename.value }">
														  <label class="input-group-text btn btn-outline-primary" for="inputGroupFile02" style="margin-top: 30px">프로필 사진 업로드하기</label>
													  </div>
								                </c:if>
								                <c:if test="${sessionScope.snsCheck=='n' }">
								                	<c:if test="${vo.mFilename!=null }">
									                	<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
									            			<div id="older">
									                			<img src="${pageContext.request.contextPath }/resources/file_upload/${vo.mFilename }" class="card-img-top rounded-circle border-white">
									                		</div>
									            		</div>
									            		<div class="input-group mb-3"  style = "text-align: center;">
															<input type="file" name ="upfile" id="upfile" class="form-control "  onchange="InputImage();" style="display: none;">
															<label class="input-group-text btn btn-outline-primary" for="upfile" style="margin-top: 30px">프로필 사진 업로드하기</label>
														</div>
							                		</c:if>
								                	<c:if test="${vo.mFilename==null }">
								                		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
									            			<div id="older">
										                		<img src="${pageContext.request.contextPath }/resources/assets/img/default.png" class="card-img-top rounded-circle border-white">
									                		</div>
									            		</div>
									            		<div class="input-group mb-3"  style = "text-align: center;">
															<input type="file" name ="upfile" id="upfile" class="form-control "  onchange="InputImage();" style="display: none;">
															<label class="input-group-text btn btn-outline-primary" for="upfile" style="margin-top: 30px">프로필 사진 업로드하기</label>
														</div>
							                		</c:if>
								                </c:if>
											</div>
										  <div class="col-md-8 mb-3" style = "float: left; margin-left: 0px; margin-top:10px;" >
                                                <div class="form-group">
                                                    <label for="mName">이름</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-id-card"></i></span>
			                                            </div>
                                           				<input name ="mName" class="form-control" id="mName" placeholder="성명" type="text" value="${vo.mName}" >
                                           				<input name ="mNo" class="form-control" id="mNo" placeholder="성명" type="hidden" value="${vo.mNo}" >
                                           				<input name ="mId" class="form-control" id="mId" placeholder="성명" type="hidden" value="${vo.mId}" >
                                           				<input type="hidden" name="oldFileName" value="${vo.mFilename}">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 mb-3" style = "float: left; margin-left: 0px;">
                                                <div class="form-group">
                                                    <label for="mNickname">닉네임</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-smile"></i></span>
			                                            </div>
                                           				<input name ="mNickname" class="form-control" id="mNickname" placeholder="닉네임을 입력해주세요." type="text" value="${vo.mNickname}">
                                            		</div>
                                                </div>
                                            </div>
								       </div>
								    </div>
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <label for="phone">핸드폰번호</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-mobile-alt"></i></span>
			                                            </div>
	                                           	 		<input name ="phone" class="form-control" id="phone" placeholder="휴대폰 번호를 입력해주세요. (-제외)" maxlength="11" type="text" value="${vo.phone}">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <label for="bday">생년월일</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>
			                                            </div>
	                                           			 <input name ="bday" class="form-control" id="bday" maxlength="6" placeholder="생년월일 6자리를 입력하세요. ex)950720" type="text" value="${vo.bday}">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                     <label for="mZipcode">우편번호</label>
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-compass"></i></span>
			                                            </div>
			                                           	<input name ="mZipcode" class="form-control" id="zipcode" readonly="readonly" placeholder="우편번호를 검색하세요." type="text"  aria-describedby="button-addon2" value="${vo.mZipcode}">
			                                           	<button type="button" id="button-addon2" class="btn btn-outline-primary btn-sm" onclick="kakaopost()" >우편번호 검색</button>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                     <label for="mAddress">주소</label>
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-compass"></i></span>
			                                            </div>
                                           			  <input name ="mAddress" class="form-control" id="address" readonly="readonly" placeholder="우편번호 검색시 자동으로 입력됩니다." type="text" value="${vo.mAddress}">
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
                                       	<input name ="mAddressDetail" class="form-control" id="mAddressDetail"  placeholder="상세주소를 입력하세요. ex)대원빌 101호" type="text" value="${vo.mAddressDetail}">
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
	                              	<div class="row">
		                                <div class="col-md-6 mb-3">
			                                <div class="form-group">
				                                <label for="password">기본결제수단 변경하기</label>
				                           		<div class="input-group mb-4">
					                                <div class="input-group-prepend">
		                                          		<span class="input-group-text"><i class="fas fa-money-bill"></i></span>
		                                        	</div>
			                                       	<select class="custom-select" id="pType" name = "pType">
			                                       		<option value="">결제수단을 선택하세요.</option>
														<option value="카드"
														<c:if test="${payVo.pType=='카드'}">
															selected
														</c:if>
														>카드</option>
														<option value="자동이체"
														<c:if test="${payVo.pType=='자동이체'}">
															selected
														</c:if>
														>자동이체</option>
													</select>
			                        			</div>
			                        		</div>
		                                </div>
		                                <div class="col-md-6 mb-3">
		                                	<div class="form-group">
		                                    	<label for="payNick">기본결제수단 별칭</label>
		                                     	<div class="input-group mb-4">
		                                        	<div class="input-group-prepend">
		                                            	<span class="input-group-text"><i class="fas fa-smile"></i></span>
		                                        	</div>
		                                      		<input name ="payNick" class="form-control" id="payNick" placeholder="결제수단의 별칭을 입력하세요." type="text" value="${payVo.payNick }">
		                                      	</div>
		                                  	</div>
		                                 </div>
		                            </div>
                                    <!-- End of Form -->
                                   
                                    <!-- Form -->
                                    
                                    <div id="accInput" class="row" 
                                    <c:if test="${payVo.pType=='카드' }">
                                    	style="display: none"
                                    </c:if>
                                    >
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
																<option value="KB국민은행"
																<c:if test="${payVo.bankName=='KB국민은행'}">
																	selected
																</c:if>
																>KB국민은행</option>
																<option value="신한은행"
																<c:if test="${payVo.bankName=='신한은행'}">
																	selected
																</c:if>
																>신한은행</option>
																<option value="우리은행"
																<c:if test="${payVo.bankName=='우리은행'}">
																	selected
																</c:if>
																>우리은행</option>
																<option value="하나은행"
																<c:if test="${payVo.bankName=='하나은행'}">
																	selected
																</c:if>
																>하나은행</option>
																<option value="한국씨티은행"
																<c:if test="${payVo.bankName=='한국씨티은행'}">
																	selected
																</c:if>
																>한국씨티은행</option>
																<option value="농협"
																<c:if test="${payVo.bankName=='농협'}">
																	selected
																</c:if>
																>농협</option>
																<option value="카카오뱅크"
																<c:if test="${payVo.bankName=='카카오뱅크'}">
																	selected
																</c:if>
																>카카오뱅크</option>
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
				                                       	<input name ="accNum" class="form-control" id="accNum"  placeholder="계좌번호를 입력하세요." type="text" value="${payVo.accNum }">
				                                     </div>
												</div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                    
                                    <!-- Form -->
                                    <div id="cardInput" class="row" 
									<c:if test="${payVo.pType!='카드' }">
                                    	style="display: none"
                                    </c:if>
									>
                                            <div class="col-md-4 mb-3">
                                                <div class="form-group">
                                                     <label for="cardCom">카드사</label>
                                                     <div class="input-group mb-4">
														<div class="input-group mb-3">
														<div class="input-group-prepend">
			                                                <span class="input-group-text"><span class="fas fa-credit-card"></span></span>
			                                            </div>
															<select class="custom-select" id="cardCom" name = "cardCom">
																<option value="신한"
																<c:if test="${payVo.cardCom=='신한' }">
							                                    	selected
							                                    </c:if>
																>신한</option>
																<option value="삼성"
																<c:if test="${payVo.cardCom=='삼성' }">
							                                    	selected
							                                    </c:if>
																>삼성</option>
																<option value="현대"
																<c:if test="${payVo.cardCom=='현대' }">
							                                    	selected
							                                    </c:if>
																>현대</option>
																<option value="KB국민"
																<c:if test="${payVo.cardCom=='KB국민' }">
							                                    	selected
							                                    </c:if>
																>KB국민</option>
																<option value="우리"
																<c:if test="${payVo.cardCom=='우리' }">
							                                    	selected
							                                    </c:if>
																>우리</option>
																<option value="NH농협"
																<c:if test="${payVo.cardCom=='NH농협' }">
							                                    	selected
							                                    </c:if>
																>NH농협</option>
																<option value="하나"
																<c:if test="${payVo.cardCom=='하나' }">
							                                    	selected
							                                    </c:if>
																>하나</option>
															</select>
														</div>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 mb-3">
                                                <div class="form-group">
                                                     <label for="cardNum">카드번호</label>
                                                     <div class="input-group mb-3">
                                                     	<c:set var="cardNum" value="${payVo.cardNum }"/>
														<input type="text" id="cardNum1" class="form-control" maxlength="4" aria-label="Username" value="${fn:substring(cardNum,0,4) }">
														<span class="input-group-text">-</span>
														<input type="text" id="cardNum2" class="form-control" maxlength="4" aria-label="Server" value="${fn:substring(cardNum,4,8) }">
														<span class="input-group-text">-</span>
														<input type="text" id="cardNum3" class="form-control" maxlength="4" aria-label="Server" value="${fn:substring(cardNum,8,12) }">
														<span class="input-group-text">-</span>
														<input type="password" id="cardNum4" class="form-control" maxlength="4" aria-label="Server" value="${fn:substring(cardNum,12,15) }">
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
	                                           	 		<input name ="CVC" class="form-control" id="CVC" placeholder="카드 뒷면 CVC번호를 입력하세요." maxlength="3" type="password" value="${payVo.cvc }">
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
	                                           			 <input name ="cardExp" class="form-control" id="cardExp" maxlength="5" placeholder="MM/YY" type="text" value="11/25">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                     <!-- Form -->
                                    <label for="cPwd">결제비밀번호 설정</label>
                                   	<div class="input-group mb-4">
                                		<div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                        </div>
                                       	<input name ="cPwd" class="form-control" id="cPwd" maxlength="6"  placeholder="결제비밀번호를 설정하세요.(숫자 6자리)" type="password" value="${payVo.cPwd }">
                                    </div>
                                     <div class="mt-3" style="text-align: center;">
                                            <button type="submit" class="btn btn-primary" >수정하기</button>
                                        </div>
                                    <!-- End of Form -->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
 <%@ include file="../inc/bottom.jsp" %>