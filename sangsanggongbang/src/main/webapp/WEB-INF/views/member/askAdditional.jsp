<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="memberTop.jsp" %>
       <!-- Section -->
         <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="${pageContext.request.contextPath }/resources/assets/img/gongbang.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                            <h1 class="mb-0 h3">
                            상상공방의 늘찬이 되어주셔서 감사합니다!<br>
                            원활한 사이트 이용을 위해 부가정보를 입력하시겠어요?</h1>
                        </div>
                    </div> 
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                      		<a href="${pageContext.request.contextPath }/member/additional?snsCheck=${cookie.snsCheck.value}">
                      		<button class="btn mb-2 mr-2 btn-outline-secondary animate-up-2" type="button"><i class="far fa-thumbs-up mr-2"></i>네! 입력할래요</button></a>
                      		<a href="${pageContext.request.contextPath }/main">
                      		<button class="btn mb-2 mr-2 btn-gray animate-up-2" type="button" style="float: right;">로그인하러 갈래요.</button></a>
                      	</div>
                     </div>      
                </div>
            </div>
        </section>
    </main>
<%@ include file="memberBottom.jsp" %>