package com.mycompany.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

	
	 @RequestMapping("/loginXdmForm") 
	 public String loginXdmForm() { 
		 return "Admin/infra/member/loginXdmForm";
	 }
	 
	 @ResponseBody
	 @RequestMapping("/loginProc")
	 public Map<String, Object> loginProc(MemberVo vo) {
		 Map<String,Object> returnMap = new HashMap<String,Object>();
		 
		 Member rtMember = service.selectOneAjax(vo);
		 
		 if(rtMember !=null) {
			 returnMap.put("rtMember",rtMember);
			 returnMap.put("rt", "success");
		 } else {
			 returnMap.put("rt","fail");
		 }
		 return returnMap;
	 }

	}
