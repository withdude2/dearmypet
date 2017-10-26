package net.dearmypet.webapp.service;

import java.util.List;
import java.util.Map;
 
import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;

public interface adminService {

	
 
	public BoardVO read(Integer mb_no) throws Exception;
	public void remove(Map<String,Object> map) throws Exception;
	
	
	
	public List<BoardVO> listSearch(PageVO vo) throws Exception;
	public int listSearchCount(PageVO vo) throws Exception;
}
