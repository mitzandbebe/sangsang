<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<style type="text/css">
	.cartListTbl{
		width:650px;		
	}
	.cartListTbl td{
		padding:10px;
	}
	.cartListTbl caption{
		visibility:hidden;
	}
	.cartListDiv1{
		width:650px;
		text-align:center;		
		margin:10px;
	}
	
	.divForm {
		width: 650px;
	}
	.divForm span{
		font-size:0.9em; 
	}		
	.divForm .sp1	{
		text-align: left;
	}
	.divForm .title{
		font-size:1.1em;
		font-weight:bold;	
	}
	.divForm .titleP, .titleP{
		margin:10px 0;	
		border: none;
	}
	
</style>

<h2>주문 완료</h2>
<p style="font-size:13pt;font-weight:bold">
	주문과 결제가 정상적으로 완료되었습니다
	[주문번호 : ${param.orderNo }]
</p>
<br><br>
<p class="titleP">
	<img src='<c:url value="/resources/images/dot7.JPG"/>' align="absmiddle" />
	<span style="font-size:12pt;font-weight:bold">주문하신 상품</span>
</p>

<div>
<table  class="cartListTbl box2"
summary="주문 상품 목록에 관한 표로써, 상품명,가격, 수량, 금액 등의 정보를 제공합니다.">
	<caption>주문 상품 목록</caption>
	<colgroup>
		<col width="49%" />
		<col width="17%" />
		<col width="17%" />
		<col width="*" />		
	</colgroup>
	<thead>
		<tr>
			<th scope="col">상품명</th>
			<th scope="col">판매가격</th>
			<th scope="col">수량</th>
			<th scope="col">합계</th>			
		</tr>
	</thead>
	<tbody>
	<!-- 데이터가 있는 경우 -->
	<!-- 반복문 시작 -->				
	<c:forEach var="map" items="${list }">
		<tr>
			<td>
				<img src
				="<c:url value='/resources/pd_images/${map["IMAGEURL"] }'/>" 
					width="30" align="absmiddle">
				${map['PRODUCTNAME'] }</td>
			<td><fmt:formatNumber value="${map['SELLPRICE'] }" 
				pattern="#,###"/>원</td>
			<td>${map['QUANTITY'] }</td>
			<td><fmt:formatNumber value="${map['SELLPRICE'] * map['QUANTITY'] }" 
				pattern="#,###"/>원
			</td>
		</tr>
	</c:forEach>
	<!-- 반복문 끝 -->
	</tbody>
</table>
</div>
<br>

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
