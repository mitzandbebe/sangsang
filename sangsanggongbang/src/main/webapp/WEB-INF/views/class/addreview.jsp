<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<form name="frmReviewAdd" method="post"  enctype="multipart/form-data"
		 action="<c:url value='/class/addreview'/> ">
		 <input type="hidden" name="cNo" value="${param.cNo }">
		<div
			class="d-flex justify-content-between align-items-center mb-3 mt-5">
			<h2 class="h5 m-0">리뷰 등록</h2>
			<span class="d-flex justify-content-center stars-rating" name="rRate">
<!-- 				<i class="star far fa-star text-gray mr-2" data-rating-value="1"></i> -->
				<i class="star far fa-star text-gray mr-2" data-rating-value="1"></i>
				<i class="star far fa-star text-gray mr-2" data-rating-value="2"></i>
				<i class="star far fa-star text-gray mr-2" data-rating-value="3"></i>
				<i class="star far fa-star text-gray mr-2" data-rating-value="4"></i>
				<i class="star far fa-star text-gray mr-2" data-rating-value="5"></i>
			</span>
		</div>
		<div>
			<label for="upfile">대표이미지 📁 </label> <input type="file"
				name="upfile" id="upfile">
		</div>
		<textarea name="description" class="form-control border"
			placeholder="리뷰등록하기" rows="6"
			data-bind-characters-target="#charactersRemaining" maxlength="1000"
			required name="rContent"></textarea>
		<div class="d-flex justify-content-between mt-3">
			<small class="font-weight-light"> <span
				id="charactersRemaining">1000</span> 글자 제한
			</small>
			<button type="submit" class="btn btn-primary animate-up-2">리뷰등록</button>
		</div>
	</form>


	
<!-- Main CSS -->
<link type="text/css"
	href="${pageContext.request.contextPath }/resources/css/spaces.css"
	rel="stylesheet">
<script type="text/javascript">
// Review stars rating
$('.stars-rating .star').on('mouseover', function() {
    var rating = $(this).attr('data-rating-value');
    $('.stars-rating .star').each(function(value) {
        if (value + 1 <= rating) {
            $(this).removeClass('text-gray');
            $(this).addClass('text-warning');
        }
        if (value >= rating) {
            $(this).addClass('text-gray');
            $(this).removeClass('text-warning');
            $(this).removeClass('fas');
            $(this).addClass('far');
        }
    });
    $(this).on('click', function() {
        $(this).parent().addClass('rated');
        $('.stars-rating .star').each(function(value) {
            if (value + 1 <= rating) {
                $(this).removeClass('text-gray');
                $(this).addClass('text-warning');
                $(this).removeClass('far');
                $(this).addClass('fas');
            }
        });
        $('#rating').val(rating);
    });
});
$('.stars-rating').on('mouseleave', function() {
    if (!$(this).hasClass('rated')) {
        $('.stars-rating .star').each(function() {
            $(this).addClass('text-gray');
            $(this).removeClass('text-warning');
            $(this).addClass('far');
            $(this).removeClass('fas');
        });
    }
});
</script>