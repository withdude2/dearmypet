package net.dearmypet.webapp.service;

import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.dearmypet.webapp.dao.ReplyDao;
import net.dearmypet.webapp.vo.PageVO;
import net.dearmypet.webapp.vo.ReplyVO;
@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyDao replyDao;
	
	
	@Override
	public List<ReplyVO> listReply(int mb_no,PageVO pageVO) throws Exception {
		// TODO Auto-generated method stub
		return replyDao.listReply(mb_no,pageVO);
	}
	public int listCount(int mb_no) throws Exception {
		// TODO Auto-generated method stub
		return replyDao.listCount(mb_no);
	}

	@Override
	public void addReply(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		replyDao.create(replyVO);
		
	}

	@Override
	public void modifyReply(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		replyDao.update(replyVO);
	}

	@Override
	public void removeReply(int re_no) throws Exception {
		// TODO Auto-generated method stub
		replyDao.delete(re_no);
	}

	
	
	
}
