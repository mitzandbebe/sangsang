<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../inc/new_top_user.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
</script>

<form name="frmPage" method="post" 
	action="<c:url value='/dashboard/user/payment/myPayment'/>">
	<input type="hidden" name="currentPage">
</form>

<div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                
                    <div class="col-12 col-md-4 d-none d-lg-block">
    <!-- Navigation -->
    <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
            	<c:if test="${!empty sessionScope.mFilename }">
                	<img src="<c:url value='/resources/file_upload/${sessionScope.mFilename }'/>" style = "width:129; height:129;"class="card-img-top rounded-circle border-white" alt="Joseph Portrait"
                	onerror="this.src='${sessionScope.mFilename }'">
                </c:if>
                <c:if test="${empty sessionScope.mFilename }">
                	<img src="<c:url value='/resources/file_upload/default.png'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
                </c:if>
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.mNickname}</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
               <a href="<c:url value='/dashboard/user/payment/myAccount'/>" class="d-flex list-group-item list-group-item-action ">내 정보조회 <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/memberEditChkPwd'/>" class="d-flex list-group-item list-group-item-action">회원정보 수정<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/myPayment'/>" class="d-flex list-group-item list-group-item-action ">내 결제내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="d-flex list-group-item list-group-item-action active">환불내역조회<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/interestClass'/>" class="d-flex list-group-item list-group-item-action ">내 관심클래스<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/memberEditChkPwd2'/>" class="d-flex list-group-item list-group-item-action  border-0">회원탈퇴<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
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
                    <a href="<c:url value='/member/memberEditChkPwd'/>" class="list-group-item list-group-item-action border-0 active">회원정보 수정</a>
                    <a href="<c:url value='/dashboard/user/payment/myPayment'/>" class="list-group-item list-group-item-action border-0   ">내 결제내역</a>
                    <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="list-group-item list-group-item-action d-none d-sm-block border-0 active">환불내역조회</a>
                    <a href="<c:url value='/member/interestClass'/>" class="list-group-item list-group-item-action d-none d-md-block border-0 ">내 관심클래스</a>
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
                            <a href="<c:url value='/member/interestClass'/>" class="list-group-item list-group-item-action d-md-none border-0 ">내 관심클래스</a>
                            <a href="<c:url value='/member/memberEditChkPwd2'/>" class="list-group-item list-group-item-action border-0 ">회원탈퇴</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
  					<div class="col-12 col-lg-8">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab-grid-1" role="tabpanel"
                                aria-labelledby="tab-grid-1-tab">
                                <h1 class="h3"><i class="fas fa-angle-double-right"></i>클래스 환불 요청</h1>
                                <h5 class="h6 mb-3">환불 요청 완료 시 환불 타탕성 검토를 거친 뒤 영업일 기준 2~3일 후에 환불됩니다.</h5>
                                <div class="row justify-content-center">
                                    <div class="col-12 col-sm-10 col-md-6 col-lg-12 mb-4">
                                        <div class="card border-light mb-4 animate-up-5">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-12 col-lg-6 col-xl-5">
                                                 	<a href="<c:url value='/class/detail?cNo=${map["C_NO"] }&categoryName=${map["CATEGORYNAME"] }&hNo=${map["H_NO"]}'/>">
                                                       <c:choose >
                                                        <c:when test="${!empty map['THUMBNAIL']}">
			                                        	<img src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/>" alt="private office" class="card-img p-2 rounded-xl" style="width: 290px; height:192px">
			                                    	</c:when>
			                                    	<c:when test="${empty map['THUMBNAIL']}">
			                                        	<img
														src="<c:url value='/resources/upload_images/basic.png'/>"
														alt="private office" class="card-img p-2 rounded-xl"
														style="width: 290px; height: 192px">
			                                    	</c:when>
			                                    	</c:choose>
                                                    </a>
                                                </div>
                                                <div class="col-12 col-lg-6 col-xl-7">
                                                    <div class="card-body p-3 p-md-1 ">
                                                        <h4 class="h5">${map['C_NAME'] }</h4>
                                                        <fmt:formatDate var="today" value="${now }" pattern="yyyyMMdd" />
                                                        <fmt:formatDate var="startTime" value="${map['C_START_TIME']}" pattern="yyyyMMdd" />
                                                        <ul class="list-group mb-2">
                                                            <li class="list-group-item small p-0 mb-1"><i class="fas fa-calendar-alt"></i>&nbsp;&nbsp;&nbsp;결제일:&nbsp;&nbsp;&nbsp;
                                                            <fmt:formatDate value='${map["PAYDATE"] }' pattern="yyyy-MM-dd"/></li>
                                                       	</ul>
                                               			
                                                        <div class="d-flex justify-content-between">
                                                            <div class="col mt-4">
                                                                <span class="text-muted font-middle d-block">환불예정금액</span>
                                                            </div>
                                                            <div class="col" style="margin-top: 18px">
                                                                <i class="fas fa-equals"></i>&nbsp;&nbsp;&nbsp;<span class="h4 text-dark font-weight-bold"><span style="color: red;">
                                                                <fmt:formatNumber value="${map['C_PRICE'] * map['EA'] }" pattern="#,###"/></span>원</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-12">
				                       <div class="row mt-5">
				                           <div class="col-lg-12">
				                               <div class="card card-body bg-white border-light mb-4">
				                                   <h2 class="h5 mb-4">환불 신청</h2>
				                                   <form method="post" action="<c:url value='/dashboard/user/payment/refundSubmit'/> ">
				                                   <!-- Form -->
				                                   <label for="reason">환불사유</label>
				                                  	<div class="input-group mb-4">
				                               		<div class="input-group-prepend">
				                                           <span class="input-group-text"><i class="fas fa-feather-alt"></i></span>
				                                       </div>
				                                       <input type="hidden" value='${map["MERCHANT_UID"]}' name="merchantUid">
				                                      	<select class="custom-select" id="button-addon2" name = "reason">
														<option selected>환불사유를 선택하세요.</option>
														<option value="늘솜의 사정으로 클래스를 진행하지 않았어요.">늘솜의 사정으로 클래스를 진행하지 않았어요.</option>
														<option value="클래스 당일날 진행장소 변경으로 참여하지 못했어요.">클래스 당일날 진행장소 변경으로 참여하지 못했어요.</option>
														<option value="충분한 수업도구가 구비되어 있지 않아 수업을 진행할 수 없었어요.">충분한 수업도구가 구비되어 있지 않아 수업을 진행할 수 없었어요.</option>
													</select>
				                                      	<button type="submit" id="button-addon2" class="btn btn-outline-primary" >환불요청</button>
				                                   </div>
				                                   </form>
				                               </div>
				                           </div>
				                       </div>
				                   </div>
                               </div>
                            </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
</div>
					
           
       

<%@ include file="../../../inc/bottom.jsp"%>