package net.dearmypet.webapp.service;

import java.util.List;

import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;

public interface BoardService {

	
	public void regist(BoardVO vo) throws Exception;
	public BoardVO read(Integer mb_no) throws Exception;
	public void modify(BoardVO vo) throws Exception;
	public void remove(Integer mb_no) throws Exception;
	
	
	public List<BoardVO> listSearch(PageVO vo) throws Exception;
	public int listSearchCount(PageVO vo) throws Exception;
}
