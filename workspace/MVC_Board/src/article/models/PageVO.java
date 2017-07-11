package article.models;

public class PageVO {
	private long startNum;
	private long endNum;
	
	//constructor
	public PageVO() {}
	
	public PageVO(long startNum, long endNum) {
		super();
		this.startNum = startNum;
		this.endNum = endNum;
	}
	
	//getter setter
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
	
	@Override
	public String toString() {
		return "PageVO [startNum=" + startNum + ", endNum=" + endNum + "]";
	}
} //end class
