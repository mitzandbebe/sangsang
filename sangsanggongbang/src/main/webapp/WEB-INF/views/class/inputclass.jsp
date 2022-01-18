<%@page import="com.gr.ssgb.hostclass.model.ContentsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/new_top_host.jsp"  %>

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
								<!-- 나중에 hidden 으로 바꾸기 -->
								<%-- <input type="text" name="hNo" value="${param.hNo }"> --%>
								<!-- 임의로 1번호스트로 테스트 -->
								<input type="hidden" name="hNo" value="${hNo }">
								<input type="hidden" name="endFlag" value="N">
								
								
								<div class="row">
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="class_name">클래스 이름</label> <input
												class="form-control" id="cName" type="text"
												placeholder="클래스이름을 입력해주세요." name="cName" required>
										</div>
										<div class="invalid-feedback" data-sb-feedback="message:required">클래스이름을 입력하세요</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="thumbnail">대표이미지 </label> <input type="file"
												name="upfile" id="file"
												class="form-control flatpickr-input">
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="category">클래스 유형</label> <select
												class="custom-select" id="category" name="CateCode" required>
												<option disabled="disabled" selected="selected" value="" >
													클래스 유형을 선택해주세요.</option>
												<c:forEach var="vo" items="${ clist}">
													<option value="${vo.categoryCode }">${vo.categoryName }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="ppnum">클래스 진행인원</label> <input required
												class="form-control" id="number" type="number" min="1"
												placeholder="인원선택" name="ppnum">
										</div>
									</div>
								</div>
								<div class="row align-items-center">
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="class_name">클래스 가격</label> <input required
												class="form-control" id="cprice" type="number" min="0"
												placeholder="클래스가격을 입력해주세요." name="cPrice">
										</div>
									</div>
								</div>
								<div class="input-daterange datepicker row align-items-center" >
									<div class="col-md-6 mb-3">
										<div class="form-group">
										<label for="frmdate">클래스 날짜(월/일/년도)</label>
											<div class="input-group input-group-border">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="far fa-calendar-alt">&nbsp;시작날짜</i></span>
												</div>
												<input class="form-control datepicker" placeholder="${now }"
													type="text" id="date" name="cStart" required min="${now }">
											</div>
										</div>
									</div>
									<%-- <div class="col">
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
									</div> --%>
									<div class="col-md-6 mb-3">
										<div class="form-group">
											<label for="category">클래스 시간</label>
											 <select
												class="custom-select" id="cTime" name="cTime" required>
												<option disabled="disabled" selected="selected" value="">
													시간을 선택해주세요</option>
													<option value="1">1:00</option>
													<option value="2">2:00</option>
													<option value="3">3:00</option>
													<option value="4">4:00</option>
													<option value="5">5:00</option>
													<option value="6">6:00</option>
													<option value="7">7:00</option>
													<option value="8">8:00</option>
													<option value="9">9:00</option>
													<option value="10">10:00</option>
													<option value="11">11:00</option>
													<option value="12">12:00</option>
													<option value="13">13:00</option>
													<option value="14">14:00</option>
													<option value="15">15:00</option>
													<option value="16">16:00</option>
													<option value="17">17:00</option>
													<option value="18">18:00</option>
													<option value="19">19:00</option>
													<option value="20">20:00</option>
													<option value="21">21:00</option>
													<option value="22">22:00</option>
													<option value="23">23:00</option>
													<option value="24">24:00</option>
											</select>
										</div>
									</div>
								</div>

								<h2 class="h5 my-4">클래스 컨텐츠</h2>
									<div class="form-group">
		                                <label for="description">클래스 설명</label>
		                                <textarea rows="10" class="form-control text-gray" name="content" id="description" required></textarea>
                            		</div>
								<div class="row">
									
									<div class="col-sm-9 mb-3">
										<div class="form-group">
											<div>
												<label for="upfile">사진 </label> 
												<span style="color:red;size:12px;">첨부파일은 최대 5개까지 등록이 가능합니다.</span>
											<div class="form-group">
											<input type="file"
												name="upfile1" id="file"
												class="form-control flatpickr-input">
											</div>
											<div class="form-group">
											 <input type="file"
												name="upfile2" id="file"
												class="form-control flatpickr-input">
											</div>
											<div class="form-group">
											<input type="file"
												name="upfile3" id="file"
												class="form-control flatpickr-input">
											</div>
											<div class="form-group">
											<input type="file"
												name="upfile4" id="file"
												class="form-control flatpickr-input">
											</div>
											<div class="form-group">
											<input type="file"
												name="upfile5" id="file"
												class="form-control flatpickr-input">
											</div>
											</div>
										</div>
									</div>
								</div>

								<h2 class="h5 my-4">클래스 위치</h2>
								<div class="row">
									<!--  -->
									<div class="col-sm-9 mb-3">
										<div class="form-group">
											<label for="zipcode">우편번호</label>
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
												<input name="lAddress" class="form-control" id="address"
													readonly="readonly" placeholder="우편번호 검색시 자동으로 입력됩니다."
													type="text" required>
											</div>
										</div>
									</div>
									<div class="col-md-7 mb-3">
										<label for="lAddressDetail">상세주소</label>
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
									<button type="submit" class="btn btn-primary" onclick="check();">등록하기</button>
									<!-- <button type="button" class="btn btn-primary"  onclick="check();">등록하기</button> -->
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
function check(){
	
      if ($('#zipcode').val().length<1){
         alert('우편번호를 검색해주세요.');
         $('#zipcode').focus();
         event.preventDefault();
     	return false;
	 }
      
   /*    let now = ${now};
      let date = $('#date').getTime();
      
	  if(Number(date)<Number(now)){
		  alert('현재날짜보다 작은 날짜입니다.');
		  $('#date').focus();
		  event.preventDefault();
		  return false;
	  } */
      
	// document.frmClass.submit(); // 서브밋으로보내기
};


/*
$(document).ready(function()
		// input file 파일 첨부시 fileCheck 함수 실행
		{
			$("#input_file").on("change", fileCheck);
		});

 // 첨부파일로직

$(function () {
    $('#btn-upload').click(function (e) {
        e.preventDefault();
        $('#input_file').click();
    });
});
 
// 파일 현재 필드 숫자 totalCount랑 비교값
var fileCount = 0;
// 해당 숫자를 수정하여 전체 업로드 갯수를 정한다.
var totalCount = 5;
// 파일 고유넘버
var fileNum = 0;
// 첨부파일 배열
var content_files = new Array();

function fileCheck(e) {
    var files = e.target.files;
    
    // 파일 배열 담기
    var filesArr = Array.prototype.slice.call(files);
    
    // 파일 개수 확인 및 제한
    if (fileCount + filesArr.length > totalCount) {
      $.alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
      return;
    } else {
    	 fileCount = fileCount + filesArr.length;
    }
    
    // 각각의 파일 배열담기 및 기타
    filesArr.forEach(function (f) {
      var reader = new FileReader();
      reader.onload = function (e) {
        content_files.push(f);
        $('#articlefileChange').append(
       		'<div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
       		+ '<font style="font-size:12px">' + f.name + '</font>'  
       		+ '<a href="javascript:void(0);">❌</a>' 
       		+ '<div/>'
		);
        fileNum ++;
      };
      reader.readAsDataURL(f);
    });
    console.log(content_files);
    //초기화 한다.
    $("#input_file").val("");
  }

// 파일 부분 삭제 함수
function fileDelete(fileNum){
    var no = fileNum.replace(/[^0-9]/g, "");
    content_files[no].is_delete = true;
	$('#' + fileNum).remove();
	fileCount --;
    console.log(content_files);
}

 //폼 submit 로직
 
	function registerAction(){
		
	var form = $("form")[0];        
 	var formData = new FormData(form);
		for (var x = 0; x < content_files.length; x++) {
			// 삭제 안한것만 담아 준다. 
			if(!content_files[x].is_delete){
				 formData.append("article_file", content_files[x]);
			}
		}
  
   //파일업로드 multiple ajax처리
     
	$.ajax({
   	      type: "POST",
   	   	  enctype: "multipart/form-data",
   	      url: "class/file-upload",
       	  data : formData,
       	  processData: false,
   	      contentType: false,
   	      success: function (data) {
   	    	if(JSON.parse(data)['result'] == "OK"){
   	    		alert("파일업로드 성공");
			} else
				alert("파일업로드 실패");
   	      },
   	      error: function (xhr, status, error) {
   	    	alert("파일업로드에 실패하였습니다.");
   	     return false;
   	      }
   	    });
   	    return false;
	}
 */




	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.querySelector("#zipcode").value = data.zonecode;
				document.querySelector("#address").value = data.address
			}
		}).open();
	}
</script>

<%@include file="../inc/bottom_host.jsp"%>