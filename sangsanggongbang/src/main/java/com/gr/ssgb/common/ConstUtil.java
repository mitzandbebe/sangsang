package com.gr.ssgb.common;

import java.io.File;

public interface ConstUtil {
	//페이징 처리에 필요한 상수
	int RECORD_COUNT=5;  //한페이지에 보여줄 레코드 개수
	int BLOCK_SIZE=5;
	
	File file=new File("");
	
	//파일 업로드 처리 관련 상수
	String FILE_UPLOAD_TYPE="test";
	//String FILE_UPLOAD_TYPE="deploy";
	
	//자료실 - 파일 저장 경로
	String FILE_UPLOAD_PATH="file_upload";
	String FILE_UPLOAD_PATH_TEST= file.getAbsolutePath() +"\\src\\main\\webapp\\resources\\file_upload";
	
	//관리자 페이지 - 상품 등록시 상품 이미지 저장 경로
	String IMAGE_FILE_UPLOAD_PATH="upload_images";
	String IMAGE_FILE_UPLOAD_PATH_TEST=file.getAbsolutePath() +"\\src\\main\\webapp\\resources\\upload_images";
	
	//"C:\\Users\\jung9\\git\\sangsang\\sangsanggongbang
	
	//자료실 업로드인지, 상품 등록시 업로드인지 구분값
	int UPLOAD_FILE_FLAG=1; //자료실 업로드
	int UPLOAD_IMAGE_FLAG=2; //상품 등록시 이미지 업로드
	
}
