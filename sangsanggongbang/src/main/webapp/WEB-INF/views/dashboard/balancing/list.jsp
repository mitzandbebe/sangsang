<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="divList">
<table class="box2">
	<colgroup>
		<col style="width:20%;" />
		<col style="width:20%;" />
		<col style="width:20%;" />
		<col style="width:20%;" />
		<col style="width:20%;" />		
	</colgroup>
	<thead>
	  <tr>
	    <th scope="col">정산번호</th>
	    <th scope="col">클래스번호</th>
	    <th scope="col">호스트번호</th>
	    <th scope="col">진행인원</th>
	    <th scope="col">정산신청일</th>
	    <th scope="col">정산신청</th>
	  </tr>
	</thead> 
	<tbody>  
 	  <c:if test="${empty bcList }">
	  	<tr>
	  		<td colspan="6">데이터가 없습니다.</td>
	  	</tr>
	  </c:if>	
	  <c:if test="${!empty bcList }">
		  <!--게시판 내용 반복문 시작  -->		  
		  <c:forEach var="vo" items="${bcList }">
			<tr style="text-align:center">
				<td>${vo.bNo}</td>
				<td style="text-align:center">
					<a href
		="<c:url value='/board/countUpdate.do?no=${vo.bNo}'/>">
						${vo.cNo}
					</a>
				</td>
				<td>${vo.hNo}</td>
				<td>${vo.bPpnum}</td>
				<td><fmt:formatDate value="${vo.bReqDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>${vo.bFlag}</td>
			</tr>
		  </c:forEach>
		  <!--반복처리 끝  -->
		 </c:if>
	</tbody>
</table>	   
</div>



