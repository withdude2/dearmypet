package net.dearmypet.webapp.vo;

import java.util.Date;

public class ReplyVO {

	
	private int re_no;
	private String re_id ;
	private Date re_date;
	private String re_con;
	private int re_ref_step;
	private int re_ref_level;
	private int lg_no;
	private int mb_no;
	private int mb_no2;
	private int mb_no3;
	private String re_typeno;
	
 
 

	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public String getRe_id() {
		return re_id;
	}
	public void setRe_id(String re_id) {
		this.re_id = re_id;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	public String getRe_con() {
		return re_con;
	}
	public void setRe_con(String re_con) {
		this.re_con = re_con;
	}
	public int getRe_ref_step() {
		if(mb_no != 0) {
			return re_ref_step=mb_no;
		}else if(mb_no2 != 0) {
		
			return re_ref_step=mb_no2;
		}else		{
			return re_ref_step=mb_no3;
		}
		
	 	}
	 
	public void setRe_ref_step(int re_ref_step) {
		this.re_ref_step = re_ref_step;
	}
	public int getRe_ref_level() {
		return re_ref_level;
	}
	public void setRe_ref_level(int re_ref_level) {
		this.re_ref_level = re_ref_level;
	}
	public int getLg_no() {
		return lg_no;
	}
	public void setLg_no(int lg_no) {
		this.lg_no = lg_no;
	}
	public int getMb_no() {
		return mb_no;
	}
	public void setMb_no(int mb_no) {
		this.mb_no = mb_no;
	}
	public int getMb_no2() {
		return mb_no2;
	}
	public void setMb_no2(int mb_no2) {
		this.mb_no2 = mb_no2;
	}
	public int getMb_no3() {
		return mb_no3;
	}
	public void setMb_no3(int mb_no3) {
		this.mb_no3 = mb_no3;
	}
	public String getRe_typeno() {
		return re_typeno;
	}
	public void setRe_typeno(String re_typeno) {
		this.re_typeno = re_typeno;
	}
	
	
	@Override
	public String toString() {
		return "ReplyVO [re_no=" + re_no + ", re_id=" + re_id + ", re_date=" + re_date + ", re_con=" + re_con
				+ ", re_ref_step=" + re_ref_step + ", re_ref_level=" + re_ref_level + ", lg_no=" + lg_no + ", mb_no="
				+ mb_no + ", mb_no2=" + mb_no2 + ", mb_no3=" + mb_no3 + ", re_typeno=" + re_typeno + "]";
	}

	
}
