package net.dearmypet.webapp.service;
 
import java.util.List;
 
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.dearmypet.webapp.dao.BoardDao;
import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;
 

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private  BoardDao boardDao;

	@Override
	public void regist(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		boardDao.create(vo);
		
	}

	@Override
	public BoardVO read(Integer mb_no) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.read(mb_no);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		boardDao.update(vo);
	}

	@Override
	public void remove(Integer mb_no) throws Exception {
		// TODO Auto-generated method stub
		boardDao.delete(mb_no);
	}

	@Override
	public List<BoardVO> listSearch(PageVO vo) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.listSearch(vo);
	}
	public int listSearchCount(PageVO vo) throws Exception{
		
		return boardDao.listSearchCount(vo);
	}
 

}
