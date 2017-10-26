package net.dearmypet.webapp.service;
 
 
 
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.dearmypet.webapp.dao.BoardDao;
import net.dearmypet.webapp.dao.adminDao;
import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;
 
import java.util.List;
import java.util.Map;

@Service
public class adminServiceImpl implements adminService {

	@Autowired
	private  adminDao adminDao;

 

	@Override
	public BoardVO read(Integer mb_no) throws Exception {
		// TODO Auto-generated method stub
		return adminDao.read(mb_no);
	}
 

	@Override
	public void remove(Map map) throws Exception {
		// TODO Auto-generated method stub
		adminDao.delete(map);
	}

	@Override
	public List<BoardVO> listSearch(PageVO vo) throws Exception {
		// TODO Auto-generated method stub
		return adminDao.listSearch(vo);
	}
	@Override
	public int listSearchCount(PageVO vo) throws Exception{
		
		return adminDao.listSearchCount(vo);
	}


	 
 

}
