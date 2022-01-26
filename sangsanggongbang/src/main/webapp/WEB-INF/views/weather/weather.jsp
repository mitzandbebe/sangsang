<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
  $(function weather() {
	jQuery.ajax({
		url : "/api/weather",
		type : "get",
		contentType : "application/json",
		dataType : "json",
		success : function(data) {
			console.log(item[0]);
			console.log(RESULT[0]);
			console.log(data);
			console.log(status);
			console.log(xhr);
			
			let dataHeader = data.result.response.header.resultCode;
			console.log("성공!! : ");
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
});
/*
var xhr = new XMLHttpRequest();
var url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst';
var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'Ptp6i7A8F620ZpPnV9Zye4M4IPShUQQe04TI1%2B1hILUxna8fFX%2BPiku6RwQJ7JXiM9O5A7pRJspBRumxxnbH7Q%3D%3D';
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1');
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('1000');
queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('XML');
queryParams += '&' + encodeURIComponent('base_date') + '=' + encodeURIComponent('20220126');
queryParams += '&' + encodeURIComponent('base_time') + '=' + encodeURIComponent('0600');
queryParams += '&' + encodeURIComponent('nx') + '=' + encodeURIComponent('55');
queryParams += '&' + encodeURIComponent('ny') + '=' + encodeURIComponent('127');
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
    }
};

xhr.send(''); 
*/
</script> 
							<div class="vis-weather">
								<h1>전국날씨</h1>
								<ul class="list-group list-group-flush weather" style="font-weight: 600;">
								<!-- <li class="list-group-item weather"></li> -->
								</ul>
							</div>
<%-- <div><h1>123123</h1>
 <c:forEach var="map" items="${jsonObj}">
</c:forEach> 
</div> --%>



