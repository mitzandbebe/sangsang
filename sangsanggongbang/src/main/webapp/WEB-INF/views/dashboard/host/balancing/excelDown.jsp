<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Excel 업로드 및 다운로드</title>
	<script src="${pageContext.request.contextPath }/resources/vendor/jquery/dist/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">
	function excelUploadProcess(){
		var f = new FormData(document.getElementById('form1'));
		$.ajax({
			url: "uploadExcel",
			data: f,
			processData: false,
			contentType: false,
			type: "POST",
			success: function(data){
				console.log(data);
				document.getElementById('result').innerHTML = JSON.stringify(data);
			}
		});
	}
    
	function excelDownloadProcess(){
		document.form1.target = "hide_frame";
		document.form1.action = "excelDownload";
		..
		document.form1.submit();
	}
</script>
<form id="form1" name="form1" method="post" enctype="multipart/form-data" onsubmit="return false">
	<input type="file" id="fileInput" name="fileInput">
	<a href="javascript:void(0);" onclick="excelUploadProcess()">엑셀업로드</a>
	<a href="javascript:void(0);" onclick="excelDownloadProcess()">엑셀다운로드</a>
</form>
<iframe width=0 height=0 frameborder=0 scrolling=no name="hide_frame" id="hide_frame" style="margin:0"></iframe>
<div id="result"></div>
</body>
</html>
