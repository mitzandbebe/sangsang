<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>카테고리별 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Blog post">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Blog post">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Blog post">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/resources/assets/img/favicon/apple-touch-icon.png'/> ">
<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/assets/img/favicon/favicon-32x32.png'/> ">
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/assets/img/favicon/favicon-16x16.png'/> ">
<link rel="manifest" href="<c:url value='/resources/assets/img/favicon/site.webmanifest'/> ">
<link rel="mask-icon" href="<c:url value='/resources/assets/img/favicon/safari-pinned-tab.svg'/> " color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">


<!-- Main CSS -->
<link type="text/css" href="<c:url value='/resources/css/spaces.css'/> " rel="stylesheet">



<!-- 이벤트 메인. 메인에 합쳐져야함. -->
   
<form name="frmclassList">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h4 class="mb-5 font-weight-bold"><span>${param.categoryName }</span> 클래스 전체보기</h4>
						
					</div>
                    <div class="col-md-12">
                        <div class="basic-carousel owl-carousel owl-theme">
       <c:forEach var="map" items="${catelist}">
                            <!-- Item 1 -->
                            
                            <div class="item" >
                                <!-- Card -->
                                <div class="card border-light mb-4 animate-up-5" >
                                    <a href="<c:url value='/class/detail?cNo=${map["C_NO"]}&categoryName=${map["CATEGORY_NAME"] } '/>" class="position-relative">
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
                                        <a href="<c:url value='/class/detail?cNo=${map["C_NO"]} '/>">
                                            ${map["C_NAME"] }
                                        </a>
                                        <c:forEach var="vo" items="${rlist}">
                                        <c:if test="${vo.cNo eq map['C_NO'] }">

										<div class="d-flex my-4">
											<span class="d-flex justify-content-center"> <c:if
													test="${vo.totalrate eq 5}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
												</c:if> <c:if test="${vo.totalrate eq 4}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2"></i>
												</c:if> <c:if test="${vo.totalrate eq 3}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2"></i>
												</c:if> <c:if test="${vo.totalrate eq 2}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2"></i>
													<i class="star fa-star far text-gray mr-2"></i>
												</c:if> <c:if test="${vo.totalrate eq 1}">
													<i class="star fa-star fas text-warning mr-2"></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2 "></i>
													<i class="star fa-star far text-gray mr-2"></i>
												</c:if>
											</span>
										</div>
										</c:if>
									 </c:forEach>
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
    <!-- Core -->
<script src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/> "></script>
<script src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/> "></script>


<!-- Owl acrousel -->
<script src="<c:url value='/resources/vendor/owl.carousel/dist/owl.carousel.min.js'/> "></script>

<!-- Fancybox -->
<script src="<c:url value='/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js'/> "></script>

<!-- Spaces custom Javascript -->
<script src="<c:url value='/resources/assets/js/spaces.js'/> "></script>

