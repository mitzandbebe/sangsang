<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <script type="text/javascript">
function weather() {
	jQuery.ajax({
		url : "/api/weather",
		type : "get",
		timeout : 30000,
		contentType : "application/json",
		dataType : "json",
		success:function(data, status, xhr) {
			
			let dataHeader = data.result.response.header.resultCode;
			
			if(resultCode =="00"){
				console.log("성공!! : ");
				console.log(data);
				
			}else{
				console.log("실패.. : ");
				console.log(data);
			}
		},
		error : function(e, status, xhr, data){
			console.log("error : ");
			console.log(e);
		}
	});
}
</script> 

<%-- <div><h1>123123</h1>
 <c:forEach var="map" items="${jsonObj}">
</c:forEach> 
</div> --%>



