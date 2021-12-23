<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<!-- Hero -->
<section class="section-header bg-primary text-white pb-7 pb-lg-11">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-4">공지사항</h1>
			</div>
		</div>
	</div>
	<div>
		<p>관리자 or 호스트로 로그인 했을때만 나타나게</p>
		<a href="<c:url value='/notice/noticeWrite'/>">
		<button class="btn mb-2 mr-2 btn-white" type="button">공지사항 등록하기</button>
		</a>
	</div>
</section>
<section class="section section-lg line-bottom-light">
	<div class="container mt-n8 mt-md-n9 mt-lg-n12 z-2">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<div class="card bg-white border-light p-3 rounded">
					<a href="./blog-post.html"> <img
						class="card-img-top rounded" alt="our desk">
					</a>
					<div class="card-body p-0 pt-4">
						<a href="./blog-post.html" class="h4">Google launches Cloud AI
							Platform Pipelines</a>
						<div class="d-flex align-items-center my-4">
							<img class="avatar avatar-sm rounded-circle"
								src="<c:url value='/resources/assets/img/team/profile-picture-2.jpg'/>"
								alt="Neil avatar">
							<h3 class="h6 small ml-2 mb-0">Neil Sims Curran</h3>
						</div>
						<p class="mb-0">Richard Thomas was born in 1990, and at only
							29 years old, his trajectory is good. When he ...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<div class="card bg-white border-light p-3 rounded">
					<a href="./blog-post.html"> <img
						src="<c:url value='/resources/assets/img/blog/image-3.jpg'/>"
						class="card-img-top rounded" alt="web desk">
					</a>
					<div class="card-body p-0 pt-4">
						<a href="./blog-post.html" class="h4">Apple Details Reveal
							Remarkable MacBook</a>
						<div class="d-flex align-items-center my-4">
							<img class="avatar avatar-sm rounded-circle"
								src="<c:url value='/resources/assets/img/team/profile-picture-3.jpg'/>"
								alt="David avatar">
							<h3 class="h6 small ml-2 mb-0">David L. Brown</h3>
						</div>
						<p class="mb-0">Following the release of the 16-inch MacBook
							Pro in late 2019, Apple was praised for the larger ...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<div class="card bg-white border-light p-3 rounded">
					<a href="./blog-post.html"> <img
						src="<c:url value='/resources/assets/img/blog/image-1.jpg'/>"
						class="card-img-top rounded" alt="pixel room">
					</a>
					<div class="card-body p-0 pt-4">
						<a href="./blog-post.html" class="h4">One of Google Maps’ best
							new features</a>
						<div class="d-flex align-items-center my-4">
							<img class="avatar avatar-sm rounded-circle"
								src="<c:url value='/resources/assets/img/team/profile-picture-1.jpg'/>"
								alt="Jose avatar">
							<h3 class="h6 small ml-2 mb-0">Jose Evans</h3>
						</div>
						<p class="mb-0">As great as Google Maps might be, not all
							users get to take advantage of the app’s brand new ...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<div class="card bg-white border-light p-3 rounded">
					<a href="./blog-post.html"> <img
						src="<c:url value='/resources/assets/img/blog/image-3.jpg'/>"
						class="card-img-top rounded" alt="designer office">
					</a>
					<div class="card-body p-0 pt-4">
						<a href="./blog-post.html" class="h4">Google launches Cloud AI
							Platform Pipelines</a>
						<div class="d-flex align-items-center my-4">
							<img class="avatar avatar-sm rounded-circle"
								src="<c:url value='/resources/assets/img/team/profile-picture-3.jpg'/>"
								alt="James avatar">
							<h3 class="h6 small ml-2 mb-0">James Curran</h3>
						</div>
						<p class="mb-0">Richard Thomas was born in 1990, and at only
							29 years old, his trajectory is good. When he is ...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<div class="card bg-white border-light p-3 rounded">
					<a href="./blog-post.html"> <img
						src="../assets/img/blog/image-2.jpg" class="card-img-top rounded"
						alt="white laptop">
					</a>
					<div class="card-body p-0 pt-4">
						<a href="./blog-post.html" class="h4">Apple Details Reveal
							Remarkable MacBook</a>
						<div class="d-flex align-items-center my-4">
							<img class="avatar avatar-sm rounded-circle"
								src="../assets/img/team/profile-picture-5.jpg"
								alt="Bonnie avatar">
							<h3 class="h6 small ml-2 mb-0">Bonnie Green</h3>
						</div>
						<p class="mb-0">Following the release of the 16-inch MacBook
							Pro in late 2019, Apple was praised for the larger ...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<div class="card bg-white border-light p-3 rounded">
					<a href="./blog-post.html"> <img
						src="../assets/img/blog/image-1.jpg" class="card-img-top rounded"
						alt="photoshop books">
					</a>
					<div class="card-body p-0 pt-4">
						<a href="./blog-post.html" class="h4">One of Google Maps’ best
							new features</a>
						<div class="d-flex align-items-center my-4">
							<img class="avatar avatar-sm rounded-circle"
								src="../assets/img/team/profile-picture-4.jpg"
								alt="Joseph avatar">
							<h3 class="h6 small ml-2 mb-0">Joseph Garth</h3>
						</div>
						<p class="mb-0">As great as Google Maps might be, not all
							users get to take advantage of the app’s brand new features ...</p>
					</div>
				</div>
			</div>
			<div class="d-flex justify-content-center w-100 mt-5">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item active"><a class="page-link" href="#">2</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</section>
</main>

<%@ include file="../inc/bottom.jsp"%>
<script>
	// here you should load content from an Ajax request and when it
	// loads you can disable the button from loading
	$('#loadOnClick').click(function() {
		$button = $(this);
		$loadContent = $('#extraContent');
		$allLoaded = $('#allLoadedText');
		$button.addClass('btn-loading');
		$button.attr('disabled', true);

		setTimeout(function() {
			$loadContent.show();
			$button.hide();
			$allLoaded.show();
		}, 1500);
	});
</script>
</body>
</html>