<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section
	class="section section-header bg-primary overlay-primary text-white pb-11"
	data-background="../assets/img/team-hero.jpg">
</section>
<section class="section section-lg pt-6">
	<form action="<c:url value='/mail/mailSend'/>" method="post" name="frm">
		<div class="container">
			<div class="row justify-content-center mb-5 mb-lg-6">
				<div class="col-12 col-md-10 col-lg-8">
					<!-- Contact Card -->
					<div class="card border-0 p-2 p-md-3">
						<div class="card-body px-0">
							<div class="row"></div>
							<div class="row justify-content-center mt-4 mt-lg-5">
								<div class="col-12">
									<!-- Contact Card -->
									<div class="card border-0 p-0 p-md-5">
										<div class="card-header text-center p-0 pb-5">
											<h2>관리자 이메일 전송</h2>
											<p>Cool! Let’s talk about your project</p>
										</div>
										<div class="card-body p-0">
											<form action="#" method="post">
												<!-- Form -->
												<div class="form-group">
													<label for="name">받는사람</label>
													<div class="input-group mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text"><span
																class="far fa-user-circle"></span></span>
														</div>
														<input class="form-control" id="name"
															placeholder="아이디를 입력해주세요" type="text" name="receiveId"
															aria-label="contact name input" required>
													</div>
												</div>
												<!-- Form -->
												<div class="form-group">
													<label for="email">제목</label>
													<div class="input-group mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text"><span
																class="far fa-envelope"></span></span>
														</div>
														<input class="form-control" id="title"
															placeholder="제목을 입력해주세요" type="text" name="emailTitle"
															aria-label="contact email input">
													</div>
												</div>
												<!-- Form -->
												<div class="form-group">
													<textarea class="form-control" placeholder="메세지를 입력해주세요"
														id="message" name="message" rows="4" style="resize:none; overflow:hidden;"></textarea>
												</div>
												<!-- End of Form -->
												<button type="submit"
													class="btn btn-block rounded btn-secondary">전송하기</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</form>
</section>
<%@ include file="../inc/bottom.jsp"%>
<script type="text/javascript">
	$(function(){
		$('textarea').keyup(function(e){
			$(this).css('height','auto');
			$(this).height(this.scrollHeight);
		})		
	})
</script>