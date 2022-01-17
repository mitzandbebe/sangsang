<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>카테고리별 보기</title>



<!-- 이벤트 메인. 메인에 합쳐져야함. -->
   
<form name="frmclassList">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h4 class="mb-5 font-weight-bold"><span>${param.categoryName }</span> 클래스 전체보기</h4>
						
					</div>
					<c:if test="${mId ==null }">
				<div class="col-12">
						<div>더 보시려면 로그인해주세요</div>
				</div>
				<div class="col-12">
						<div>
						<a href="<c:url value='/login/login'/> " style="color: #46746e;">➯로그인하러가기</a>
						</div>
				</div>
					</c:if>
                    <div class="col-md-12">
                        <div class="basic-carousel owl-carousel owl-theme">
       <c:forEach var="map" items="${catelist}">
                            <!-- Item 1 -->
                            
                            <div class="item" >
                                <!-- Card -->
                                <div class="card border-light mb-4 animate-up-5" >
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
                                    <div class="card-body" style="width:330px; height:120px;">
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
                             
										</div>
                                </div> 
                                    <div class="card-footer border-top" style="background-color: #D6DCD2;">
                                        <div class="d-flex justify-content-between">
                                            <div class="col pl-0">
                                                <span class="text-muted font-small d-block mb-2">가격</span>
                                                <span class="h5 text-dark font-weight-bold" style="font-size:1em">
                                                <fmt:formatNumber value="${map['C_PRICE'] }" pattern="#,###" />원
                                                </span>
                                            </div>
                                            <div class="col">
                                                <span class="text-muted font-small d-block mb-2">인원</span>
                                                <span class="h5 text-dark font-weight-bold">${map["FPNUM"] } / ${map["PPNUM"] }명</span>
                                            </div>
                                            <div class="col pr-0">
                                                <span class="text-muted font-small d-block mb-2">지역</span>
                                                <span class="h5 text-dark font-weight-bold">
                                                	<c:set var="addr" value="${ map['L_ADDRESS']}"/>
                                                	${fn:substring(addr,0,2)}
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Card -->
                            </div>
                             
                         </c:forEach>
                    </div>
                </div>
            </div>
        </div>
</form>
