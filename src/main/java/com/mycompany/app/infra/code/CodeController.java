package com.mycompany.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping("/codeXdmList")
	public String codeXdmList(CodeVo vo,Model model) {
		
		List<Code> list = service.selectList(vo);
		
		model.addAttribute("list",list);
		
		return "Admin/infra/code/codeXdmList";
		
	}
	
	@RequestMapping("/codeXdmForm")
	public String codeXdmForm(CodeVo vo,Model model) {
		Code code = service.selectOne(vo);
		model.addAttribute("item", code);
		return "Admin/infra/code/codeXdmForm";
	}
	
	// 등록
	@RequestMapping("/codeInst")
	public String codeInsert(Code dto) {
		
		service.insert(dto);
		
		return "redirect:/codeXdmList";
		
	}
	
	// 삭제
	@RequestMapping("/codeDele")
	public String codeDelete(Code dto) {
		
		service.delete(dto);
		
		return "redirect:/codeXdmList";
		
	}
	
	// 수정
	@RequestMapping("codeUele")
	public String codeUelete(Code dto) {
		
		service.uelete(dto);
		
		return "redirect:/codeXdmList";
	}
	
	
	// 업데이트
	@RequestMapping("codeUpdt")
	public String codeUpdt(Code dto) {
		
		service.update(dto);
		
		return "redirect:/codeXdmList";
	}
	
	
}
