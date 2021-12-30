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
								<a href="#">결제번호 # ${vo.col}</a>
							</h3>
							<!-- Text -->
							<small class="text-gray-700"> 개인회원번호 : ${vo.uNo}</small><br>
							<small class="text-gray-700"> 클래스번호 : ${vo.cCode}</small><br>
							<small class="text-gray-700"> 결제수량 : ${vo.qty}</small><br>
							<small class="text-gray-700"> 결제일자 : pg모듈에서 가져오기<fmt:formatDate
									value="" pattern="yyyy-MM-dd" />
							</small>
						</div>
						<c:if test="${vo.endFlag == 'N' }"> <!-- 클래스 종료여부 가져오기-->
							<div class="col-auto">
								<button class="btn btn-sm btn-outline-dark" style="font-weight: bold;">취소요청</button>
							</div>
						</c:if>
						<c:if test="${vo.endFlag == 'Y' }">
							<div class="col-auto">
								<span class="badge badge-pill badge-success">
								<span class="text-uppercase font-weight-bold" style="font-size: 1.3em">참여완료</span>
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



