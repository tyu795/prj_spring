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
	@RequestMapping("/loginXdmForm")
	public String loginXdmForm() {
		return "Admin/infra/member/loginXdmForm";
	}
	
	//관리자 페이지창
	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "Admin/infra/index/indexXdmView";
	}
	
	
//	@RequestMapping("/codeGroupXdmList")
//	public String codeGroupXdmList() {
//		return "Admin/infra/codegroup/codeGroupXdmList";
//	}
	
	/*
	 * @RequestMapping("/codeGroupXdmForm") public String codeGroupXdmForm() {
	 * return "Admin/infra/codegroup/codeGroupXdmForm"; }
	 */
	
	
	
}
