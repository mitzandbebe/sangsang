<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#apibtn').click(function() {
			//가맹점 식별코드
			IMP.init('imp73895922');
			IMP.request_pay({
				pg : 'html5_inicis',
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '상품1', //결제창에서 보여질 이름
				amount : 1000, //실제 결제되는 가격
				buyer_email : 'wlddj22@gmail.com',
				buyer_name : '오정훈',
				buyer_tel : '010-6385-1321',
				buyer_addr : '서울 강남구 도곡동',
				buyer_postcode : '123-456'
			}, function(rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		});
	});

	$(function() {
		$("#num-add").off('click').on('click',function() {
			var quantity = parseInt($('#quantity').val(), 10) + 1;
			var price = parseInt('40000', 10);

			$('#quantity').val(quantity);
			$('#price').empty().append(
					util.numberComma(price * quantity)
							+ ' <span> ì</span>');
		});

		$('#num-sub').off('click').on('click',function() {
			var quantity = parseInt($('#quantity').val(), 10);
			var price = parseInt('40000', 10);

			if (quantity > 1) {
				quantity = quantity - 1;
			}

				$('#quantity').val(quantity);
				$('#price').empty().append(
						util.numberComma(price * quantity)
								+ ' <span> ì</span>');
				$('#price').append(
						util.numberComma(data.price)
								+ ' <span>ì</span>');
			});
	});
</script>

<div
	class="section section-header section-image bg-primary overlay-primary  overflow-hidden pb-6"
	style="color: #46746e;">
	<div class="container z-2">
		<div class="section section-lg pt-5">
			<div class="container" style="background-color: beige;">
				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="row no-gutters align-items-center">
							<div class="col-12 col-lg-4 col-xl-4">
								<a href="../single-space.html"> <img
									src="../resources/assets/img/private-office.jpg"
									alt="private office" class="card-img p-1 rounded-xl"></a>
							</div>
							<div class="col-12 col-lg-7 col-xl-8">
								<div class="card-body text-dark">
									<a href="../single-space.html">
										<h4 class="h6">클래스명</h4>
									</a>
									<ul class="list-group mb-3">
										<li class="list-group-item small p-0 border-0"><span
											class="fas fa-map-marker-alt mr-2"> </span>클래스위치, 또는 주소</li>
									</ul>
									<div class="d-flex justify-content-between">
										<div class="col pl-0">
											<span class="small d-block">가격</span> <span
												class="h6 text-dark font-weight-bold">500$</span>
										</div>
										<div class="col">
											<span class="small d-block">인원수</span> <span
												class="h6 text-dark font-weight-bold">12</span>
										</div>
										<div class="col pr-0">
											<span class="small d-block">지역</span> <span
												class="h6 text-dark font-weight-bold">서울</span>
										</div>

										<div class="row justify-content-center"></div>
									</div>
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCity1">선택날짜</label> <input type="text"
											class="form-control" id="M_NAME"
											aria-describedby="M_NAME">
											<fmt:parseDate value="${cVo.cStart}" pattern="yyyy-MM-dd" />
											<!-- 둘중하나 -->
									</div><fmt:formatDate value="${cVo.cStart}" pattern="yyyy-MM-dd" />
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCity1">선택시간</label> <input type="text"
											placeholder="M_NAME" class="form-control" id="M_NAME"
											aria-describedby="M_NAME" value="${cVo.cTime}시">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCity1">선택인원수</label> <input type="text"
											placeholder="M_NAME" class="form-control" id="M_NAME"
											aria-describedby="M_NAME">

										<div class="class-confirm03">
											<div class="c03-count">
												<a href="#" id="num-sub">-</a> <input type="text"
													id="quantity" value="1" class="only-number" /> <a href="#"
													id="num-add">+</a>
											</div>
										</div>

									</div>
									<!-- End of Form -->
								</div>
							</div>
						</div>
					</div>

					<form action="#" method="post" class="card border-light p-3 mb-4">
						<div class="card-header border-light p-3 mb-4 mb-md-0">
							<h3 class="h5 mb-0">클래스 수강신청</h3>
						</div>
						<div class="card-body p-0 p-md-4">
							<div class="row justify-content-center">
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCity1">회원사진</label>
										<input type="text" placeholder="${mVo.mOriginalname}" class="form-control"
										id="mOriginalname" name="mOriginalname" aria-describedby="M_NAME">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="mNickname">닉네임</label>
										<input type="text" class="form-control" id="mNickname" name="mNickname"
										aria-describedby="M_NAME" value="${mVo.mNickname}">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="mId">아이디</label>
										<input type="text" class="form-control" value="${mVo.mId}" 
										id="mId" name="mId" aria-describedby="cartInputEmail1" required>
									</div>
									<!-- End of Form -->
								</div>

								<!-- <div class="col-12 col-lg-6">
									Form
									<div class="form-group">
										<label class="my-1 mr-2" for="cartFormCustomSelectPref1">Country</label>
										<select class="custom-select my-1 mr-sm-2"
											id="cartFormCustomSelectPref1">
											<option selected>Choose...</option>
											<option value="1">United States</option>
											<option value="2">Germany</option>
											<option value="3">Canada</option>
										</select>
									</div>
									End of Form
								</div> -->
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="phone">핸드폰 번호</label>
										<input type="number" value="${mVo.phone}"
										class="form-control" id="phone" name="phone" aria-describedby="cartInputPhone1">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="bday">생년월일</label>
										<input type="text" value="${mVo.bday}" class="form-control"
										id="bday" name="bday" aria-describedby="cartInputCity1">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="zipcode">우편번호</label>
										<input type="number" value="${mVo.mZipcode}"
										class="form-control" id="mZipcode" name="mZipcode" aria-describedby="cartInputZip1">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">

									<!-- Form -->
									<div class="form-group mb-4">
										<label for="mAddress">주소</label>
										<input type="text" value="${mVo.mAddress}" class="form-control"
										id="mAddress" name="mAddress" aria-describedby="cartInputAdress1" required>
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="mAddressDetail">상세주소</label>
										<input type="text" value="${mVo.mAddressDetail}" class="form-control"
										id="mAddressDetail" name="mAddressDetail" aria-describedby="cartInputCompany2" required>
									</div>
									<!-- End of Form -->
								</div>
								<div class="text-center">

									<button type="submit" class="btn btn-block btn-primary mt-4"
										id="apibtn">결제하기</button>
								</div>


							</div>
						</div>
					</form>
					<form action="#" method="post" class="card border-light p-3 mb-4">
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
										<label for="cardCVCLabel">CVC <span
											class="text-danger">*</span></label> <input class="form-control"
											id="cardCVCLabel" placeholder="CVC" type="number" required="">
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
					</form>
				</div>
			</div>
		</div>
	</div>
</div>



<%@ include file="../inc/bottom.jsp"%>