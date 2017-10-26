package net.dearmypet.webapp.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.dearmypet.webapp.vo.PageVO;
import net.dearmypet.webapp.vo.ReplyVO;

@Repository
public class ReplyDaoImpl implements ReplyDao{

	@Autowired
	private SqlSession session;
	
	private static final String namespace="mapper.reply";


	@Override
	public int listCount(int mb_no) throws Exception {
		// TODO Auto-generated method stub
		
		return session.selectOne(namespace+".listCount", mb_no);
	}

	@Override
	public List<ReplyVO> listReply(int mb_no,PageVO pageVO) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> map=new HashMap<String,Object>();
			
	 	int pageStart = pageVO.getStartPage();
		map.put("mb_no", mb_no);
		map.put("pageStart", pageStart);
		return session.selectList(namespace+".listReply",map);
	}

	@Override
	public void create(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create",replyVO);
		}

	@Override
	public void update(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		
		session.update(namespace+".update",replyVO);
		
	}

	@Override
	public void delete(int re_no) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete",re_no);
		
	}

}
