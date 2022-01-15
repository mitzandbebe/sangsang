<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<form name="frmMap" method="post"
		action="<c:url value='/classMap?cNo=${param.cNo }'/> ">
	<c:forEach var="map" items="${classlist}">
		<input type="hidden" value="${map['L_ADDRESS'] }" id="addr">
	</c:forEach>
			<div id="map" style="width:600px;height:300px;"></div>

	</form>
</body>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0610dd037b7ecb430d9b2d53aa551531&libraries=services"></script>
<script>
	let addr = document.getElementById("addr").value;
	let mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 4
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	let map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	let geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(addr,function(result, status) {

	// 정상적으로 검색이 완료됐으면 
		if (status === kakao.maps.services.Status.OK) {
	
			let coords = new kakao.maps.LatLng(result[0].y,result[0].x);
	
			// 결과값으로 받은 위치를 마커로 표시합니다
			let marker = new kakao.maps.Marker({map : map,position : coords});
	
			// 인포윈도우로 장소에 대한 설명을 표시합니다
			let infowindow = new kakao.maps.InfoWindow
				({
					content : '<div class="tab-pane fade" style="width:150px;text-align:center;"><strong>클래스위치</strong></div>'
				});
			infowindow.open(map, marker);
	
			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);
		}
	});
	


</script>
