<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../inc/top.jsp"%>

<section style="margin-top: 150px">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="text-center text-md-center mb-5 mt-md-0 text-white">
					<span class="badge badge-primary ml-2"
						style="background-color: #82afc5;">클래스등록</span>
					<h1 class="mb-0 h3" style="color: #679093; margin-top: 10px;">
						늘솜님 환영합니다!</h1>
				</div>
			</div>
			<div class="col-12 col-lg-8">
				<div class="row">
					<div class="col-lg-12">
						<div class="card card-body bg-white border-light mb-4">
							<h2 class="h5 mb-4">클래스정보</h2>
							<form name="frmClass" method="post" enctype="multipart/form-data"
								action="<c:url value='/class/inputclass'/> ">
								<div class="row">
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="class_name">클래스 이름</label> <input
												class="form-control" id="cName" type="text"
												placeholder="클래스이름을 입력해주세요.">
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="upfile">대표이미지 </label> <input type="file"
												name="thumbnail" id="upfile"
												class="form-control flatpickr-input">
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="category">클래스 유형</label> <select
												class="custom-select" id="category">
												<option disabled="disabled" selected="selected">
													클래스 유형을 선택해주세요.</option>
												<c:forEach var="vo" items="${ clist}">
													<option value="${vo.categoryCode }" name="CateCode">${vo.categoryName }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="ppnum">클래스 진행인원</label> <input
												class="form-control" id="number" type="number" min="1"
												placeholder="인원선택" name="ppnum">
										</div>
									</div>
								</div>
								<div class="row align-items-center">
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="class_name">클래스 가격</label> <input
												class="form-control" id="cprice" type="text"
												placeholder="클래스가격을 입력해주세요." name="cPrice">
										</div>
									</div>
								</div>

								<div class="row align-items-center">
									<div class="form-group">
										<h6 class="h6 mb-4" style="margin-left: 12px;">클래스 시작날짜와
											끝날짜를 선택해주세요. (월/일/년도)</h6>
									</div>
								</div>
								<div class="input-daterange datepicker row align-items-center">
									<div class="col">
										<div class="form-group">
											<div class="input-group input-group-border">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="far fa-calendar-alt">&nbsp;시작날짜</i></span>
												</div>
												<input class="form-control" placeholder="Start date"
													type="text" value="${now }" name="cStart">
											</div>
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<div class="input-group input-group-border">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="far fa-calendar-alt">&nbsp;끝날짜</i></span>
												</div>
												<input class="form-control" placeholder="End date"
													type="text" value="${now }" name="cEnd">
											</div>
										</div>
									</div>
								</div>

								<h2 class="h5 my-4">클래스 컨텐츠</h2>
								<div class="row">
									<div class="col-sm-9 mb-3">
										<h6 class="h6 mb-4" style="margin-left: 12px;">클래스 사진등록</h6>
									</div>
									<div class="col-sm-9 mb-3">
										<div class="form-group">
											<div>
												<label for="upfile">사진1 </label> <input type="file"
													name="cFilename" id="upfile"
													class="form-control flatpickr-input">
											</div>
										</div>
									</div>
								</div>

								<h2 class="h5 my-4">클래스 위치</h2>
								<div class="row">
									<!--  -->
									<div class="col-sm-9 mb-3">
										<div class="form-group">
											<label for="mZipcode">우편번호</label>
											<div class="input-group mb-4">
												<div class="input-group-prepend">
													<span class="input-group-text"><i
														class="fas fa-compass"></i></span>
												</div>
												<input name="zipcode" class="form-control" id="zipcode"
													readonly="readonly" placeholder="우편번호를 검색하세요." type="text"
													aria-describedby="button-addon2" required>
												<button type="button" id="button-addon2"
													class="btn btn-outline-primary" onclick="kakaopost()">우편번호
													검색</button>
											</div>
										</div>
									</div>
									<div class="col-md-7 mb-3">
										<div class="form-group">
											<label for="lAddress">주소</label>
											<div class="input-group mb-4">
												<div class="input-group-prepend">
													<span class="input-group-text"><i
														class="far fa-compass"></i></span>
												</div>
												<input name="mAddress" class="form-control" id="address"
													readonly="readonly" placeholder="우편번호 검색시 자동으로 입력됩니다."
													type="text" required>
											</div>
										</div>
									</div>
									<div class="col-md-7 mb-3">
										<label for="mAddressDetail">상세주소</label>
										<div class="input-group mb-4">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="far fa-compass"></i></span>
											</div>
											<input name="lAddressDetail" class="form-control"
												id="addressDetail" placeholder="상세주소를 입력하세요." type="text"
												required>
										</div>
									</div>

								</div>
								<div class="mt-3">
									<button type="submit" class="btn btn-primary">등록하기</button>
								</div>

							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script
	src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/>"></script>
<script type="text/javascript">
	$(function() {
		$('#btmain').click(function() {
			location.href = "<c:url value='/index'/>";
		});
		$('#btlist').click(function() {
			location.href = "<c:url value='/mainevent/eventlist'/>";
		});
		$('#btupdate')
				.click(
						function() {
							location.href = "<c:url value='/mainevent/eventupdate?newsNo=${vo.newsNo}'/>";
						});
		$('#btdelete')
				.click(
						function() {
							location.href = "<c:url value='/mainevent/eventdelete?newsNo=${vo.newsNo}'/>";
						});
	});

	$('.datepicker')[0] && $('.datepicker').each(function() {
		$('.datepicker').datepicker({
			disableTouchKeyboard : true,
			autoclose : false
		});
	});

	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.querySelector("#zipcode").value = data.zonecode;
				document.querySelector("#address").value = data.address
			}
		}).open();
	}
</script>

<%@include file="../inc/bottom.jsp"%>