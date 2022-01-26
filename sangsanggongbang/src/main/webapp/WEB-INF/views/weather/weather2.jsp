<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
/* $(document).ready(function(){
var arr=[];
var today= new Date();
var week =new Array('일','월','화','수','목','금','토');
var year=today.getFullYear();
var month=today.getMonth() +1;
var day= today.getDate();
var hours= today.getHours();
var minutes = today.getMinutes();
var hours_al= new Array('02','05','08','11','14','17','20','23');
var korea = [ {'region' : '서울', 'nx' : 60, 'ny':127},
	{'region' : '인천', 'nx' : 55, 'ny':124},
	{'region' : '경기도', 'nx' : 92, 'ny':121},
	{'region' : '강원도', 'nx' : 69, 'ny':131},
	{'region' : '충청북도', 'nx' : 68, 'ny':106},
	{'region' : '충청남도', 'nx' : 68, 'ny':100},
	{'region' : '전라북도', 'nx' : 63, 'ny':89},
	{'region' : '전라남도', 'nx' : 50, 'ny':67},
	{'region' : '경상남도', 'nx' : 90, 'ny':77},
	{'region' : '경상북도', 'nx' : 91, 'ny':106},
	{'region' : '제주도', 'nx' : 51, 'ny':38}];
	
	for(var i =0; i<hours_al.length; i++){
		var h = hours_al[i] - hours;
		if(h == -1 || h == 0 || h == -2){
			var now = hours_al[i];
		}
		if(hours == 00) {
			var now = hours_al[7];
		}
	}
	
	if (hours < 10){
		hours = '0' +hours;
	}
	if(month < 10){
		month='0'+month;
	}
	if(day < 10){
		day='0'+day;
	}
	
	today = year + "" + month + "" + day;
	
	$.each(korea, function(j, k){
		var_nx=korea[j].nx,
		_ny = korea[j].ny,
		region = korea[j].region,
		apikey="Ptp6i7A8F620ZpPnV9Zye4M4IPShUQQe04TI1%2B1hILUxna8fFX%2BPiku6RwQJ7JXiM9O5A7pRJspBRumxxnbH7Q%3D%3D",
		URL="http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst";
		URL += "?serviceKey="+apikey;
		URL += "&base_date=" + today;
		URL += "&base_time=" + now+"00";
		URL += "&nx=" + nx+"&ny="+ny;
		arr.push({'url' : URL, 'region':region});
		
		$.ajax({
			url=arr[j].URL,
			type : 'GET',
			success : function(data){
				var $data = $(data).find("response>body>items>item");
				var cate = '';
				var temp = '';
				var sky = '';
				var rain = '';
				
				$.each($data,function(i,o){
					cate = $(o).find("category").text();
					
					if(cate == 'T3H'){
						temp = $(this).find("fcstValue").text();
					}
					if(cate == 'SKY'){
						sky = $(this).find("fcstValue").text();
					}
					if(cate == 'PTY'){
						rain = $(this).find("fcstValue").text();
					}
				$('.weather').append('<li class="list-group-item weather_li'+j+'"></li>');
				$('.weather_li'+j).addClass('in'+j);
				$('.in'+j).html(temp + "C");
				$('.in'+j).prepend(arr[j].region + '&emsp;')
				
				if(rain != 0 ){
					switch(rain){
					case '1':
						$('.in'+j).append(" / 비");
						$('.in'+j).prepend('<i class="fas fa-cloud-showers-heavy"></i>&emsp;');
						break;
					case '2':
						$('.in'+j).append(" / 비/눈");
						$('.in'+j).prepend('<i class="fas fa-cloud-rain"></i>&emsp;');
						break;
					case '3':
						$('.in'+j).append(" / 눈");
						$('.in'+j).prepend('<i class="fas fa-cloud-snowflake"></i>&emsp;');
						break;
					}
				} else{
					switch(sky){
					case '1':
						$('.in'+j).append(" / 맑음");
						$('.in'+j).prepend('<i class="fas fa-sun"></i>&emsp;');
						break;
					case '2':
						$('.in'+j).append(" / 구름조금");
						$('.in'+j).prepend('<i class="fas fa-cloud-sun"></i>&emsp;');
						break;
					case '3':
						$('.in'+j).append(" / 구름많음");
						$('.in'+j).prepend('<i class="fas fa-cloud"></i>&emsp;');
						break;
					case '4':
						$('.in'+j).append(" / 흐림");
						$('.in'+j).prepend('<i class="fas fa-smog"></i>&emsp;');
						break;
					}
				}
				});
			}
		});
	});
});
 */
 var xhr = new XMLHttpRequest();
 var url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst'; /*URL*/
 var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'Ptp6i7A8F620ZpPnV9Zye4M4IPShUQQe04TI1%2B1hILUxna8fFX%2BPiku6RwQJ7JXiM9O5A7pRJspBRumxxnbH7Q%3D%3D'; /*Service Key*/
 queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
 queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('1000'); /**/
 queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('XML'); /**/
 queryParams += '&' + encodeURIComponent('base_date') + '=' + encodeURIComponent('20220126'); /**/
 queryParams += '&' + encodeURIComponent('base_time') + '=' + encodeURIComponent('0500'); /**/
 queryParams += '&' + encodeURIComponent('nx') + '=' + encodeURIComponent('55'); /**/
 queryParams += '&' + encodeURIComponent('ny') + '=' + encodeURIComponent('127'); /**/
 xhr.open('GET', url + queryParams);
 xhr.onreadystatechange = function () {
     if (this.readyState == 4) {
         alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
     }
 };

 xhr.send('');
</script>
<div class="vis-weather">
	<h1>전국날씨</h1>
	<ul class="list-group list-group-flush weather" style="font-weight: 600;">
	<!-- <li class="list-group-item weather"></li> -->
	</ul>
</div>



