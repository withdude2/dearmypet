package net.dearmypet.webapp.controller;

import java.util.HashMap;
 
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
 
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import net.dearmypet.webapp.service.ReplyService;
import net.dearmypet.webapp.vo.PageVO;
import net.dearmypet.webapp.vo.ReplyVO;

@RestController 
@RequestMapping("/reply")
public class ReplyController {
	@Autowired
	private ReplyService service;
	
	/*댓글추 가*/
	@RequestMapping(value="/add.jsn", method= RequestMethod.POST)
	public  ResponseEntity<Map<String,Object>>  register(@RequestBody ReplyVO replyVO,PageVO pageVO) {
		System.out.println("regiter 들어옴");
		Map<String,Object> map= new HashMap<String,Object>();
		
		 ResponseEntity<Map<String,Object>>  entity = null;
		
		try {
			service.addReply(replyVO);
			
			map.put("relylist",service.listReply(replyVO.getMb_no(),pageVO));
			pageVO.setTotalCount(service.listCount(replyVO.getMb_no())); 
			map.put("pageVO",pageVO);
	
			
			entity=new  ResponseEntity<Map<String,Object>> (map,HttpStatus.OK);
		} catch (Exception e) {
			entity=new  ResponseEntity<Map<String,Object>> (HttpStatus.BAD_REQUEST);
			//실패시 400 error 전송함
		}
		return entity;
	}  
	
	/*리스트*/
	@RequestMapping("/{mb_no}/reply.jsn")
	public ResponseEntity<Map<String,Object>> list(@PathVariable("mb_no") int mb_no,PageVO pageVO	){
	 
		System.out.println("list 들어옴");
	
		System.out.println("mb_no="+mb_no); 
		ResponseEntity<Map<String,Object>> entity = null;
		
		Map<String,Object> map= new HashMap<>();
		try {	

	 	map.put("relylist",service.listReply(mb_no,pageVO));
			pageVO.setTotalCount(service.listCount(mb_no)); 
			map.put("pageVO",pageVO);
			entity=new ResponseEntity<>(map,HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			//실패시 400 error 전송함
		}
		
		return entity;
		  
		
	}  
	
	
	/*수정*/
	@RequestMapping(value="/update.jsn", method=RequestMethod.GET)
	public ResponseEntity<String> update(@PathVariable("re_no") Integer re_no,@RequestBody ReplyVO replyVO) throws Exception {
		System.out.println("update 들어옴");
		
		
		ResponseEntity<String> entity = null;
		try {
			replyVO.setRe_no(re_no);
			service.modifyReply(replyVO);
			
			entity=new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			entity=new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
			//실패시 400 error 전송함
		}
		return entity;
	} 
	
	
	/*삭제*/
	@RequestMapping(value="/delete.jsn", method=RequestMethod.GET)
	public ResponseEntity<String> delete(@RequestParam("re_no") Integer re_no) {
		System.out.println("update 들어옴");
		
		ResponseEntity<String> entity = null;
		try {
			service.removeReply(re_no);

			
			entity=new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			entity=new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
			//실패시 400 error 전송함
		}
		return entity;
	} 
	
	
	
		
	
}
