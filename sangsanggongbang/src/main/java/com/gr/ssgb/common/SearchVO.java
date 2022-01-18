package com.gr.ssgb.common;

/**
 * 검색 정보를 담고있는 Bean
 * 페이징 처리 관련 변수 포함
*/

public class SearchVO {
	/** 검색조건 */
	private String searchCondition = "";
	
	/** 검색키워드 */
	private String searchKeyword = "";
    
	/** 검색 사용여부 */
	private String searchUseYn = "";
	
	/** 현재 페이지 */
	private int currentPage = 1;
	
    
    /**블럭당 보여질 페이지 수,  페이지 사이즈 */
    private int blockSize; // properties에서 설정
    
    /** 시작 인덱스 */
    private int firstRecordIndex = 1;
    
    /** 끝 인덱스 */
    private int lastRecordIndex = 1;
    
    /**페이지 별 레코드 갯수 (pageSize) */
    private int recordCountPerPage; 
    
    //페이징처리를 위한 호스트번호
    private int hNo;
    //페이징처리를 위한 호스트번호
    private int cNo;
    private int mNo;
    
    
   public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

public int gethNo() {
		return hNo;
	}

	public void sethNo(int hNo) {
		this.hNo = hNo;
	}

/**
     * 검색 조건을  설정한다.
     * @param bean 검색조건
     */
    public void setSearchVO(SearchVO bean){
    	this.currentPage = bean.currentPage;
    	this.searchCondition = bean.getSearchCondition();
    	this.searchKeyword = bean.getSearchKeyword();
    	this.searchUseYn = bean.getSearchUseYn();
    	this.blockSize = bean.blockSize;
    	this.firstRecordIndex = bean.firstRecordIndex;
    	this.lastRecordIndex = bean.lastRecordIndex;
    	this.recordCountPerPage = bean.recordCountPerPage;
    	this.hNo = bean.hNo;
    	this.cNo = bean.cNo;
    }

    public String getSearchCondition() {
    	return searchCondition;
    }

    public void setSearchCondition(String searchCondition) {
    	this.searchCondition = searchCondition;
    }

    public String getSearchKeyword() {
    	return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
    	this.searchKeyword = searchKeyword;
    }

    public String getSearchUseYn() {
    	return searchUseYn;
    }

    public void setSearchUseYn(String searchUseYn) {
    	this.searchUseYn = searchUseYn;
    }

    public int getCurrentPage() {
    	return currentPage;
    }

    public void setCurrentPage(int currentPage) {
    	this.currentPage = currentPage;
    }

    public int getBlockSize() {
    	return blockSize;
    }

    public void setBlockSize(int blockSize) {
    	this.blockSize = blockSize;
    }

    public int getFirstRecordIndex() {
    	return firstRecordIndex;
    }

    public void setFirstRecordIndex(int firstRecordIndex) {
    	this.firstRecordIndex = firstRecordIndex;
    }

    public int getLastRecordIndex() {
    	return lastRecordIndex;
    }

    public void setLastRecordIndex(int lastRecordIndex) {
    	this.lastRecordIndex = lastRecordIndex;
    }

    
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	@Override
	public String toString() {
		return "SearchVO [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", searchUseYn="
				+ searchUseYn + ", currentPage=" + currentPage + ", blockSize=" + blockSize + ", firstRecordIndex="
				+ firstRecordIndex + ", lastRecordIndex=" + lastRecordIndex + ", recordCountPerPage="
				+ recordCountPerPage + ", hNo=" + hNo + ", cNo=" + cNo + ", mNo=" + mNo + "]";
	}

	

	
}
 