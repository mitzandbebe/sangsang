<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                    
                    <div class="col-12 col-md-4 d-none d-lg-block">
    <!-- Navigation -->
    <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
                <img src="${pageContext.request.contextPath}/resources/assets/img/team/profile-picture-4.jpg" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">Neil Sims</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
                <a href="./account.html" class="d-flex list-group-item list-group-item-action ">Overview <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./settings.html" class="d-flex list-group-item list-group-item-action ">Settings<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/my-items'/>" class="d-flex list-group-item list-group-item-action ">내 클래스 참여현황<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./security.html" class="d-flex list-group-item list-group-item-action ">Security<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment'/>" class="d-flex list-group-item list-group-item-action " >내 결제내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./messages.html" class="d-flex list-group-item list-group-item-action  border-0">Messages<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
            </div>
        </div>
    </div>
</div>