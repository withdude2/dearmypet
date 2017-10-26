package net.dearmypet.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.dearmypet.webapp.validator.MemberValidator;

import net.dearmypet.webapp.service.MemberService;
import net.dearmypet.webapp.vo.LoginVO;

@Controller
public class MemberController { 

	// Logger객체
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	MemberService memberService;
	
	//회원가입 컨트롤러
	@RequestMapping(value = "/memberRegister", method = RequestMethod.POST ) 
	public String memberSignUp(@ModelAttribute LoginVO memberVO, ModelMap model, RedirectAttributes redirectAttributes) throws Exception{
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
	
	//회원리스트 출력
	@RequestMapping(value = "/memberList")
	public ModelAndView memberList() throws Exception{
		int mType = 3;
		Map map = memberService.getMemberList(mType);
		
		return new ModelAndView("Member/memberList.tiles", map);
	}
	/*
	//회원수정
	// 입력해서 유효성검사->에러발생->DB저장후->boardList.jsp로 이동
	@RequestMapping(value = "/defaultMemberChange", method = RequestMethod.POST)
	public String submit(@ModelAttribute LoginVO memberVO, BindingResult result) {
		System.out.println("멤버수정을 위한 컨트롤에 전달된값 =>"+memberVO);
		LoginVO memvo = memberService.upDateMember(memberVO);
		
		if (log.isDebugEnabled()) {
			log.debug("memberVO=>" + memberVO);// 수정한값을 출력
		}
		// 유효성검사->command조사 문제발생->result에 에러정보를 담는다.
		new MemberValidator().validate(memberVO, result);
		// 에러정보가 있다면
		if (result.hasErrors()) {
			return "/memberList";// /memberList.jsp로 이동
		}
		// 변경전의 데이터를 불러오기 -> board(비밀번호) = 웹상에서의 입력 비밀번호
		LoginVO memVo = null;
		String oldFileName = "";// 업로드한 파일의 변경된 파일명을 저장
		memVo = memberDao.selectBoard(memberVO.getSeq());
		// 비밀번호 체크(DB상의 암호!=웹상에서 입력한 암호)
		if (!board.getPwd().equals(command.getPwd())) {
			result.rejectValue("pwd", "invalidPassword");// 적용필드명,에러코드명
			return "boardModify";// boardModify.jsp로 이동
		} else {// 비밀번호가 일치한다면
			// 글수정 메서드 호출
			boardDao.update(command);// DB상에 aaa.txt 업로드
			// 실제로 새로 바뀐 파일을 upload폴더로 전송
			if (!command.getUpload().isEmpty()) {
				try {

					File file = new File(FileUtil.UPLOAD_PATH + "/" + command.getFilename());
					// 물리적으로 데이터 전송(파일 전송)
					command.getUpload().transferTo(file);// 실제 upload에 등록

				} catch (IOException e) {
					e.printStackTrace();
				} catch (Exception e) {
					e.printStackTrace();
				}
				// aaa.txt 새로 업로드한 파일 bbb.jsp -> 전의 데이터가 존재하면 삭제
				if (oldFileName != null) {
					// 이전파일 삭제
					FileUtil.removeFile(oldFileName);
				}
			} // 기존파일 덮어쓰기 else 종료
		} // 비밀번호 일치 else 종료

		// return "redirect:요청명령어"
		return "redirect:/board/list.do"; // return "이동할페이지명"; //defintion name과 동일
	}
	//회원삭제
	
	//추가정보 저장
*/	
}