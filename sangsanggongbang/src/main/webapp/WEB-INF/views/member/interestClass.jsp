<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/new_top_user.jsp" %>
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
            	<c:if test="${!empty sessionScope.mFilename }">
                	<img src="<c:url value='/resources/file_upload/${sessionScope.mFilename }'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait"
                	onerror="this.src='${sessionScope.mFilename }'">
                </c:if>
                <c:if test="${empty sessionScope.mFilename }">
                	<img src="<c:url value='/resources/file_upload/default.png'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
                </c:if>
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${vo.mNickname}</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
               <div class="list-group dashboard-menu list-group-sm mt-4">
               <a href="<c:url value='/dashboard/user/payment/myAccount'/>" class="d-flex list-group-item list-group-item-action">내 정보조회 <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/memberEditChkPwd'/>" class="d-flex list-group-item list-group-item-action">회원정보 수정<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/myPayment'/>" class="d-flex list-group-item list-group-item-action ">내 결제내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="d-flex list-group-item list-group-item-action">환불내역조회<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/interestClass'/>" class="d-flex list-group-item list-group-item-action active">내 관심클래스<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/note/noteList?mId=${sessionScope.mId }'/>"	class="d-flex list-group-item list-group-item-action border-0">쪽지함<span class="icon icon-xs ml-auto"><span	class="fas fa-chevron-right"></span></span>	</a>
                <a href="<c:url value='/member/memberEditChkPwd2'/>" class="d-flex list-group-item list-group-item-action  border-0">회원탈퇴<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
            </div>
            </div>
        </div>
    </div>
</div>
<div class="col-12 d-lg-none">
    <div class="card bg-white border-light mb-4 mb-lg-5">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-10 d-flex">
                    <a href="<c:url value='/dashboard/user/payment/myAccount'/>" class="list-group-item list-group-item-action border-0 ">내 정보조회</a>
                    <a href="<c:url value='/member/memberEditChkPwd'/>" class="list-group-item list-group-item-action border-0 ">회원정보 수정</a>
                    <a href="<c:url value='/dashboard/user/payment/myPayment'/>" class="list-group-item list-group-item-action border-0   ">내 결제내역</a>
                    <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="list-group-item list-group-item-action d-none d-sm-block border-0 ">환불내역조회</a>
                    <a href="<c:url value='/member/interestClass'/>" class="list-group-item list-group-item-action d-none d-md-block border-0 active">내 관심클래스</a>
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
                            <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="list-group-item list-group-item-action d-sm-none border-0 ">환불내역조회</a>
                            <a href="<c:url value='/member/interestClass'/>" class="list-group-item list-group-item-action d-md-none border-0 active">내 관심클래스</a>
                            <a href="<c:url value='/member/memberEditChkPwd2'/>" class="list-group-item list-group-item-action border-0 ">회원탈퇴</a>
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
							<div class="container">
								<form name="frmList">
									<table class="table table-hover" style="font-size: 14px;">


										<c:if test="${empty interest }">
											<h3 class="h4 mb-5">
												늘찬님 환영합니다~! ⸜(*'ᗜ'*)⸝ &nbsp;<br>아직 관심등록 한 클래스가 없네요
											</h3>
											<h4>
												<a href="<c:url value='/index'/> "> ➯메인으로 가기</a>
											</h4>
										</c:if>
										<c:if test="${!empty interest }">
											<thead>
												<tr>
													<th scope="col">클래스이름</th>
													<th scope="col">카테고리</th>
													<th scope="col">일자</th>
													<th scope="col">시간</th>
													<th scope="col">가격</th>
													<th scope="col">인원</th>
													<th scope="col">확정인원</th>
													<th scope="col">종료여부</th>
												</tr>
											</thead>
											<tbody>
												<!-- 이벤트 내용반복 -->
												<c:forEach var="map" items="${classlist}">
													<tr>
														<td><a
															href="<c:url value='/class/detail?cNo=${map["C_NO"] }&categoryName=${map["CATEGORY_NAME"] }&hNo=${map["H_NO"]} '/>">
																<div class="d-flex align-items-center">${map["C_NAME"] }</div>
														</a></td>
														<td>${map["CATEGORY_NAME"] }</td>
														<td><fmt:formatDate value="${map['C_START_TIME'] }"
																pattern="yyyy/MM/dd" /></td>
														<td>${map["C_TIME"] }시</td>
														<td><fmt:formatNumber value="${map['C_PRICE'] }"
																pattern="#,###" />원</td>
														<td>${map["PPNUM"] }</td>
														<td>${map["FPNUM"] }</td>
														<td>${map["END_FLAG"] }</td>
													</tr>

												</c:forEach>
										</c:if>
										</tbody>
									</table>

									<c:if test="${!empty interest }">
									<div class="row">
										<div class="col-lg-12 mb-5">
											<div class="col mt-3 d-flex justify-content-center">
												<div style="text-align: center;">
													<nav aria-label="Page navigation example">
														<br>
														<ul class="pagination">
															<!-- 이전블럭 -->
															<c:if test="${pagingInfo.firstPage>1 }">
																<li class="page-item"><a class="page-link"
																	href="<c:url value='/member/interestClass?currentPage=${pagingInfo.firstPage -1 }'/> ">
																		<i class="fas fa-angle-double-left"></i>
																</a></li>
															</c:if>
															<!-- 페이징처리시작 -->
															<c:forEach var="i" begin="${pagingInfo.firstPage }"
																end="${pagingInfo.lastPage }">
																<c:if test="${i==pagingInfo.currentPage }">
																	<li class="page-item"><a class="page-link"
																		style="background-color: #9FB9AE; color: #ffffff;"
																		href="<c:url value='/member/interestClass?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
																	</li>
																</c:if>
																<c:if test="${i!=pagingInfo.currentPage }">
																	<li class="page-item"><a class="page-link"
																		href="<c:url value='/member/interestClass?currentPage=${i}" onclick="pageFunc(${i})'/> ">${i }</a>
																	</li>
																</c:if>
															</c:forEach>
															<!-- 다음블럭으로 이동 -->
															<c:if
																test="${pagingInfo.lastPage < pagingInfo.totalPage }">
																<li class="page-item"><a class="page-link"
																	href="<c:url value='/member/interestClass?currentPage=${pagingInfo.lastPage +1 }'/> ">
																		<i class="fas fa-angle-double-right"></i>
																</a></li>
															</c:if>
														</ul>
													</nav>
												</div>
											</div>
										</div>
									</div>
									</c:if>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

    </main>
 <%@ include file="../inc/bottom.jsp" %>