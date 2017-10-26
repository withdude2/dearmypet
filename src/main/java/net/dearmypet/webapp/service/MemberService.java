package net.dearmypet.webapp.service;

import java.util.Map;

import net.dearmypet.webapp.vo.LoginVO;

public interface MemberService {
	public int getinsertMember(LoginVO memberVo) ; // 모든 Login 레코드
	public Map getMemberList(int mType); //일반 멤버 리스트 출력
	public LoginVO upDateMember(LoginVO memberVO); //멤버 업데이트
	
}
