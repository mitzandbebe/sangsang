<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 탑 넣기 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/new_top_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/new_top_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:otherwise>
</c:choose>
<!-- 탑 완료 -->
<!-- Hero -->
        <section class="section-header bg-primary text-white pb-9 pb-lg-12 mb-4 mb-lg-6">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 text-center">
                        <h1 class="display-2 mb-3">Legal center</h1>
                        <p class="lead">One place for our legal documentation and policies</p>
                    </div>
                </div>
            </div>
            <div class="pattern bottom"></div>
        </section>
        <div class="section section-lg pt-0">
            <div class="container mt-n8 mt-lg-n12 z-2">
                <div class="row justify-content-center">
                    <div class="col col-md-10">
                        <!--Accordion-->
                        <div class="accordion border-light">
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-what-is-pixel" data-target="#panel-what-is-pixel" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-what-is-pixel">
                                    <span class="icon-title h6 mb-0 font-weight-bold">Terms of Service</span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-what-is-pixel">
                                    <div class="pt-3">
                                        <p>By accessing and placing an order with Themesberg, you confirm that you are in agreement with and bound by the terms and conditions contained in the Terms Of Use outlined below. These terms apply to the entire website and any email or other type of communication between you and Themesberg.</p>
                                        <p>Read more about <a href="./terms.html">terms of service</a>.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-clients" data-target="#panel-clients" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-clients">
                                    <span class="icon-title h6 mb-0 font-weight-bold">Policies</span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-clients">
                                    <div class="pt-3">
                                        <p>By accessing and placing an order with Themesberg, you confirm that you are in agreement with and bound by the terms and conditions contained in the Terms Of Use outlined below. These terms apply to the entire website and any email or other type of communication between you and Themesberg.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-demo" data-target="#panel-demo" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-demo">
                                    <span class="icon-title h6 mb-0 font-weight-bold">Agreements</span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-demo">
                                    <div class="pt-3">
                                        <p>By accessing and placing an order with Themesberg, you confirm that you are in agreement with and bound by the terms and conditions contained in the Terms Of Use outlined below. These terms apply to the entire website and any email or other type of communication between you and Themesberg.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-money-back" data-target="#panel-money-back" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-money-back">
                                    <span class="icon-title h6 mb-0 font-weight-bold">Forms
                                        guarantee?</span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-money-back">
                                    <div class="pt-3">
                                        <p>Please read the following page regarding refunds: <a href="./support.html" >Refund Policy</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-updates" data-target="#panel-updates" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-updates">
                                    <span class="icon-title h6 mb-0 font-weight-bold">Archive</span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-updates">
                                    <div class="pt-3">
                                        <p>By accessing and placing an order with Themesberg, you confirm that you are in agreement with and bound by the terms and conditions contained in the Terms Of Use outlined below. These terms apply to the entire website and any email or other type of communication between you and Themesberg.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-support" data-target="#panel-support" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-support">
                                    <span class="icon-title h6 mb-0 font-weight-bold">Cookies</span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-support">
                                    <div class="pt-3">
                                        <p class="mb-0">Got a question? Let us know and we'll try our best to answer you at the <a href="./support.html">support center</a>.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-copyright" data-target="#panel-copyright" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-copyright">
                                    <span class="icon-title h6 mb-0 font-weight-bold">Copyright Notice</span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-copyright">
                                    <div class="pt-3">
                                        <p class="mb-0">Got a question? Let us know and we'll try our best to answer you at the <a href="./support.html">support center</a>.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End of Accordion-->
                    </div>
                </div>
            </div>
        </div>
        <section class="section section-lg pt-0 line-bottom-light">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-4 text-center px-4 mb-5">
                        <div class="icon icon-sm icon-shape icon-shape-secondary rounded mb-4">
                            <span class="fas fa-envelope-open-text"></span>
                        </div>
                        <h5 class="mb-3">Email us</h5>
                        <p class="px-5 px-sm-7 px-lg-0">
                            Email us for general queries, including marketing and partnership opportunities.                              
                        </p>
                        <a class="font-weight-bold text-primary" href="mailto:office@company.com">office@company.com</a>
                    </div>
                    <div class="col-12 col-lg-4 text-center px-4 mb-5">
                        <div class="icon icon-sm icon-shape icon-shape-secondary rounded mb-4">
                            <span class="fas fa-phone-volume"></span>
                        </div>
                        <h5 class="mb-3">Call us</h5>
                        <p class="px-5 px-sm-7 px-lg-0">
                            Call us to speak to a member of our team.We are always happy to help you.                             
                        </p>
                        <a class="font-weight-bold text-primary" href="#">+1 (234) 567890</a>
                    </div>
                    <div class="col-12 col-lg-4 text-center px-4">
                        <div class="icon icon-sm icon-shape icon-shape-secondary rounded mb-4">
                            <span class="fab fa-slack"></span>
                        </div>
                        <h5 class="mb-3">Slack</h5>
                        <p class="px-5 px-sm-7 px-lg-0">
                            Join our Slack community to chat with us and hundreds of Dovetail users.                           
                        </p>
                        <a class="btn btn-sm btn-outline-primary" href="#">
                            Join our Slack
                            <span class="fas fa-long-arrow-alt-right ml-2"></span>
                        </a>
                    </div>
                </div>
            </div>
        </section>

<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/bottom_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/bottom.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/bottom_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/bottom.jsp"%>
	</c:otherwise>
</c:choose>
<!-- 바텀 완료 -->
   