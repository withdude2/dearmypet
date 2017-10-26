package net.dearmypet.webapp.vo;

public class BoardVO {

	private Integer mb_no;
	private String mb_sub;
	private String mb_date;
	private String mb_id;
	private String mb_con;
	private String mb_count;
	private Integer lg_no;
	
	
	
	public Integer getMb_no() {
		return mb_no;
	}
	public void setMb_no(Integer mb_no) {
		this.mb_no = mb_no;
	}
	public String getMb_sub() {
		return mb_sub;
	}
	public void setMb_sub(String mb_sub) {
		this.mb_sub = mb_sub;
	}
	public String getMb_date() {
		return mb_date;
	}
	public void setMb_date(String mb_date) {
		this.mb_date = mb_date;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_con() {
		return mb_con;
	}
	public void setMb_con(String mb_con) {
		this.mb_con = mb_con;
	}
	public String getMb_count() {
		return mb_count;
	}
	public void setMb_count(String mb_count) {
		this.mb_count = mb_count;
	}
	public Integer getLg_no() {
		return lg_no;
	}
	public void setLg_no(Integer lg_no) {
		this.lg_no = lg_no;
	}
	
	
	
	
	@Override
	public String toString() {
		return "BoardVO [mb_no=" + mb_no + ", mb_sub=" + mb_sub + ", mb_date=" + mb_date + ", mb_id=" + mb_id
				+ ", mb_con=" + mb_con + ", mb_count=" + mb_count + ", lg_no=" + lg_no + "]";
	}
	
	
	
}
