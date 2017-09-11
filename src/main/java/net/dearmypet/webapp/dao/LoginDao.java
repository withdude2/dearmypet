package net.dearmypet.webapp.dao;

import java.util.List;

import net.dearmypet.webapp.vo.LoginVO;

public interface LoginDao {
	// insert / update / delete의 return 타입은 int로 지정해주세요
	List<LoginVO> selectAllLogin(); // 전체 회원 조회
}
