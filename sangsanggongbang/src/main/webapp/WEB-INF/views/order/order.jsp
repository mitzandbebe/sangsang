<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!DOCTYPE html>

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
											placeholder="M_NAME" class="form-control" id="M_NAME"
											aria-describedby="M_NAME">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCity1">선택시간</label> <input type="text"
											placeholder="M_NAME" class="form-control" id="M_NAME"
											aria-describedby="M_NAME">
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
									<a href="#" id="num-sub">-</a> <input type="text" id="quantity"
										value="1" class="only-number" /> <a href="#" id="num-add">+</a>
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
										<label for="cartInputCity1">회원사진</label> <input type="text"
											placeholder="M_NAME" class="form-control" id="M_NAME"
											aria-describedby="M_NAME">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCity1">닉네임</label> <input type="text"
											placeholder="M_NAME" class="form-control" id="M_NAME"
											aria-describedby="M_NAME">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputEmail1">아이디</label> <input type="email"
											class="form-control" placeholder="example@company.com"
											id="cartInputEmail1" aria-describedby="cartInputEmail1"
											required>
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
										<label for="cartInputPhone1">핸드폰 번호</label> <input
											type="number" placeholder="010-0000-0000"
											class="form-control" id="cartInputPhone1"
											aria-describedby="cartInputPhone1">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCity1">생년월일</label> <input type="text"
											placeholder="BDAY" class="form-control" id="BDAY"
											aria-describedby="cartInputCity1">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputZip1">우편번호</label> <input type="number"
											placeholder="123456" class="form-control" id="cartInputZip1"
											aria-describedby="cartInputZip1">
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">

									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCompany1">주소</label> <input type="text"
											placeholder="M_ADDRESS" class="form-control" id="M_ADDRESS"
											aria-describedby="cartInputAdress1" required>
									</div>
									<!-- End of Form -->
								</div>
								<div class="col-12 col-lg-6">
									<!-- Form -->
									<div class="form-group mb-4">
										<label for="cartInputCompany1">상세주소</label> <input type="text"
											placeholder="Company LLC" class="form-control"
											id="M_ADDRESS_DETAIL" aria-describedby="cartInputCompany1"
											required>
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