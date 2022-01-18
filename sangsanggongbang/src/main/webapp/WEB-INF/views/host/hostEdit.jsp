<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/new_top_host.jsp" %>
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
	
	$('#memberEdit').submit(function(){
		var cardnum = $('#cardNum1').val()+$('#cardNum2').val()+$('#cardNum3').val()+$('#cardNum4').val();
		$('#cardNum').val(cardnum);
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
							<c:if test="${!empty sessionScope.hFilename }">
								<img
									src="<c:url value='/resources/file_upload/${sessionScope.hFilename }'/>"
									class="card-img-top rounded-circle border-white"
									alt="Joseph Portrait" width="129" height="129"
									onerror="this.src='${sessionScope.mFilename }'">
							</c:if>
							<c:if test="${empty sessionScope.hFilename }">
								<img src="<c:url value='/resources/assets/img/default.png'/>"
									class="card-img-top rounded-circle border-white"
									alt="Joseph Portrait">
							</c:if>
						</div>
						<h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.hNickname}</h2>
						<div class="list-group dashboard-menu list-group-sm mt-4">
							<a href="<c:url value='/host/hostAccount'/>"
								class="d-flex list-group-item list-group-item-action ">마이페이지
								<span class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/host/hostEditChkPwd'/>"
								class="d-flex list-group-item list-group-item-action active">회원정보
								수정<span class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/class/myclass'/>"
								class="d-flex list-group-item list-group-item-action ">내 클래스
								현황<span class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/memberInquiry/classUser'/>"
								class="d-flex list-group-item list-group-item-action ">클래스 이용회원<span
								class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="<c:url value='/dashboard/host/balancing'/>"
								class="d-flex list-group-item list-group-item-action ">정산내역<span
								class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a> <a href="./messages.html"
								class="d-flex list-group-item list-group-item-action  border-0">회원탈퇴<span
								class="icon icon-xs ml-auto"><span
									class="fas fa-chevron-right"></span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 d-lg-none">
				<div class="card bg-white border-light mb-4 mb-lg-5">
					<div class="card-body">
						<div class="row align-items-center">
							<div class="col-10 d-flex">
								<a href="<c:url value='/host/hostAccount'/>"
									class="list-group-item list-group-item-action border-0 ">마이페이지</a>
								<a href="<c:url value='/host/hostEditChkPwd'/>"
									class="list-group-item list-group-item-action border-0 active">회원정보</a>
								<a href="<c:url value='/class/myclass'/>"
									class="list-group-item list-group-item-action d-none d-sm-block border-0 ">내 클래스
								현황</a> <a href="./security.html"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">클래스 이용회원</a>
								현황</a> <a href="<c:url value='/dashboard/host/balancing'/>"
									class="list-group-item list-group-item-action d-none d-md-block border-0">정산내역</a>
								현황</a> <a href="./security.html"
									class="list-group-item list-group-item-action d-none d-md-block border-0 ">회원탈퇴</a>
							</div>
							<div class="col-2 d-flex justify-content-center">
								<div class="btn-group dropleft">
									<button
										class="btn btn-link dropdown-toggle dropdown-toggle-split mr-2 m-0 p-0"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="icon icon-sm"> <span
											class="fas fa-ellipsis-h icon-secondary fa-lg"></span>
										</span> <span class="sr-only">Toggle Dropdown</span>
									</button>
									<div class="dropdown-menu">
										 <a href="./security.html"
											class="list-group-item list-group-item-action d-md-none border-0 ">클래스 이용회원</a>
										<a href="<c:url value='/dashboard/host/balancing'/>"
											class="list-group-item list-group-item-action border-0 ">정산내역</a>
										<a href="./messages.html"
											class="list-group-item list-group-item-action border-0 ">회원탈퇴</a>
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
                                    <h2 class="h5 mb-4">호스트 회원정보 수정</h2>
                                    <form id="memberEdit" method="post" enctype="multipart/form-data" action="<c:url value='/host/hostEdit'/> ">
                                        <div class="card border-light p-2" style ="margin-bottom: 20px">
								        <div class="card-body p-2">
								        <div style="float: left; margin-left: 0px; margin-top:0px; " >
								            	<c:if test="${sessionScope.hFilename!='default.png' }">
								            		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
								                			<img src="${pageContext.request.contextPath }/resources/file_upload/${vo.hFilename }" width="129" height="129" id="nImg" class="card-img-top rounded-circle border-white" alt="프로필사진">
								                		</div>
								           			 </div>
								           			  <div class="input-group mb-3"  style = "text-align: center;">
														  <input type="file" id="upfile" class="form-control " name = "upfile"onchange="InputImage();" style="display: none;">
														  <label class="input-group-text btn btn-outline-primary" for="upfile" style="margin-top: 30px">프로필 사진 업로드하기</label>
													  </div>
								                </c:if>
								                <c:if test="${sessionScope.hFilename=='default.png' }">
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
											</div>
										  <div class="col-md-8 mb-3" style = "float: left; margin-left: 0px; margin-top:10px;" >
                                                <div class="form-group">
                                                    <label for="hName">이름</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-id-card"></i></span>
			                                            </div>
                                           				<input name ="hName" class="form-control" id="hName" placeholder="성명" type="text" value="${vo.hName}" >
                                           				<input name ="hNo" class="form-control" id="hNo" placeholder="성명" type="hidden" value="${vo.hNo}" >
                                           				<input name ="hId" class="form-control" id="hId" placeholder="성명" type="hidden" value="${vo.hId}" >
                                           				<input name ="hOriginalname" class="form-control" id="hOriginalname"  type="hidden" value="${vo.hOriginalname}" >
                                           				<input name ="hFilesize" class="form-control" id="hFilesize" type="hidden" value="${vo.hFilesize}" >
                                           				<input type="hidden" name="oldFileName" value="${vo.hFilename}">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 mb-3" style = "float: left; margin-left: 0px;">
                                                <div class="form-group">
                                                    <label for="hNickname">닉네임</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-smile"></i></span>
			                                            </div>
                                           				<input name ="hNickname" class="form-control" id="hNickname" placeholder="닉네임을 입력해주세요." type="text" value="${vo.hNickname}">
                                            		</div>
                                                </div>
                                            </div>
								       </div>
								    </div>
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <label for="hPhone">핸드폰번호</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-mobile-alt"></i></span>
			                                            </div>
	                                           	 		<input name ="hPhone" class="form-control" id="hPhone" placeholder="휴대폰 번호를 입력해주세요. (-제외)" maxlength="11" type="text" value="${vo.hPhone}">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <label for="hBday">생년월일</label>
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>
			                                            </div>
	                                           			 <input name ="hBday" class="form-control" id="hBday" maxlength="6" placeholder="생년월일 6자리를 입력하세요. ex)950720" type="text" value="${vo.hBday}">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                     <label for="hZipcode">우편번호</label>
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-compass"></i></span>
			                                            </div>
			                                           	<input name ="hZipcode" class="form-control" id="zipcode" readonly="readonly" placeholder="우편번호를 검색하세요." type="text"  aria-describedby="button-addon2" value="${vo.hZipcode}">
			                                           	<button type="button" id="button-addon2" class="btn btn-outline-primary btn-sm" onclick="kakaopost()" >우편번호 검색</button>
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                     <label for="hAddress">주소</label>
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-compass"></i></span>
			                                            </div>
                                           			  <input name ="hAddress" class="form-control" id="address" readonly="readonly" placeholder="우편번호 검색시 자동으로 입력됩니다." type="text" value="${vo.hAddress}">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <label for="hAddressDetail">상세주소</label>
                                   	<div class="input-group mb-4">
                                		<div class="input-group-prepend">
                                            <span class="input-group-text"><i class="far fa-compass"></i></span>
                                        </div>
                                       	<input name ="hAddressDetail" class="form-control" id="hAddressDetail"  placeholder="상세주소를 입력하세요. ex)대원빌 101호" type="text" value="${vo.hAddressDetail}">
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
																<option value="KB국민은행"
																<c:if test="${vo.hBankName=='KB국민은행' }">
							                                    	selected
							                                    </c:if>
																>KB국민은행</option>
																<option value="신한은행"
																<c:if test="${vo.hBankName=='신한은행' }">
							                                    	selected
							                                    </c:if>
																>신한은행</option>
																<option value="우리은행"
																<c:if test="${vo.hBankName=='우리은행' }">
							                                    	selected
							                                    </c:if>
																>우리은행</option>
																<option value="하나은행"
																<c:if test="${vo.hBankName=='하나은행' }">
							                                    	selected
							                                    </c:if>
																>하나은행</option>
																<option value="한국씨티은행"
																<c:if test="${vo.hBankName=='한국씨티은행' }">
							                                    	selected
							                                    </c:if>
																>한국씨티은행</option>
																<option value="농협"
																<c:if test="${vo.hBankName=='농협' }">
							                                    	selected
							                                    </c:if>
																>농협</option>
																<option value="카카오뱅크"
																<c:if test="${vo.hBankName=='카카오뱅크' }">
							                                    	selected
							                                    </c:if>
																>카카오뱅크</option>
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
				                                       	<input name ="hAccount" class="form-control" id="hAccount"  placeholder="정산금액을 받을 계좌를 입력하세요." type="text" value="${vo.hAccount}">
				                                     </div>
												</div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
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
 <%@ include file="../inc/bottom_host.jsp" %>