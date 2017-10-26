package net.dearmypet.webapp.dao;

import java.util.List;

import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;

public interface BoardDao {

	public void create(BoardVO vo)throws Exception;
	public BoardVO read(Integer mb_no)throws Exception;
	public void update(BoardVO vo)throws Exception;
	public void delete(Integer mb_no)throws Exception;

	
	
	public List<BoardVO>listSearch(PageVO vo) throws Exception;
	public int listSearchCount(PageVO pageVO)throws Exception;
	
	
}
