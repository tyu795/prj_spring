package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupXdmList")
	public String codeGroupXdmList(CodeGroupVo vo,Model model) {
		
		List<CodeGroup> list = service.selectList(vo); 
		
		// 왼쪽의 list 는 jsp 에서 사용할 변수명
		model.addAttribute("list",list);
		
		return "Admin/infra/codegroup/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroupVo vo,Model model) {
		
		 System.out.println("controller:vo.getshOption():" + vo.getShOption());
		 System.out.println("controller:vo.getshOption():" + vo.getShOption());
		 
		
		
		List<CodeGroup> list = service.selectList(vo); 
		
		// 왼쪽의 list 는 jsp 에서 사용할 변수명
		model.addAttribute("list",list);
		
		return "codeGroupList";
	}
	
	@RequestMapping("/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo, Model model) {
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		return "Admin/infra/codegroup/codeGroupXdmForm";
	}

	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
	
		service.update(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupDele")
	public String codeGroupDelete(CodeGroup dto) {
		
		
		service.delete(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupInst")
	public String codeGroupInsert(CodeGroup dto) {
		
		
		service.insert(dto);
		
		return "redirect:/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupUele")
	public String codeGroupUelete(CodeGroup vo) {
		
		
		service.update(vo);
		
		return "redirect:/codeGroupXdmList";
	}
	
	

	
	
	
	
}
