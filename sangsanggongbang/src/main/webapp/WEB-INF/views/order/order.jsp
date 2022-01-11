<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:choose>
    <c:when test="${!empty sessionScope.hId }">
        <%@ include file="../inc/new_top_host.jsp"%>
    </c:when>
    <c:when test="${!empty sessionScope.mId }">
        <%@ include file="../inc/new_top_user.jsp"%>
    </c:when>
    <c:when test="${!empty sessionScope.adId }">
        <%@ include file="../inc/new_top_admin.jsp"%>
    </c:when>
    <c:otherwise>
        <%@ include file="../inc/new_top_user.jsp"%>
    </c:otherwise>
</c:choose>
<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">

	$(function() {
		$(function() {
			$("#sPpunm").on("propertychange change keyup paste input", function() {
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
				buyer_addr : $('#mAddress').val()
						+ $('#mAddressDetail').val(),
				buyer_postcode : $('#mZipcode').val(),
				digital : true // 실제 물품인지 무형의 상품인지(핸드폰 결제에서 필수 파라미터)
			},
			function(rsp) {
				console.log(rsp);
				if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
					var msg = '결제가 완료되었습니다';
					var result = {
					"imp_uid" : rsp.imp_uid,
					"merchant_uid" : rsp.merchant_uid,
					"m_id" : $('#mId').val(),
					"pay_date" : new Date().getTime(),
					"price" : rsp.paid_amount,
					"card_no" : rsp.apply_num,
					"refund" : 'payed'
					}
					console.log("결제성공 " + msg);
					$.ajax({
						url : '/class/orderComplete', 
				        type :'POST',
				        data : JSON.stringify(result,
				        		['imp_uid', 'merchant_uid', 'm_id', 
				        			'pay_date', 'price', 'card_no', 'refund']),
				        contentType:'application/json;charset=UTF-8',
				        dataType: 'json', //서버에서 보내줄 데이터 타입
				        
				        success: function(cnt){
				        			        	
				          if(cnt == 1){
							 console.log("추가성공");	
				          }else{
				             console.log("Insert Fail!!!");
				          }
				        },
				        error:function(){
				          console.log("Insert ajax 통신 실패!!!");
				        }
					}); //ajax
					
				}else{//결제 실패시
					var msg = '결제에 실패했습니다';
					msg += '에러 : ' + rsp.error_msg
				}
				console.log(msg);
			});//pay
		});
	});
</script>

<div
	class="section section-header section-image bg-primary overlay-primary  overflow-hidden pb-6"
	style="color: #46746e;">
	<div class="container z-2">
		<div class="section section-lg pt-5">
			<div class="container" style="background-color: beige;">
				<form method="post" class="card border-light p-3 mb-4" action="<c:url value='/class/orderComplete'/>">
					<div class="row">
						<c:forEach var="map" items="${cVo}">
							<c:if test="${map['C_NO'] eq param.cNo }">
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
															${map["PPNUM"] }명</span>
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
														readonly="readonly" class="form-control" id="M_NAME"
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
														class="form-control" id="M_NAME" aria-describedby="M_NAME"
														value="${map['C_TIME'] } 시">
												</div>
												<!-- End of Form -->
											</div>
											<div class="col-12 col-lg-3" style="float: left;">
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
											<h3 class="h6 mb-0">결제금액</h3>
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
							<div class="col-12 col-lg-6">
								<!-- Form -->
								<div class="form-group mb-4">
									<label for="mNickname">닉네임</label> <input type="text"
										class="form-control" id="mNickname" name="mNickname"
										aria-describedby="M_NAME" value="${mVo.mNickname}">
								</div>
								<!-- End of Form -->
							</div>
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
							
						<input type="submit" id="wr_submit" value="결제하기2">
					</div>
				</form>
				<!-- <form action="#" method="post" class="card border-light p-3 mb-4">
					<div class="card-header border-light p-3 mb-4 mb-md-0">
						<h3 class="h5 mb-0">Card details</h3>
					</div>
					<div class="card-body p-0 p-md-4">
						<div class="row justify-content-center">
							<div class="col-12">
								<div class="form-group">
									<label class="form-label" for="cardNameLabel"><span
										class="small text-dark">(Full name as displayed on
											card)</span></label>
									<div class="input-group mb-4">
										<input class="form-control" id="cardNameLabel"
											placeholder="Name on Card *" type="text" required="">
									</div>
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<label for="cardNumberLabel">Card Number <span
										class="text-danger">*</span></label>
									<div class="input-group mb-4">
										<div class="input-group-prepend">
											<span class="input-group-text"><span
												class="fas fa-credit-card"></span></span>
										</div>
										<input class="form-control" id="cardNumberLabel"
											placeholder="0000 0000 0000 0000" type="number" required="">
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="cardCVCLabel">CVC <span class="text-danger">*</span></label>
									<input class="form-control" id="cardCVCLabel" placeholder="CVC"
										type="number" required="">
								</div>
							</div>
							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="cardExpiryLabel">Card Expiry <span
										class="text-danger">*</span></label>
									<div class="input-group mb-4">
										<div class="input-group-prepend">
											<span class="input-group-text"><span
												class="fas fa-calendar-alt"></span></span>
										</div>
										<input class="form-control" id="cardExpiryLabel"
											placeholder="MM / YY" type="number" required="">
									</div>
								</div>
							</div>
							<div class="col-12">
								<button class="btn btn-primary btn-dark mt-2 animate-up-2"
									type="submit">Update</button>
							</div>
						</div>
					</div>
				</form> -->
			</div>
		</div>
	</div>
</div>

<c:choose>
    <c:when test="${!empty sessionScope.hId }">
        <%@ include file="../inc/bottom_host.jsp"%>
    </c:when>
    <c:when test="${!empty sessionScope.mId }">
        <%@ include file="../inc/bottom.jsp"%>
    </c:when>
    <c:when test="${!empty sessionScope.adId }">
        <%@ include file="../inc/bottom_admin.jsp"%>
    </c:when>
    <c:otherwise>
        <%@ include file="../inc/bottom.jsp"%>
    </c:otherwise>
</c:choose>