package net.dearmypet.webapp.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.dearmypet.webapp.vo.LoginVO;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {

	private SqlSessionTemplate session;

	public MemberDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	public MemberDaoImpl(SqlSessionTemplate session) {
		this.session = session;
		System.out.println("session=>"+session);
	}	

	@Override
	public LoginVO selectMemberById(String lg_id) {//중복체크를 위한 멤버 검색구문
		// TODO Auto-generated method stub
		System.out.println("멤버다오 impl => "+lg_id);
		//MemberVO m=(MemberVO)session.selectOne("memberMapper.selectMemberById",lg_id);
		LoginVO m = session.selectOne("memberMapper.selectMemberById",lg_id);
		System.out.println("m=>"+m);
		//return session.selectOne("memberMapper.selectMemberById",lg_id);
		return m;
	}
	
	@Override
	public int memberMaxNumCheck() { //일반회원 번호 증가를 위한 부분
		// TODO Auto-generated method stub
		
		return session.selectOne("memberMapper.memberMaxNumCheck");
	}
	
	@Override
	public int insertMember(LoginVO memberVo) { //회원정보를 db에 입력
		// TODO Auto-generated method stub
		System.out.println("멤버다오 impl2 => "+memberVo);
		return session.insert("memberMapper.insertMember", memberVo);
	}
	


}
