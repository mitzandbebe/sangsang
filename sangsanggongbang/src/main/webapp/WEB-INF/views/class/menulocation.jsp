<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/new_top_user.jsp"  %>
        <section class="section section-lg pb-lg-6 pb-5">
            <div class="container">
                <div class="row mt-6">
                	<c:set var="address" value="${ map['LOC']}"/>
                    <%-- <c:set var="add" value="${fn:substring(address,0,2)}"/> --%>
                    <div class="col-12">
                        <h3 class="h4 mb-5"><span>${param.addr }</span> 클래스 전체보기</h3>
                    </div>
                    	<c:if test="${empty classlist }">
                    	<h3 class="h4 mb-5">이런, <span>${param.addr }</span> 지역에는 클래스가 없어요!😥&nbsp; </h3>
                    	<h4>
                    	<a href="<c:url value='/index'/> "> ➯메인으로 돌아가기</a>
                    	</h4>
                    	</c:if>
                       <c:forEach var="map" items="${classlist}">
                    <div class="col-12 col-md-6 col-lg-4">
                        <!-- Card -->
                        <div class="card border-light mb-4 animate-up-5">
                            <a href="<c:url value='/class/detail?cNo=${map["C_NO"]}&categoryName=${map["CATEGORY_NAME"] }&hNo=${map["H_NO"]} '/>" class="position-relative">
                                <c:choose >
                                    	<c:when test="${not empty map['THUMBNAIL']}">
                                        	<img src="<c:url value='/resources/upload_images/${map["THUMBNAIL"] }'/> " width="auto" height="200px" align="top" class="card-img-top p-2 rounded-xl" alt="썸네일">
                                    	</c:when>
                                    	<c:when test="${map['THUMBNAIL'] eq null}">
                                        	<img src="<c:url value='/resources/upload_images/basic.png'/> " width="auto" height="200px" align="top" class="card-img-top p-2 rounded-xl" alt="기본이미지">
                                    	</c:when>
                                </c:choose>
                            </a>
                            <div class="card-body">
                                <a href="<c:url value='/class/detail?cNo=${map["C_NO"]}&categoryName=${map["CATEGORY_NAME"] }&hNo=${map["H_NO"]} '/>">
                                            ${map["C_NAME"] }
                                </a>
										<div class="d-flex my-4">
										<c:forEach var="i" begin="1" end="5" step="1">
                                 <c:choose>
                                    <c:when test="${i <= map['TOTAL_R_RATE']}">
                                       <i class="star fa-star text-warning fas mr-2"></i>
                                    </c:when>
                                    <c:otherwise>
                                       <i class="star fa-star text-warning far mr-2"></i>
                                    </c:otherwise>
                                 </c:choose>
                              </c:forEach>
                              <span class="badge badge-pill badge-primary ml-2"><c:out value="${map['TOTAL_R_RATE']}" default="0.0"/></span>
                                 <%-- <c:forEach var="vo" items="${rlist}">
                                        <c:if test="${vo.cNo eq map['C_NO'] }">

										<div class="d-flex my-4">
											<span class="d-flex justify-content-center"> <c:if
													test="${vo.totalrate eq 5}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<span class="badge badge-pill badge-primary ml-2">5.0</span>
												</c:if> <c:if test="${vo.totalrate eq 4}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2"></i>
													<span class="badge badge-pill badge-primary ml-2">4.0</span>
												</c:if> <c:if test="${vo.totalrate eq 3}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2"></i>
													<span class="badge badge-pill badge-primary ml-2">3.0</span>
												</c:if> <c:if test="${vo.totalrate eq 2}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2"></i>
													<i class="star fa-star far text-gray mr-2"></i>
													<span class="badge badge-pill badge-primary ml-2">2.0</span>
												</c:if> <c:if test="${vo.totalrate eq 1}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2"></i>
													<span class="badge badge-pill badge-primary ml-2">1.0</span>
												</c:if> 
											</span>
										</c:if>
									 </c:forEach> --%>
										</div>
                                </div> 
                                <ul class="list-group mb-3" style="text-align: left;margin: 5%;">
                                    <li class="list-group-item small p-0" ><span class="fas fa-map-marker-alt mr-2"></span>
                                    	<c:set var="addr" value="${ map['L_ADDRESS']}"/>
                                                	${fn:substring(addr,0,2)}</li>
                                     <li class="list-group-item small p-0"><span class="far fa-calendar-alt mr-2"></span>
                                     	<fmt:formatDate value="${map['C_START_TIME'] }"  pattern="yyyy-MM-dd" /></li>
                                     <li class="list-group-item small p-0 "><span class="far fa-clock mr-2"></span>
                                     	${map["C_TIME"] } 시</li>
                                </ul>
                            </div>
                            <div class="card-footer bg-soft border-top">
                                <div class="d-flex justify-content-between">
                                    <div class="col pl-0">
                                        <span class="text-muted font-small d-block mb-2">가격</span>
                                                <span class="h5 text-dark font-weight-bold" style="font-size:1em">
                                                <fmt:formatNumber value="${map['C_PRICE'] }" pattern="#,###" />원
                                        </span>
                                    </div>
                                    <div class="col">
                                        <span class="text-muted font-small d-block mb-2">정원</span>
                                        <span class="h5 text-dark font-weight-bold">${map["PPNUM"] }명</span>
                                    </div>
                                    <div class="col pr-0">
                                        <span class="text-muted font-small d-block mb-2">확정인원</span>
                                        <span class="h5 text-dark font-weight-bold">${map["FPNUM"] }명</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <!-- End of Card -->
                    </div>
                 
                    <!-- <div class="col mt-lg-6 mt-3 d-flex flex-column text-center">
                        <div>
                            <a href="./all-spaces.html" class="btn btn-primary animate-up-2 mb-2" >Browse All</a>
                        </div>
                        <span class="small">1422 spaces in 34 countries</span>
                    </div> -->
                </div>
          </section>
<%@ include file="../inc/bottom.jsp" %>