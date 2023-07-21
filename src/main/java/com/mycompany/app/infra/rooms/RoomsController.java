//
// package com.mycompany.app.infra.rooms;
// 
//  import org.springframework.beans.factory.annotation.Autowired; import
//  org.springframework.stereotype.Controller; import
//  org.springframework.web.bind.annotation.RequestMapping;
//  
//  import com.mycompany.app.infra.code.Code;
//  
//  @Controller
//  public class RoomsController {
//  
//	  @Autowired RoomsServiceImpl service;
//  
//  // 등록
//  
//	  @RequestMapping("/roomsInst") 
//	  public String codeInsert(Code dto) {
//  
//	  service.insert(dto);
//	  
//	  return "redirect:/roomsXdmList";
//	  
//	  }
// 
//	  // 삭제
//	  
//	  @RequestMapping("/roomsDele") 
//	  public String codeDelete(Code dto) {
//	  
//	  service.delete(dto);
//	  
//	  return "redirect:/roomsXdmList";
//	  
//	  }
//	  
//	  
//	  // 수정
//	  
//	  @RequestMapping("roomsUele") 
//	  public String codeUelete(Code dto) {
//	  
//	  service.uelete(dto);
//	  
//	  return "redirect:/roomsXdmList"; }
//	  
//	  
//	  // 업데이트
//	  
//	  @RequestMapping("roomsUpdt") 
//	  public String codeUpdt(Code dto) {
//	  
//	  service.update(dto);
//	  
//	  return "redirect:/roomsXdmList"; }
//	  }
