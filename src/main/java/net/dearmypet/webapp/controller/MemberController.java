package net.dearmypet.webapp.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.dearmypet.webapp.service.MemberService;
import net.dearmypet.webapp.vo.LoginVO;

@Controller
@RequestMapping(value = "/memberRegister")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(method = RequestMethod.POST)
	public String getLoginAllList(@ModelAttribute LoginVO memberVO, ModelMap model, RedirectAttributes redirectAttributes, HttpServletResponse response) throws Exception{
		System.out.println("멤버컨트롤 에 전달된 memberVO"+memberVO);
		int nRet = memberService.getinsertMember(memberVO);
		
		System.out.println("멤버컨트롤 nRet => "+nRet);
		
		model.addAttribute("ok", nRet);
		model.addAttribute("memberVO", memberVO);
		
		redirectAttributes.addFlashAttribute("ok", nRet).addFlashAttribute("memberVO", memberVO);
		
		if(nRet == -2) {
			return "redirect:/main_Sign_Up.dmp";
		}
		

		return "redirect:/main_Sign_Up_Result.dmp";
	}
}
