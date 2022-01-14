<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/new_top_user.jsp"%>
<script type="text/javascript">
	$(function() {
/* 		$(function() {
			$('#apibtn').submit(function(){
				if($('#mId').val().length<1){
					alert('아이디를 입력하세요.');
					$('#mId').focus();
					event.preventDefault();
				}else if(!validate_userid($('#mId').val())){
					alert('아이디는 이메일 형식으로만 가능합니다.');
					$('#mId').focus();
					event.preventDefault();
				}else if($('#name').val().length<1){
					alert('이름을 입력하세요');
					$('#name').focus();
					event.preventDefault();
				}else if($('#sPpunm').val()==0){
					alert('인원수를 선택하세요!');
					$('#sPpunm').focus();
					event.preventDefault();
				}		
			});
		}); */
		$(function() {
			$("#sPpunm").on("propertychange change keyup paste input",
				function() {
					var ppnum = $('#sPpunm').val();
					var price = $('#price').val();
					var totalPrice = ppnum * price;
					$('#showPrice').val(totalPrice + "원");
					$('#totalPrice').val(totalPrice);
				});
		});
		
		$('#apibtn').click(function() {
			//가맹점 식별코드
			IMP.init('imp73895922');
			IMP.request_pay(
							{
				pg : 'html5_inicis',
				pay_method : 'card',
				merchant_uid : 'merchant_'
						+ new Date().getTime(),
				name : $('#cname').html(), //결제창에서 보여질 이름
				//amount : $('#totalPrice').val(), //실제 결제되는 가격
				amount : 100, //실제 결제되는 가격
				buyer_email : $('#mId').val(),
				buyer_name : $('#name').val(),
				buyer_tel : $('#phone').val(),
				buyer_addr : $('#mAddress')
						.val()
						+ $('#mAddressDetail')
								.val(),
				buyer_postcode : $('#mZipcode')
						.val(),
				digital : true
			// 실제 물품인지 무형의 상품인지(핸드폰 결제에서 필수 파라미터)
			},
			function(rsp) {
				console.log(rsp);
				if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
					var merchantUid = rsp.merchant_uid
					var msg = '결제가 완료되었습니다';
					var result = {
					"impUid" : rsp.imp_uid,	//상점id
					"merchantUid" : rsp.merchant_uid, //영수증번호
					"mId" : $('#mId').val(), //유저id
					"price" : rsp.paid_amount, //결제금액
					"refund" : 'payed', //결제상태
					"buyerName" : $('#name').val(), //구매자명
					"ea" : $('#sPpunm').val(), //구매수량
					"fTime" : $('#fTime').val(), //선택시간
					"cNo" : $('#cNo').val() //클래스넘버
					}
					
					$.ajax({
						url : '/sangsanggongbang/class/ajax/orderComplete',
				        type :'POST',
 				        data : JSON.stringify(result),
				        contentType:'application/json;charset=UTF-8',
				        dataType: 'json', //서버에서 보내줄 데이터 타입
				        success: function(cnt){
				        			        	
				          if(cnt == 1){
							 console.log("추가성공");	
							location.replace("http://localhost:9091/sangsanggongbang/class/orderComplete?merchantUid="+merchantUid);
								
				          }else{
				             console.log("Insert Fail!!!");
				          }
				        },
				        error:function(){
				          console.log("Insert ajax 통신 실패!!!");
				        }
					}); //ajax
					
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : '+ rsp.error_msg;
				}
				alert(msg);
			});
		});

	});
	
</script>

<div
	class="section section-header section-image bg-primary overlay-primary  overflow-hidden pb-6"
	style="color: #46746e;">
	<div class="container z-2">
		<div class="section section-lg pt-5">
			<div class="container">
				<form method="post" class="card border-light p-3 mb-4" action="orderComplete">
					<div class="row">
						<c:forEach var="map" items="${cVo}">
							<c:if test="${map['C_NO'] eq param.cNo }">
							<input type="hidden" id="cNo" value="${map['C_NO'] }">
							<input type="hidden" name="cVo" value="${cVo}">
								<div class="col-12 col-lg-14">
									<div class="row no-gutters align-items-center">
										<div class="col-12 col-lg-4 col-xl-4">
											<c:choose>
												<c:when test="${not empty map['THUMBNAIL']}">
													<img
														src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/> "
														alt="썸네일">
												</c:when>
												<c:when test="${map['THUMBNAIL'] eq null}">
													<h3>미리보기 이미지가 없습니다.</h3>
													<img
														src="<c:url value='/resources/upload_images/basic.png'/> "
														height="400px" width="700px" alt="기본이미지">
												</c:when>
											</c:choose>
										</div>
										<div class="col-12 col-lg-7 col-xl-8">

											<div class="card-body text-dark">
												<h4 class="h4" id="cname">${map["C_NAME"] }</h4>
												</a>
												<ul class="list-group mb-3">
													<li class="list-group-item small p-0 border-0"><span
														class="fas fa-map-marker-alt mr-2"> </span>${ map['L_ADDRESS']}
														${ map['L_ADDRESS_DETAIL']}</li>
												</ul>
												<div class="d-flex justify-content-between">
													<div class="col pl-0">
														<span class="small d-block">가격</span> <span
															class="h6 text-dark font-weight-bold"> <input
															type="hidden" id="price" value="${map['C_PRICE'] }">
															<fmt:formatNumber value="${map['C_PRICE'] }"
																pattern="#,###" />원
														</span>
													</div>
													<div class="col">
														<span class="small d-block">모집 인원수</span> <span
															class="h6 text-dark font-weight-bold" id="ppnum">
															${map["FPNUM"] } / ${map["PPNUM"] }명</span>
													</div>
													<div class="col pr-0">
														<span class="small d-block">지역</span> <span
															class="h6 text-dark font-weight-bold"> <c:set
																var="addr" value="${ map['L_ADDRESS']}" />
															${fn:substring(addr,0,2)}
														</span>
													</div>

													<div class="row justify-content-center"></div>
												</div>
											</div>
											<div class="col-12 col-lg-4" style="float: left;">
												<!-- Form -->
												<div class="form-group mb-4">
													<label for="cartInputCity1">선택날짜</label> <input type="text"
														readonly="readonly" class="form-control" id="fDate"
														aria-describedby="M_NAME"
														value="<fmt:formatDate value="${map['C_REGDATE'] }"
												pattern="yyyy-MM-dd" />">
												</div>
												<!-- End of Form -->
											</div>
											<div class="col-12 col-lg-4" style="float: left;">
												<!-- Form -->
												<div class="form-group mb-4">
													<label for="cartInputCity1">선택시간</label> <input type="text"
														readonly="readonly" placeholder="M_NAME"
														class="form-control" id="fTime" aria-describedby="M_NAME"
														value="${map['C_TIME'] }">
												</div>
												<!-- End of Form -->
											</div>
											<div class="col-12 col-lg-4" style="float: left;">
												<!-- Form -->
												<div class="form-group mb-4">
													<label for="cartInputCity1">선택인원수</label> <input
														type="number" max="${map['PPNUM'] }" min=0 placeholder="0"
														class="form-control" id="sPpunm">
												</div>
											</div>
											<!-- End of Form -->
										</div>
									</div>
									<div class="col-12 col-lg-3" style="float: right;">
										<!-- Form -->
										<div class="form-group mb-4">
											<h3 class="h6 mb-0"><strong>결제금액</strong></h3>
											<input class="form-control" type="text" id="showPrice"
												value="" readonly="readonly"> <input
												class="form-control" type="hidden" id="totalPrice" value=""
												readonly="readonly">
										</div>
									</div>
									<!-- End of Form -->
								</div>
							</c:if>
						</c:forEach>
					</div>

					<div class="card-header border-light p-3 mb-4 mb-md-0">
						<h3 class="h5 mb-0">클래스 수강신청</h3>
					</div>
					<div class="card-body p-0 p-md-4">
						<div class="row justify-content-center">
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="cartInputCity1">이름</label> <input type="text"
										class="form-control" id="name" name="name"
										aria-describedby="M_NAME">
								</div>
								<!-- End of Form -->
							</div>
							<%-- <div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="mNickname">닉네임</label> <input type="text"
										class="form-control" id="mNickname" name="mNickname"
										aria-describedby="M_NAME" value="${mVo.mNickname}">
								</div>
								<!-- End of Form -->
							</div> --%>
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="mId">아이디</label> <input type="text"
										class="form-control" value="${mVo.mId}" id="mId" name="mId"
										aria-describedby="cartInputEmail1" required>
								</div>
								<!-- End of Form -->
							</div>
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="phone">핸드폰 번호</label> <input type="number"
										value="${mVo.phone}" class="form-control" id="phone"
										name="phone" aria-describedby="cartInputPhone1">
								</div>
								<!-- End of Form -->
							</div>
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="bday">생년월일</label> <input type="text"
										value="${mVo.bday}" class="form-control" id="bday" name="bday"
										aria-describedby="cartInputCity1">
								</div>
								<!-- End of Form -->
							</div>
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="zipcode">우편번호</label> <input type="number"
										value="${mVo.mZipcode}" class="form-control" id="mZipcode"
										name="mZipcode" aria-describedby="cartInputZip1">
								</div>
								<!-- End of Form -->
							</div>
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="mAddress">주소</label> <input type="text"
										value="${mVo.mAddress}" class="form-control" id="mAddress"
										name="mAddress" aria-describedby="cartInputAdress1" required>
								</div>
								<!-- End of Form -->
							</div>
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="mAddressDetail">상세주소</label> <input type="text"
										value="${mVo.mAddressDetail}" class="form-control"
										id="mAddressDetail" name="mAddressDetail"
										aria-describedby="cartInputCompany2" required>
								</div>
								<!-- End of Form -->
							</div>
						</div>
						<input type="hidden" value="${mVo.mNo}">
						<input type="button" class="btn btn-block btn-primary mt-4"
							id="apibtn" value="결제하기">
					</div>
				</form>

			</div>
		</div>
	</div>
</div>


<%@ include file="../inc/bottom.jsp"%>