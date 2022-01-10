<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../inc/top.jsp"  %>
        <!-- Hero -->

        <section class="section-header">
            <div class="container">
                <div class="row justify-content-center">
                     <div class="form-group">
                         <label for="exampleInputIcon4">로그인 정보(계정)</label>
                         <div class="input-group mb-4">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                             </div>
                             <input name="mId" class="form-control" id="exampleInputIcon4" type="hidden" aria-label="email adress"
                             value="${sessionScope.mId }" >
                         </div>
                     </div>
                     <div class="form-group">
                         <label for="exampleInputIcon4">sns계정 여부</label>
                         <div class="input-group mb-4">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                             </div>
                             <input name="snsCheck" class="form-control" id="exampleInputIcon4" type="hidden" aria-label="email adress"
                             value="${sessionScope.snsCheck }">
                         </div>
                     </div>
                </div>
            </div>
            <div class="card bg-white border-light p-4 mb-4">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="font-small">
                        <a href="#">
                            <img class="avatar-sm img-fluid rounded-circle mr-2" alt="avatar"
                            <c:if test="${!empty sessionScope.mFilename}">
                                src="<c:url value='/resources/file_upload/${sessionScope.mFilename}'/>" 
                            </c:if>
                            <c:if test="${!empty sessionScope.mFilename}">
                                src="<c:url value='/resources/file_upload/default.png'/>" 
                            </c:if>     
                             >  
                            <span class="font-weight-bold">${sessionScope.mNickname}</span>
                    </a>
                    <span class="ml-2">March 26, 19:25</span>
                    </span>
                    <div class="d-none d-sm-block">
                        <button class="btn btn-link text-dark" aria-label="phone" data-toggle="tooltip" data-placement="top" title="Sent from the phone " data-original-title="Sent from the phone">
                            <span class="fas fa-mobile-alt"></span>
                        </button>
                    </div>
                </div>
                <p class="m-0">
                    Hi Chris! Thanks a lot for this very useful template. Saved me a lot of time and searches on the internet.
                </p>
            </div>
            <div style="text-align:center;">
            <c:import url="/mainevent/eventmain"></c:import>
            <c:import url="/class/classlist"></c:import>
            </div>
        </section>

<%@ include file="../inc/bottom.jsp" %> 
