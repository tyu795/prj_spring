package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "User/infra/biography/biographyUsrView";
	}
	
	
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "User/infra/index/indexUsrView";
	}
	
	//관리자 로그인창
//	@RequestMapping("/loginXdmForm")
//	public String loginXdmForm() {
//		return "Admin/infra/member/loginXdmForm";
//	}
	
	//관리자 페이지창
	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "Admin/infra/index/indexXdmView";
	}
	
	// ---------------------------------사용자 페이지---------------------------------------------
	
	//사용자 포폴 메인창
	@RequestMapping("/usrMain")
	public String usrMain() {
		return "User/infra/biography/usrMain";
	}
	
	
	// 회원가입창
	@RequestMapping("/signUpForm")
	public String signUpForm() {
		return "User/infra/member/signUpForm";
	}

	
	
	
}
