<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/new_top_admin.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function pageFunc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
	}
	
	
</script>
<section class="section-header">
<div class="section section-lg bg-soft">
<div class="col-12 col-lg-7 align-items-center" style="margin: 0 auto; height:350px;">
                        <div class="d-flex align-items-center mb-3 mt-4"">
                            <h1 class="h5 mb-3">환불내역</h1>
                            <div class="ml-auto">
                                <div class="form-group"> 
                                   <a href="<c:url value='/admin/refundAll'/>"><input type="button" class="btn btn-sm btn-primary"  value ="일괄 승인"></a> 
                                </div>
                            </div>
                        </div>
                        <c:if test="${empty list}">
                        <div style="height:100%;  text-align: center;" class="mb-3">
                        <h1 class="h1 mb-2 mt-2">텅..... ⸜(*'ᗜ'*)⸝ <br>환불 요청내역이 없네요!
													 &nbsp;</h1>
                        </div>
                        </c:if>
                        <c:if test="${!empty list}">
                        <div style="height:100%">
                        <c:forEach var ="map" items="${list }">
                        <form action="<c:url value='/admin/refundCancle'/>" method="post" name="refund" style="height:19%;">
                        <div class="card border-light mb-3 py-3">
                            <div class="card-body d-flex align-items-center flex-wrap flex-lg-nowrap py-0">
                                
                                <div class="col-lg-5 col-8 pl-0">
                                   	<input type="hidden" name="merchantUid" value="${map['MERCHANT_UID'] }">
                                    <span class="h6 text-sm">환불사유: ${map['REASON'] }</span>
                                </div>
                                <div class="col col-lg-3 text-right px-0 order-lg-4">
                                    <span class="text-muted text-sm">환불금액 : <fmt:formatNumber value="${map['C_PRICE'] * map['EA'] }" pattern="#,###"/>원</span>
                                    &nbsp;&nbsp;<input type="submit" class="btn btn-sm btn-secondary" value ="환불불가">
                                </div>
                                <div class="col-12 col-lg-4 d-flex align-items-center px-0">
                                    <div class="col col-lg-11 px-0">
                                        <div class="d-flex flex-wrap flex-lg-nowrap align-items-center">
                                                ${map['C_NAME'] }
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
                       </c:forEach>
                       </div>
                     </c:if>
                     <nav aria-label="Page navigation example">
                     
                      <ul class="pagination justify-content-center mt-5">
		             <c:if test="${pagingInfo.firstPage>1 }">
						 <li class="page-item">
				            <a class="page-link" href="#" onclick="pageFunc(${pagingInfo.firstPage-1})">Previous</a>
				         </li>
					</c:if>
					<c:forEach var="i" begin="${pagingInfo.firstPage }" 
					end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							 <li class="page-item active">
					            <a class="page-link" href="#">${i }</a>
					        </li>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">						
							<li class="page-item">
					            <a class="page-link" href="#" onclick="pageFunc(${i})">${i }</a>
					        </li>
						</c:if>
					</c:forEach>
						
					<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
						<li class="page-item">
				            <a class="page-link" href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">Next</a>
				         </li>
					</c:if>
					
					</ul>
					</nav>
					</div>
					</div>
                    
                    
                    </section>
<%@ include file="../inc/bottom_admin.jsp"%>