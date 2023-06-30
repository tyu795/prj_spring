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
	
	@RequestMapping("/codeGroupXdmList")
	public String codeGroupXdmList(CodeVo vo,Model model) {
		
		List<Code> list = service.selectList(vo); 
		
		// 왼쪽의 list 는 jsp 에서 사용할 변수명
		model.addAttribute("list",list);
		
		return "Admin/infra/codegroup/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeVo vo,Model model) {
		
		 System.out.println("controller:vo.getshOption():" + vo.getShOption());
		 System.out.println("controller:vo.getshOption():" + vo.getShOption());
		 
		
		
		List<Code> list = service.selectList(vo); 
		
		// 왼쪽의 list 는 jsp 에서 사용할 변수명
		model.addAttribute("list",list);
		
		return "codeGroupList";
	}
	
	@RequestMapping("/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeVo vo, Model model) {
		Code codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		return "Admin/infra/codegroup/codeGroupXdmForm";
	}

	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(Code dto) {
	
		service.update(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupDele")
	public String codeGroupDelete(Code dto) {
		
		
		service.delete(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupInst")
	public String codeGroupInsert(Code dto) {
		
		
		service.insert(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupUele")
	public String codeGroupUelete(Code vo) {
		
		
		service.update(vo);
		
		return "redirect:/codeGroupXdmList";
	}
	
	

	
	
	
	
}
