/**
 * 
 */
 
 
 $(function() {
	$('#tabs-text-1-tab').click(function(){
		$('#tabs-text-1-tab').attr('class','nav-link mb-sm-3 mb-md-0 active');
		$('#tabs-text-2-tab').attr('class','nav-link mb-sm-3 mb-md-0');
		$('#tabs-text-3-tab').attr('class','nav-link mb-sm-3 mb-md-0');
	});
	
	$('#tabs-text-2-tab').click(function(){
		$('#tabs-text-1-tab').attr('class','nav-link mb-sm-3 mb-md-0');
		$('#tabs-text-2-tab').attr('class','nav-link mb-sm-3 mb-md-0 active');
		$('#tabs-text-3-tab').attr('class','nav-link mb-sm-3 mb-md-0');
	});
	
	$('#tabs-text-3-tab').click(function(){
		$('#tabs-text-1-tab').attr('class','nav-link mb-sm-3 mb-md-0');
		$('#tabs-text-2-tab').attr('class','nav-link mb-sm-3 mb-md-0');
		$('#tabs-text-3-tab').attr('class','nav-link mb-sm-3 mb-md-0 active');
	});
});