package net.dearmypet.webapp.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.dearmypet.webapp.service.LoginService;
import net.dearmypet.webapp.vo.*;

// 테스트 URL :  http://localhost/dearpet/sendLoginVO.jsn
@RestController
//@RequestMapping("/basic/*")
public class RestfulTestController {
//	@Autowired
//	LoginVO  loginVO;

	@Autowired
	private LoginService loginService;
	
	// json객체 리턴
//    @RequestMapping("/sendLoginVO")
    @GetMapping(value="/sendLoginVO.jsn", headers="Accept=application/json")
//    public LoginVO sendLoginVO(){
		public HashMap<String, Object> sendLoginVO(){
    	/*loginVO.setLg_email("lg_email");
    	loginVO.setLg_id("lg_id");
    	loginVO.setLg_login_type(1);
    	loginVO.setLg_nickname("lg_nickname");
    	loginVO.setLg_no(1);
    	loginVO.setLg_profile("lg_profile");
    	loginVO.setLgfb_no(1);
    	loginVO.setLgka_no(1);
    	loginVO.setM_no(1);
    	
    	return loginVO;*/
		HashMap<String, Object> map = new HashMap();
		String[] strarr = new String[3];
		strarr[0] = "first";
		strarr[1] = "second";
		strarr[2] = "third";
		Map mapLogin = loginService.getLoginAllList();
		
		map.put("str1", "aaa");
		map.put("str2", "bbb");
		map.put("str3", "ccc");
		map.put("String", strarr);
		map.put("mapLogin", mapLogin);
		
		return map;
    }
}
