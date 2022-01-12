<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../inc/new_top_user.jsp" %>

<section class="section section-header section-image bg-tertiary overlay-primary text-white overflow-hidden pb-9"
         style="background-image: url('<c:url value="/resources/assets/img/new-york-hero.jpg"/>');">
    <div class="container z-2">
        <div class="row justify-content-center pt-3">
            <div class="col-12 text-center">
                <h1 class="mb-5">Find Your Class.</h1>
            </div>
        </div>
    </div>
</section>

<section class="section section-md pt-0 pb-3">
    <div class="container mt-n7">
        <div class="row">
            <div class="col-12">
                <div class="card border-light p-md-2">
                    <div class="card-body p-4">
                        <form method="get"
                              autocomplete="off"
                              action="<c:url value="/class/search"/>" >
                            <div class="row">
                                <div class="col col-md-4">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-search"></i></span>
                                            </div>
                                            <input type="text" name="cName" value="<c:out value="${search.cName}" default=""/>"
                                                   class="form-control autocomplete"
                                                   placeholder="Find Your Class Name" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col col-md-3">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-tags"></i></span>
                                            </div>
                                            <select class="form-control" name="categoryCode">
                                                <option value="">Category</option>
                                                <c:forEach var="item" items="${clist}">
                                                    <option <c:if test="${item.categoryCode eq search.categoryCode}">selected</c:if> value="${item.categoryCode}">${item.categoryName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col col-md-3">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-map-marker-alt"></i></span>
                                            </div>
                                            <select class="form-control" name="lAddress">
                                                <option value="">Area</option>
                                                <c:forEach var="item" items="${area}">
                                                    <option <c:if test="${item eq search.lAddress}">selected</c:if> value="${item}">${item}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col col-md-2">
                                    <button class="btn btn-lg btn-dark btn-block" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="section pt-lg-0">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-10 col-md-6 col-lg-12 mb-4">
                <div class="card border-light mb-4 animate-up-5 bg-soft">
                    <div class="row no-gutters align-items-center">
                        <c:forEach var="cls" items="${list}" varStatus="vs">
                        <div class="col-12 mb-0">
                            <div class="card border-light mb-4 animate-up-5">
                                <div class="row no-gutters align-items-center">
                                    <div class="col-12 col-lg-6 col-xl-5">
                                        <a href="<c:url value="/class/detail?cNo=${cls.cNo}&categoryName=${cls.category.categoryName}&hNo=${cls.hNo}"/>">
                                            <img src="<c:url value="/resources/upload_images/${cls.contents.thumbnail}"/>"
                                                 onerror="this.src='<c:url value='/resources/upload_images/basic.png'/>';"
                                                 alt="private office"
                                                 class="card-img p-2 rounded-xl"/>
                                        </a>
                                    </div>
                                    <div class="col-12 col-lg-6 col-xl-7">
                                        <div class="card-body p-3 p-md-1">

                                            <span class="badge badge-pill badge-primary mb-2"><c:out value="${cls.category.categoryName}" default="0.0"/></span>
                                            <a href="<c:url value="/class/detail?cNo=${cls.cNo}&categoryName=${cls.category.categoryName}&hNo=${cls.hNo}"/>">
                                                <h4 class="h5">${cls.cName}</h4>
                                            </a>
                                            <div class="d-flex my-3">
                                                <c:forEach var="i" begin="1" end="5" step="1">
                                                    <c:choose>
                                                        <c:when test="${cls.totalRRate >= i}">
                                                            <span class="star fa-star text-warning fas"></span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="star fa-star text-warning far"></span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                                <span class="badge badge-pill badge-primary ml-2"><c:out value="${cls.totalRRate}" default="0.0"/></span>
                                            </div>
                                            <ul class="list-group mb-3">
                                                <li class="list-group-item small p-0" ><span class="fas fa-map-marker-alt mr-2"></span> ${cls.location.lAddressArr[0]}</li>
                                                <li class="list-group-item small p-0"><span class="far fa-calendar-alt mr-2"></span> <fmt:formatDate value="${cls.cStartTime}"  pattern="yyyy-MM-dd" /></li>
                                                <li class="list-group-item small p-0 "><span class="far fa-clock mr-2"></span> ${cls.cTime } 시</li>

                                            </ul>
                                            <div class="d-flex justify-content-between">
                                                <div class="col pl-0">
                                                    <span class="text-muted font-small d-block">가격</span>
                                                    <span class="h6 text-dark font-weight-bold"><fmt:formatNumber value="${cls.cPrice }" pattern="#,###" />원</span>
                                                </div>
                                                <div class="col">
                                                    <span class="text-muted font-small d-block">정원</span>
                                                    <span class="h6 text-dark font-weight-bold">${cls.ppnum}명</span>
                                                </div>
                                                <div class="col pr-0">
                                                    <span class="text-muted font-small d-block">확정인원</span>
                                                    <span class="h6 text-dark font-weight-bold">${cls.fpnum}명</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
    });
</script>

<%@include file="../inc/bottom.jsp" %>