<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 탑삽입해야함 -->
<%@include file="../inc/top.jsp" %>
    <main>

        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
    <div class="position-relative">
        <img src="${pageContext.request.contextPath }/resources/assets/img/brand/light-without-letter.svg" alt="Logo loader">
        <img src="${pageContext.request.contextPath }/resources/assets/img/brand/letter.svg" class="rotate-letter" alt="Letter loader">
    </div>
</div>

        <!-- Hero -->
        <section class="section-header pb-7 bg-primary text-white">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10 text-center">
                        <div class="mb-4">
                            <a href="#" class="badge badge-secondary text-uppercase px-3">Event ${vo.newsNo }</a>
                        </div>
                        <h1 class="display-3 mb-4 px-lg-5">${vo.newsTitle }</h1>
                        <div class="post-meta"> 
                            <span class="post-date mr-3">
								<fmt:formatDate value= "${vo.newsRegdate }" pattern="yyyy/MM/dd HH:ss"/>
							</span> 
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="section section-sm bg-white pt-6">
            <article class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
						${vo.newsContent }
                    </div>
                </div>

            </article>
        </div>
   
    </main>
    
<!-- 푸터삽입해야함 -->
<%@include file="../inc/bottom.jsp" %>
