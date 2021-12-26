<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<c:if test="${empty list }">
	<tr>
		<td colspan="6">데이터가 없습니다.</td>
	</tr>
</c:if>
<c:if test="${!empty list }">
	<!--게시판 내용 반복문 시작  -->
	<c:forEach var="vo" items="${list }">
		<div class="card-body px-0 pt-0">
			<ul class="list-group">
				<li class="list-group-item border-bottom">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="h5 mb-1">
								<a href="#">클래스번호 # ${vo.bNo}</a>
							</h3>
							<!-- Text -->
							<small class="text-gray-700"> 호스트번호 : ${vo.hNo}</small><br>
							<small class="text-gray-700"> 진행인원 : ${vo.bPpnum}</small><br>
							<small class="text-gray-700"> 진행일자 : <fmt:formatDate
									value="${vo.bReqDate}" pattern="yyyy-MM-dd" />
							</small>
						</div>
						<c:if test="${vo.bFlag == 'Y' }">
							<div class="col-auto">
								<button class="btn btn-sm btn-outline-dark" style="font-weight: bold;">정산신청</button>
							</div>
						</c:if>
						<c:if test="${vo.bFlag == 'N' }">
							<div class="col-auto">
								<span class="badge badge-pill badge-success">
								<span class="text-uppercase font-weight-bold" style="font-size: 1.3em">정산완료</span>
								</span>
							</div>
						</c:if>
					</div>
				</li>
			</ul>
		</div>
	</c:forEach>
	<!--반복처리 끝  -->
</c:if>



