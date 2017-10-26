package net.dearmypet.webapp.controller;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import net.dearmypet.webapp.service.adminService;
import net.dearmypet.webapp.vo.BoardVO;
import net.dearmypet.webapp.vo.PageVO;
 
 
@Controller 
 
public class AdminController {

 
	@Autowired
	private adminService service;
 
	@GetMapping("/admin/board.dmp")
	public String list(PageVO pageVO , Model mv) throws Exception{
  	 mv.addAttribute("list",service.listSearch(pageVO));
 	 pageVO.setTotalCount(service.listSearchCount(pageVO)); 
	 mv.addAttribute("pageVO",pageVO);
	   return "/dmp_board.dmp";
	}
	@GetMapping("/admin/delete.dmp")
	public String deletePost(HttpServletRequest req, Model mv,PageVO pageVO) throws Exception{
	  Map<String, Object> map= new HashMap<String, Object>();
	  int adminType=Integer.parseInt(req.getParameter("adminType"));
	  map.put("adminType", adminType); //#{id}에 셋팅
	  List<String> list = new ArrayList<String>();
	   
	    String[] names=req.getParameterValues("names");
	   System.out.println(req.getParameterValues("names"));
	    
	   for ( int i = 0 ; i < names.length ; i++ ) {
	    list.add(names[i]);
	    }

	   map.put("names", names); //#{id}에 셋팅
	 service.remove(map);
	    return "redirect:/admin/board.dmp?adminType="+adminType;
  }



}	
	 
	
 
	
	 