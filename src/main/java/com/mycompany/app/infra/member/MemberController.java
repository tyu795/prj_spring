package com.mycompany.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.codegroup.CodeGroup;
import com.mycompany.app.infra.codegroup.CodeGroupVo;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/memberList")
	public String memberList(Model model) {
		
		List<Member> list = service.selectList();
		model.addAttribute("list",list);
		return "Admin/infra/member/memberList";
	}
	
	

	@RequestMapping("/memberXdmForm")
	public String memberXdmForm(MemberVo vo, Model model) {
		Member member = service.selectOne(vo);
		model.addAttribute("item", member);
		return "Admin/infra/member/memberXdmForm";
	}
	
	
	@RequestMapping("/memberInst")
	public String memberInsert(Member dto) {
		
		service.insert(dto);
		
		return "redirect:/memberList";
	}
	
	

	
	
	
	
	
	
	
	

}
