<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="memberTop.jsp" %>
       <!-- Section -->
         <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang3.png">
            <div class="container">
            <div class="col-12 d-flex justify-content-center">
               <div class="col-12 col-lg-8">
               <form id="fPwd" method ="post" action="<c:url value='/mail/send'/>">
                        <div class="card border-light p-0 p-md-4 mb-4">
                            <div class="card-header">
                               <h3 class="h5 mb-0"><strong>비밀번호를 잊으셨나요?</strong></h3>
                               <br>
                               <p class="text-sm mb-0">가입 이메일로 비밀번호 찾기</p>
                            </div>
                            <ul class="list-group list-group-flush">
                               <li class="list-group-item">
                                 <div class="col-md-12 mb-3">
	                                 <div class="form-group">
	                                 	<label for="phone">가입 이메일 주소</label>
	                                 	<div class="input-group mb-4">
	                                 		<div class="input-group-prepend">
	                                 			<span class="input-group-text"><span class="fas fa-envelope"></span></span>
	                                 		</div>
                             	 			<input name ="mId" class="form-control" id="mId"  placeholder="가입하신 이메일을 입력하세요." type="text"  aria-describedby="button-addon2">
                             	 			<button type="submit" id="button-addon2" class="btn btn-outline-primary">메일 발송</button>
	                             	 	</div>
                                 	</div>
                             	</div>
                               </li>
                            </ul>
                        </div>
                       </form>
                    </div>
                 </div>
            </div>
        </section>
    </main>
<%@ include file="memberBottom.jsp" %>