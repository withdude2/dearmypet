package net.dearmypet.webapp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;
@Repository
public class boardDaoImpl implements BoardDao{

	@Autowired
	private SqlSession session;

	private static String namespace="net.dearmypet.mappers.boardMapper";
	
	@Override
	public void create(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
	session.insert(namespace+".create",vo);	
		
	}

	@Override
	public BoardVO read(Integer mb_no) throws Exception {
		// TODO Auto-generated method stub
		
		
		return session.selectOne(namespace+".read", mb_no);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".udate", vo);		
	}

	@Override
	public void delete(Integer mb_no) throws Exception {
		// TODO Auto-generated method stub

		session.update(namespace+".delete", mb_no);		
	}
	
	
	
	
	

	@Override
	public List<BoardVO> listSearch(PageVO pageVO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listSearch",pageVO);
	}

	@Override
	public int  listSearchCount(PageVO pageVO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".listSearchCount", pageVO);
	}

	
	
	
}
