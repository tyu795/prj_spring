package com.mycompany.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(Model model) {
		
		List<CodeGroup> list = service.selectList(); 
		
		// 왼쪽의 list 는 jsp 에서 사용할 변수명
		model.addAttribute("list",list);
		
		return "codeGroupList";
	}

}
