/**
 * 정산신청 탭 게시판 로드
 */
 
 
 $(function() {
	$('#tabs-text-1').ready(function(){
	$('#list1').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list2");
	});
	
	$('#tabs-text-2').ready(function(){
		 $('#list2').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list2?searchCondition=b_flag&searchKeyword=N");
	});
	$('#tabs-text-3').ready(function(){
		 $('#list3').load("http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list2?searchCondition=b_flag&searchKeyword=Y");
	});
	
	$('#pagelinknum2:first').click(function(){
		location.href='http://localhost:9091/sangsanggongbang/dashboard/host/balancing/list2?currentPage=2=&searchCondition=b_flag&searchKeyword=N';
	});
});


