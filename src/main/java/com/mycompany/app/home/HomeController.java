package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public String home() {
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// 아래의 jsp 파일 호출
		return"home";
	}
	
	@RequestMapping(value="/home2")
	public String home2() {
		
		return  "app/home/home2";
	}
	
	@RequestMapping(value = "/home3")
	public ModelAndView home3() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("home3");
		
		return mav;
	}
	
	@RequestMapping(value="/hi")
	public String hi() {
		
		return  "hi";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		
		return "app/login/login";
	}
	
	@RequestMapping(value = "/xdmin")
	public String xdmin() {
		
		return "app/xdmin/xdmin";
	}
	
	
	
	
	

}
