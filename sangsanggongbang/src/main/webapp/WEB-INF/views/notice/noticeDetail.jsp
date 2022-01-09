<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/top.jsp"%>

</head>
<body>
	<main>
		<section class="section-header pb-7 bg-primary text-white">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-12 col-lg-10 text-center">
						<div class="mb-4">
							<a href="./blog.html"
								class="badge badge-danger text-uppercase mr-2 px-3">관리자인지,
								호스트인지 넣어주고 클래스고 갈까?</a>
						</div>
						<h1 class="display-3 mb-4 px-lg-5">${vo.noticeTitle }</h1>
						<div class="post-meta">
							<span class="font-weight-bold mr-3">이름 뽑아서 주기</span> <span
								class="post-date mr-3"><fmt:formatDate
									value="${vo.noticeRegdate }" pattern="yyyy-MM-dd HH:mm:ss" /></span>
						</div>
					</div>
				</div>
			</div>
		</section>
		<br>
		<div class="section section-sm bg-white pt-6"
			style="width: 40%; margin-left: 30%;">
			<article class="container">
				<div class="row justify-content-center"
					style="margin-right: -22%; margin-left: -22%; margin-top: -110px; padding-left: 10px;">
					<div class="col-12 col-lg-8">
						<div>
							<img alt="" src="">
						</div>
						<p>${vo.noticeContent }</p>
					</div>
				</div>
			</article>
			<div style="margin-bottom: -50px; text-align: center;">
				<a href="<c:url value='/notice/noticeList'/>">
					<button class="btn mb-2 mr-2 btn-dark" type="button">목록</button>
				</a> <a
					href="<c:url value='/notice/noticeEdit?noticeNo=${vo.noticeNo }'/>">
					<button class="btn mb-2 mr-2 btn-dark" type="button">수정</button>
				</a> <a
					href="<c:url value='/notice/noticeDelete?noticeNo=${vo.noticeNo }'/>">
					<button class="btn mb-2 mr-2 btn-dark" type="button"
						id="noticeDelete">삭제</button>
				</a>
			</div>
		</div>
		<br>
		<table id="NP" align="absmiddle"
			style="border-top: 1px solid black;border-bottom: 1px solid black; width: 20%; text-align: center; margin-left: 40%; margin-right: 40%; margin-top: 10px; margin-bottom: 10px;">
			<c:if test="${empty PNVo.nextTitle }">
				<tr>
					<th style="background-color: skyblue"><span>다음글</span></th>
					<td>다음글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty PNVo.nextTitle }">
				<tr>
					<th style="background-color: skyblue"><a
						href="<c:url value='/notice/noticeDetail?noticeNo=${PNVo.nextNo }'/>">
							<span>다음글</span>
					</a></th>
					<td><a
						href="<c:url value='/notice/noticeDetail?noticeNo=${PNVo.nextNo }'/>">${PNVo.nextTitle }</a></td>
				</tr>
			</c:if>

			<c:if test="${empty PNVo.preTitle }">
				<tr>
					<th style="background-color: skyblue"><hr> <span>이전글</span></th>
					<td><hr> 이전글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty PNVo.preTitle }">
				<tr>
					<th style="background-color: skyblue"><a
						href="<c:url value='/notice/noticeDetail?noticeNo=${PNVo.preNo }'/>">
							<hr> <span>이전글</span>
					</a></th>
					<td><hr> <a
						href="<c:url value='/notice/noticeDetail?noticeNo=${PNVo.preNo }'/>">${PNVo.preTitle }</a>
					</td>
				</tr>
			</c:if>
		</table>
		<br>
	</main>

	<%@ include file="../inc/bottom.jsp"%>
	<script src="../assets/js/spaces.js"></script>
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
		$('#noticeDelete').click(function() {
			var result = confirm('공지사항을 삭제하시겠습니까');
			if (!result) {
				event.preventDefault();
			}
		})
	</script>
</body>
</html>