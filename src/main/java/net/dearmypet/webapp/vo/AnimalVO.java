package net.dearmypet.webapp.vo;

import java.util.Date;

public class AnimalVO {
	private static final long serialVersionUID = 1L; //객체 직렬화-/-역직렬화 대비
	private int p_no;		//동물 고유번호
	private int p_bun;		//동물 등록번호 171027####
	private String p_name;	//이름
	private String p_pic;	//사진
	private String p_loc;	//구조장소
	private Date p_rdate;	//구조월일
	private String p_age;	//추정나이
	private String p_pum;	//동물종류
	private int bd_id;		//품종
	private String p_sex;	//성별
	private String p_char;	//성격
	private String p_con;	//건강상태
	private boolean p_neu;	//중성화여부 y/n
	private String p_shot;	//예방접종
	private int co_no;		//보호단체번호
	private boolean p_isAdopt;	//입양여부 y/n
}