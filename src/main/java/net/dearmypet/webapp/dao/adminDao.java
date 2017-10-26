package net.dearmypet.webapp.dao;

import java.util.List;
import java.util.Map;

import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;

public interface adminDao {

	public BoardVO read(Integer mb_no)throws Exception;
	public void delete(Map<String,Object> map)throws Exception;

	
	
	public List<BoardVO>listSearch(PageVO vo) throws Exception;
	public int listSearchCount(PageVO pageVO)throws Exception;
	
	
}
