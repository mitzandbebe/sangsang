/**
 * 정산신청 탭 게시판 로드 업뎃!!
 */
 
 
$(function() {
	$('#tabs-text-1').ready(function(){
	$('#list1').load("http://localhost:9091/sangsanggongbang/admin/balancing/list");
	});
	
	$('#tabs-text-2').ready(function(){
		 $('#list2').load("http://localhost:9091/sangsanggongbang/admin/balancing/list?searchCondition=b_flag&searchKeyword=N");
	});
	$('#tabs-text-3').ready(function(){
		 $('#list3').load("http://localhost:9091/sangsanggongbang/admin/balancing/list?searchCondition=b_flag&searchKeyword=Y");
	});

});


