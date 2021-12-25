<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/top.jsp"  %>
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
                             <input name="mId" class="form-control" id="exampleInputIcon4" type="text" aria-label="email adress"
                             value="${sessionScope.mId }" >
                         </div>
                     </div>
                     <div class="form-group">
                         <label for="exampleInputIcon4">sns계정 여부</label>
                         <div class="input-group mb-4">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                             </div>
                             <input name="snsCheck" class="form-control" id="exampleInputIcon4" type="text" aria-label="email adress"
                             value="${sessionScope.snsCheck }">
                         </div>
                     </div>
                </div>
            </div>
        	<c:import url="/mainevent/eventmain"/>
        </section>
        
       
    </main>
<%@ include file="inc/bottom.jsp" %>