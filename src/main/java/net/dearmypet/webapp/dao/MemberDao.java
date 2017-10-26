package net.dearmypet.webapp.dao;

import java.util.List;

import net.dearmypet.webapp.vo.LoginVO;

public interface MemberDao {
	
	// insert / update / delete의 return 타입은 int로 지정해주세요
	public LoginVO selectMemberById(String lg_id); // 전체 회원 조회
	
	public int memberMaxNumCheck();// 회원번호 증가를 위한 조회
	
	public int insertMember(LoginVO memberVo); // 일반회원가입
	
	public List<LoginVO> selectDefaultMember(int mType);//전체 일반회원 검색
	
}
