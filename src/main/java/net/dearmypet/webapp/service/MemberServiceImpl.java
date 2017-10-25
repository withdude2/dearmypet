package net.dearmypet.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.dearmypet.webapp.dao.MemberDao;
import net.dearmypet.webapp.vo.LoginVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public int getinsertMember(LoginVO memberVo) {
	//if(memberVo.getLg_id() == null) return -2;
		
		// ID 중복여부 체크
		LoginVO memVo = memberDao.selectMemberById(memberVo.getLg_id()); //저장된 회원ID MemberVO memVo = memberDao.selectMemberById(memberVo.getLg_id())
		System.out.println("멤버서비스 memberVo => "+memVo);
		int nRetJoin = -2;
		
		//중복여부 = 회원ID.equles(저장된 회원ID)
		if((memVo == null) || (!memberVo.getLg_id().equals(memVo.getLg_id()))) {
			System.out.println("중복체크 완료");
			
			//회원 종류값 입력
			if(memberVo.getLgfb_no() == 0 && memberVo.getLgka_no() == 0) { //페이스북-카카오 인지 확인
				int count = memberDao.memberMaxNumCheck();
				System.out.println("일반회원의 기존 최고 번호 count=>"+count);
				count = count+1;
				memberVo.setM_no(count);
				memberVo.setLg_login_type(3);
				
				nRetJoin = memberDao.insertMember(memberVo);
				System.out.println("멤버서비스 nRetJoin =>"+nRetJoin);
			}
		} else { // 중복회원 존재
			nRetJoin = -2;
		}
		

		System.out.println("멤버서비스impl의 nRetJoin값 => "+nRetJoin);

		return nRetJoin;
	}

}
