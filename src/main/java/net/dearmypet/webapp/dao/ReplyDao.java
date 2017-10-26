package net.dearmypet.webapp.dao;

import java.util.List;

import net.dearmypet.webapp.vo.PageVO;
import net.dearmypet.webapp.vo.ReplyVO;

public interface ReplyDao {

	public List<ReplyVO> listReply(int mb_no,PageVO pageVO) throws Exception;
	public int listCount(int mb_no) throws Exception;
	
	
	public void create(ReplyVO replyVO) throws Exception;
	public void update(ReplyVO replyVO) throws Exception;
	public void delete(int re_no) throws Exception;
	
	 

}
