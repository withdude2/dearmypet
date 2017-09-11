package net.dearmypet.webapp.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import net.dearmypet.webapp.vo.*;

@RestController
//@RequestMapping("/basic/*")
public class RestfulTestController {
	@Autowired
//	LoginVO  loginVO;
	
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
		map.put("String", "aaa");
		map.put("String", "bbb");
		map.put("String", "ccc");
		map.put("String", strarr);
		
		return map;
    }
}
