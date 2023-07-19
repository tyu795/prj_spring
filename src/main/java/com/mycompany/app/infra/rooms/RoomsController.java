/*
 * package com.mycompany.app.infra.rooms;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import com.mycompany.app.infra.code.Code;
 * 
 * @Controller public class RoomsController {
 * 
 * @Autowired RoomsServiceImpl service;
 * 
 * // 등록
 * 
 * @RequestMapping("/codeInst") public String codeInsert(Code dto) {
 * 
 * service.insert(dto);
 * 
 * return "redirect:/codeXdmList";
 * 
 * }
 * 
 * // 삭제
 * 
 * @RequestMapping("/codeDele") public String codeDelete(Code dto) {
 * 
 * service.delete(dto);
 * 
 * return "redirect:/codeXdmList";
 * 
 * }
 * 
 * 
 * // 수정
 * 
 * @RequestMapping("codeUele") public String codeUelete(Code dto) {
 * 
 * service.uelete(dto);
 * 
 * return "redirect:/codeXdmList"; }
 * 
 * 
 * // 업데이트
 * 
 * @RequestMapping("codeUpdt") public String codeUpdt(Code dto) {
 * 
 * service.update(dto);
 * 
 * return "redirect:/codeXdmList"; }
 * 
 * 
 * 
 * 
 * 
 * }
 */