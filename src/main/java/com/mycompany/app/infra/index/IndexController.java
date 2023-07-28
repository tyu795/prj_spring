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
	
	// 솜비앤비 메인
	@RequestMapping("/usrMain")
	public String usrMain() {
		
		// rooms 테이블에 있는 정보를 가져온다
		
		// 가져온 정보를 jsp로 전달해야 된다.
		
		
		
		return "User/infra/biography/usrMain";
	}
	
	// 솜비앤비 숙소 소개
	@RequestMapping("/introduceBNB")
	public String introduceBNB() {
		return "User/infra/biography/introduceBNB";
	}
	
	// 솜비앤비 예약
	@RequestMapping("/reservationBNB")
	public String reservationBNB() {
		return "User/infra/biography/reservationBNB";
	}
	
	
	
	// 회원가입창
	@RequestMapping("/signUpForm")
	public String signUpForm() {
		return "User/infra/member/signUpForm";
	}

	
	
	
}
