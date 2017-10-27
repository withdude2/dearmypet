package net.dearmypet.webapp.controller;
 
import java.util.HashMap;
import java.util.Map;
 

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.dearmypet.webapp.service.BoardService;
import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;
 
 
@Controller 
@RequestMapping("/board")
public class BoardController {

 
	@Autowired
	private BoardService service;
	
	
	@GetMapping("/board.dmp")
	public String list(PageVO pageVO , Model mv) throws Exception{

		System.out.println("board/board.dmp");
		

	 mv.addAttribute("list",service.listSearch(pageVO));
	 System.out.println("list 사이즈 ="+service.listSearch(pageVO).size());
	 
	 System.out.println(pageVO.getPage());
	 System.out.println(pageVO.getSearchType());
	 System.out.println(pageVO.getKeyword());
	  
	 
	 pageVO.setTotalCount(service.listSearchCount(pageVO)); 
	 mv.addAttribute("pageVO",pageVO);
	 
	  return "/board/boarder.dmp";
	}
	 	
	@PostMapping("/register.dmp")
	public String regiterGet(BoardVO vo,Model mv) throws Exception{
		 System.out.println("board/res.dmp");
		 System.out.println("sub"+vo.getMb_sub());
		 
		
	  mv.addAttribute("success", "success");
	  service.regist(vo);
	  
	  return "redirect:/board/board.dmp";
	}
	  
	@GetMapping("/delete.dmp")
	public String deletePost(@RequestParam("mb_no") int mb_no) throws Exception{
	 System.out.println("board.dmp/delete");
		
	 service.remove(mb_no);
	 	  return "redirect:/board/board.dmp";
	}
	 
	@PostMapping("/update.dmp")
	public String updatePost(Model mv) throws Exception{
	 System.out.println("board/board.dmp");
		
	  mv.addAttribute("success", "success");
	
	
	  
	  
	  return "/board/board.dmp";
	}
	
	
	
	
	
 
	
	
	
	
	
}
