package net.dearmypet.webapp.service;

import java.util.List;

import net.dearmypet.webapp.vo.PageVO;
import net.dearmypet.webapp.vo.ReplyVO;

public interface ReplyService {

	
	public List<ReplyVO> listReply(int mb_no,PageVO pageVO) throws Exception;
	public int listCount(int mb_no) throws Exception ;
	
	public void addReply(ReplyVO replyVO) throws Exception;
	public void modifyReply(ReplyVO replyVO) throws Exception;
	public void removeReply(int re_no) throws Exception;
	
	
}
