package com.mycompany.app.infra.rooms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class RoomsController {
	
	@Autowired
	RoomsServiceImpl service;
	
	@RequestMapping("/roomsXdmList")
	public String roomsXdmList(RoomsVo vo,Model model) {
	
		List<Rooms> list = service.selectList(vo);
		
		model.addAttribute("list",list);
		
		return "Admin/infra/rooms/roomsXdmList";
		
	}
	
	@RequestMapping("/roomsXdmForm")
	public String roomsXdmForm(RoomsVo vo,Model model) {
		Rooms rooms = service.selectOne(vo);
		model.addAttribute("item", rooms);
		return "Admin/infra/rooms/roomsXdmForm";
		
	}
	
	@RequestMapping("/roomsUpdt")
	public String roomsUpdt(Rooms dto) {
		
		service.update(dto);
		
		return "redirect:/roomsXdmList";
		
	}
	
	@RequestMapping("roomsDele")
	public String roomsDelete(Rooms dto) {
		
		service.delete(dto);
		
		return "redirect:/roomsXdmList";
		
	}
	
	
	@RequestMapping("/roomsInst")
	public String roomsInsert(Rooms dto) {
		
		service.insert(dto);
		
		return "redirect:/roomsXdmList";
		
	}
	
	
	@RequestMapping("/roomsUele")
	public String roomsUelete(Rooms dto) {
		
		service.uelete(dto);
		
		return "redirect:/roomsXdmList";
	}
	
	

}
