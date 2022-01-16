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
                	<img src="<c:url value='/resources/file_upload/${sessionScope.mFilename }'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait"
                	onerror="this.src='${sessionScope.mFilename }'">
                </c:if>
                <c:if test="${empty sessionScope.mFilename }">
                	<img src="<c:url value='/resources/file_upload/default.png'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
                </c:if>
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.mNickname}</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
               <a href="<c:url value='/dashboard/user/payment/myAccount'/>" class="d-flex list-group-item list-group-item-action active">내 정보조회 <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/memberEditChkPwd'/>" class="d-flex list-group-item list-group-item-action">회원정보 수정<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/myPayment'/>" class="d-flex list-group-item list-group-item-action ">내 결제내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="d-flex list-group-item list-group-item-action">환불내역조회<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/interestClass'/>" class="d-flex list-group-item list-group-item-action ">내 관심클래스<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/note/noteList?mId=${sessionScope.mId }'/>"	class="d-flex list-group-item list-group-item-action border-0">쪽지함<span class="icon icon-xs ml-auto"><span	class="fas fa-chevron-right"></span></span>	</a>
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
                   <a href="<c:url value='/dashboard/user/payment/myAccount'/>" class="list-group-item list-group-item-action border-0 active">내 정보조회</a>
                    <a href="<c:url value='/member/memberEditChkPwd'/>" class="list-group-item list-group-item-action border-0 active">회원정보 수정</a>
                    <a href="<c:url value='/dashboard/user/payment/myPayment'/>" class="list-group-item list-group-item-action border-0   ">내 결제내역</a>
                    <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="list-group-item list-group-item-action d-none d-sm-block border-0 ">환불내역조회</a>
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
                        <div class="row">
                            <div class="col-12 col-sm-6 mb-4">
                               <div class="card border-light">
                                  <div class="card-body d-block d-md-flex align-items-center">
                                    <div class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
	                                    <c:if test="${vo.mGrade == 'silver'}">
                                        	<i class="far fa-laugh fa-3x"></i>
                                        </c:if>
                                        <c:if test="${vo.mGrade == 'gold'}">
                                        	<i class="far fa-laugh-squint fa-3x"></i>
                                        </c:if>
                                        <c:if test="${vo.mGrade == 'platinum'}">
                                        	<i class="far fa-kiss-wink-heart fa-3x"></i>
                                        </c:if>
                                        <c:if test="${vo.mGrade == 'diamond'}">
                                        	<i class="fas fa-gem fa-3x"></i>
                                        </c:if>
                                    </div>
                                    <div>
                                        <span class="d-block h6 font-weight-normal">
                                            나의 회원 등급 
                                        </span>
                                        
                                        <h5 class="h6 font-weight-bold mb-1">
                                        <c:if test="${vo.mGrade == 'silver'}">
                                        	"평범한 늘찬"님이시네요!
                                        </c:if>
                                        <c:if test="${vo.mGrade == 'gold'}">
                                        	"부지런한 늘찬"님이시네요!
                                        </c:if>
                                        <c:if test="${vo.mGrade == 'platinum'}">
                                        	"취미생활을 섭렵한 늘찬"님!
                                        </c:if>
                                        <c:if test="${vo.mGrade == 'diamond'}">
                                        	"찬란한 늘찬"님이시네요!
                                        </c:if>
                                        </h5>
                                    </div>
                                  </div>
                               </div>
                            </div>
                            <div class="col-12 col-sm-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-block d-md-flex align-items-center">
                                        <div class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0"><i class="fas fa-user-graduate fa-3x"></i></div>
                                        <div>
                                            <span class="d-block h6 font-weight-normal">
                                                내가 참여한 클래스 수 
                                            </span>
                                            <h5 class="h6 font-weight-bold mb-1">${classCnt}개</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="card card-body bg-white border-light mb-4">
                                    <h2 class="h5 mb-4">내 정보 조회</h2>
                                        <div class="card border-light p-2" style ="margin-bottom: 20px">
								        <div class="card-body p-2">
								        <div style="float: left; margin-left: 0px; margin-top:0px; " >
								            	<c:if test="${sessionScope.mFilename!='default.png' }">
								            		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
								                			<img src="${pageContext.request.contextPath }/resources/file_upload/${sessionScope.mFilename }" id="nImg" class="card-img-top rounded-circle border-white" alt="프로필사진">
								                		</div>
								           			 </div>
								                </c:if>
								                <c:if test="${sessionScope.mFilename=='default.png' }">
							                		<div class="profile-thumbnail small-thumbnail mx-auto" id="imagePreview">
								            			<div id="older">
									                		<img src="${pageContext.request.contextPath }/resources/assets/img/default.png" class="card-img-top rounded-circle border-white">
								                		</div>
								            		</div>
								                </c:if>
											</div>
										  <div class="col-md-8 mb-3" style = "float: left; margin-left: 0px; margin-top:10px;" >
                                                <div class="form-group">
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-id-card"></i>&nbsp;&nbsp;&nbsp;&nbsp;이름</span>
			                                            </div>
                                           				<input name ="mName" class="form-control" id="mName" readonly="readonly" type="text" value="${vo.mName}" >
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 mb-3" style = "float: left; margin-left: 0px;">
                                                <div class="form-group">
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-smile"></i>&nbsp;&nbsp;닉네임</span>
			                                            </div>
                                           				<input name ="mNickname" class="form-control" id="mNickname" readonly="readonly" type="text" value="${vo.mNickname}">
                                            		</div>
                                                </div>
                                            </div>
								       </div>
								    </div>
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-mobile-alt"></i>&nbsp;&nbsp;핸드폰번호</span>
			                                            </div>
	                                           	 		<input name ="phone" class="form-control" id="phone" readonly="readonly" maxlength="11" type="text" value="${vo.phone}">
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-birthday-cake"></i>&nbsp;&nbsp;생년월일</span>
			                                            </div>
	                                           			 <input name ="bday" class="form-control" id="bday" maxlength="6" readonly="readonly" type="text" value="${vo.bday}">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                        <!-- Form -->
                                    	<div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="fas fa-compass"></i>&nbsp;&nbsp;우편번호</span>
			                                            </div>
			                                           	<input name ="mZipcode" class="form-control" id="zipcode" readonly="readonly" type="text" value="${vo.mZipcode}">
			                                           	
                                            		</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                     <div class="input-group mb-4">
			                                            <div class="input-group-prepend">
			                                                <span class="input-group-text"><i class="far fa-compass"></i>&nbsp;&nbsp;주소</span>
			                                            </div>
                                           			  <input name ="mAddress" class="form-control" id="address" readonly="readonly" type="text" value="${vo.mAddress}">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                   	<div class="input-group mb-4">
                                		<div class="input-group-prepend">
                                            <span class="input-group-text"><i class="far fa-compass"></i>&nbsp;&nbsp;상세주소</span>
                                        </div>
                                       	<input name ="mAddressDetail" class="form-control" id="mAddressDetail"  readonly="readonly" type="text" value="${vo.mAddressDetail}">
                                    </div>
                                    <!-- End of Form -->
                                   </div>
                                   </div>
                                   
                        </div>
                    </div>
                </div>
            </div>
        </div>
					
           
       

<%@ include file="../../../inc/bottom.jsp"%>