<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top_host.jsp" %>
<script src="https://kit.fontawesome.com/2db6e9a548.js" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>   
    
<div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                
                    <div class="col-12 col-md-4 d-none d-lg-block">
    <!-- Navigation -->
    <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
            	<c:if test="${!empty sessionScope.hFilename }">
                	<img src="<c:url value='/resources/file_upload/${sessionScope.hFilename }'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait"
                	onerror="this.src='${sessionScope.mFilename }'">
                </c:if>
                <c:if test="${empty sessionScope.hFilename }">
                	<img src="<c:url value='/resources/assets/img/default.png'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
                </c:if>
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.hNickname}</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
               <a href="<c:url value='/dashboard/host/account'/>" class="d-flex list-group-item list-group-item-action ">마이페이지 <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/host/hostEditChkPwd'/>" class="d-flex list-group-item list-group-item-action  active ">회원정보 수정<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/my-items'/>" class="d-flex list-group-item list-group-item-action ">내 클래스 현황<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span></a>
                <a href="./security.html" class="d-flex list-group-item list-group-item-action ">Security<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/host/balancing'/>" class="d-flex list-group-item list-group-item-action " >정산내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./messages.html" class="d-flex list-group-item list-group-item-action  border-0">Messages<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
            </div>
        </div>
    </div>
</div>
<div class="col-12 d-lg-none">
    <div class="card bg-white border-light mb-4 mb-lg-5">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-10 d-flex">
                    <a href="./account.html" class="list-group-item list-group-item-action border-0 ">Overview</a>
                    <a href="./settings.html" class="list-group-item list-group-item-action border-0  active ">Settings</a>
                    <a href="./my-items.html" class="list-group-item list-group-item-action d-none d-sm-block border-0 ">My Items</a>
                    <a href="./security.html" class="list-group-item list-group-item-action d-none d-md-block border-0 ">Security</a>
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
                            <a href="./my-items.html" class="list-group-item list-group-item-action d-sm-none border-0 ">My Items</a>
                            <a href="./security.html" class="list-group-item list-group-item-action d-md-none border-0 ">Security</a>
                            <a href="./billing.html" class="list-group-item list-group-item-action border-0 ">Billing</a>
                            <a href="./messages.html" class="list-group-item list-group-item-action border-0 ">Messages</a> 
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
                                    <h2 class="h5 mb-4">비밀번호 확인</h2>
                                    <form method="post" action="<c:url value='/host/hostEditChkPwd'/> ">
                                    <!-- Form -->
                                    <label for="pwd">비밀번호 입력</label>
                                   	<div class="input-group mb-4">
                                		<div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                        </div>
                                       	<input name ="hId" class="form-control" id="hId" type="hidden" value="${sessionScope.hId }" aria-describedby="button-addon2">
                                       	<input name ="hPwd" class="form-control" id="pwd"  placeholder="비밀번호를 입력하세요." type="password">
                                       	<button type="button" id="button-addon2" class="btn btn-outline-primary" >비밀번호 확인</button>
                                    </div>
                                    <!-- End of Form -->
                                    </form>
                                    <div><a href="<c:url value='/member/findPwd'/>" class="small text-right">비밀번호를 잊으셨어요?</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 <%@ include file="../inc/bottom_host.jsp" %>