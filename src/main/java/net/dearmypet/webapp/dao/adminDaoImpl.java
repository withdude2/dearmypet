package net.dearmypet.webapp.dao;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;
@Repository
public class adminDaoImpl implements adminDao{

	@Autowired
	private SqlSession session;

	private static String namespace="mappers.adminMapper";
	
	 

	@Override
	public BoardVO read(Integer mb_no) throws Exception {
		// TODO Auto-generated method stub
		
		
		return session.selectOne(namespace+".read", mb_no);
	}

	 
	@Override
	public void delete(Map<String,Object> map) throws Exception {
		// TODO Auto-generated method stub

		session.update(namespace+".delete", map);		
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
