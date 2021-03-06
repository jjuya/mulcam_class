package article.models;

public class PageVO {
	
	private int blockSize = 10;		// 한페이지에 출력할 페이지수
	private int pageSize = 10;
	
	private long startNum; // 출력페이지 시작번호
	private long endNum; // 출력페이지 끝번호
	
	private long startPage;	// 페이지 블럭 시작페이지
	private long endPage; // 페이지 블럭 끝페이지	
	
	private long pageCount = 0;		// 전체 페이지 수
	
	//constructor
	public PageVO() {}
	
	public PageVO(long pg, long total) {
		startNum = (pg - 1) * pageSize + 1;
		endNum = pg * pageSize;	
		
		startPage = (pg - 1)/blockSize * blockSize + 1;
		endPage	  = (pg - 1)/blockSize * blockSize + blockSize;

		pageCount = total / pageSize;	
		
		if (total % pageSize != 0){
			pageCount++;
		}
		
		if (pageCount < endPage) endPage = pageCount;
	}
	
//	public PageVO(long startNum, long endNum) {
//		super();
//		this.startNum = startNum;
//		this.endNum = endNum;
//	}
	
	//getter setter
	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public long getStartNum() {
		return startNum;
	}

	public void setStartNum(long startNum) {
		this.startNum = startNum;
	}

	public long getEndNum() {
		return endNum;
	}

	public void setEndNum(long endNum) {
		this.endNum = endNum;
	}

	public long getStartPage() {
		return startPage;
	}

	public void setStartPage(long startPage) {
		this.startPage = startPage;
	}

	public long getEndPage() {
		return endPage;
	}

	public void setEndPage(long endPage) {
		this.endPage = endPage;
	}

	public long getPageCount() {
		return pageCount;
	}

	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}

	@Override
	public String toString() {
		return "PageVO [blockSize=" + blockSize + ", pageSize=" + pageSize + ", startNum=" + startNum + ", endNum="
				+ endNum + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	
	
} //end class
