<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script
    src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script type="text/javascript">
 	$(function weather() {
		$(document).ready(function() {
			jQuery.ajax({
				url : "<c:url value='/api/weather'/>",
				type : "GET",
				contentType : "application/json",
				dataType : "json",
				success : function(data) {
					console.log(data);
					var sky=data.result.response.body.items.item[5].fcstValue;
					var rain=data.result.response.body.items.item[6].fcstValue;
					var str="현재 서울은 ";
					if (sky == "1") {
						str+="맑고";
						$('#result').html(str); 
					}
					if (sky == "3") {
						str+="구름이 많고 ";
						$('#result').html(str); 
					}
					if (sky == "4") {
						str+="흐리고 ";
						$('#result').html(str); 
					}
					if (rain == "0") {
						str+=" 비 예보는 없습니다. ";
						$('#result').html(str); 
					}
					if (rain == "1") {
						str+=" 비가 내립니다.";
						$('#result').html(str); 
					}
					if (rain == "2") {
						str+=" 비나 눈이 오겠습니다.";
						$('#result').html(str); 
					}
					if (rain == "3") {
						str+=" 눈이 옵니다.";
						$('#result').html(str); 
					}
					if (rain == "4") {
						str+=" 소나기가 있겠습니다.";
						$('#result').html(str); 
					}
				}, 
				error : function(e, status, xhr, data) {
					console.log("error : ");
					console.log(e);
				}
			});
		});
	});
</script>
<head>
</head>
<body>
	<div id="result"></div>
</body>
</html>

