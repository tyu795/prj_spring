package com.mycompany.app.infra.index;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mycompany.app.infra.rooms.Rooms;
import com.mycompany.app.infra.rooms.RoomsServiceImpl;
import com.mycompany.app.infra.rooms.RoomsVo;

@Controller
public class IndexController {
	
	
	@Autowired
	RoomsServiceImpl serviceRooms;
	@Autowired
	RoomsServiceImpl service;

	
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "User/infra/biography/biographyUsrView";
	}
	
	
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "User/infra/index/indexUsrView";
	}
	
	//관리자 로그인창
//	@RequestMapping("/loginXdmForm")
//	public String loginXdmForm() {
//		return "Admin/infra/member/loginXdmForm";
//	}
	
	//관리자 페이지창
	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "Admin/infra/index/indexXdmView";
	}
	
	
	//숙박업체 관리자 페이지창
	@RequestMapping("/houseXdmList") 
	public String houseXdmList() {
		return "Admin/house/houseXdmList";
	}
	
	
	
	
	// ---------------------------------사용자 페이지---------------------------------------------
	
	// 솜비앤비 메인
	@RequestMapping("/usrMain")
	public String usrMain(RoomsVo vo,Model model) {
		
		// rooms 테이블에 있는 정보를 가져온다
		List<Rooms> list = serviceRooms.selectList(vo);
		
		model.addAttribute("list",list);
		
		
		// 가져온 정보를 jsp로 전달해야 된다.
		
		return "User/infra/biography/usrMain";
	}
	
	// 솜비앤비 숙소 소개
	@RequestMapping("/introduceBNB")
	public String introduceBNB(RoomsVo vo,Model model) {
		// 데이터를 가지고 온다.
		Rooms rooms = service.selectOne(vo);
		
		
		// 가지고 온 데이터를 jsp로 전달 해 준다.
		model.addAttribute("item", rooms);
		return "User/infra/biography/introduceBNB";
	}
	
	// 솜비앤비 예약
	@RequestMapping("/reservationBNB")
	public String reservationBNB() {
		return "User/infra/biography/reservationBNB";
	}
	
	
	
	// 회원가입창
	@RequestMapping("/signUpForm")
	public String signUpForm() {
		return "User/infra/member/signUpForm";
	}
	
	
	@RequestMapping(value = "publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		
		
		String apiUrl ="http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=tJcgCHX9hau0FhNC99MlbsKLc3H1%2BwOlQPl5t8V8HsXIEFnBoIZEMCZv0f1erufO%2B%2Fz6DoHHF%2BoRvvoebbQoug%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		ObjectMapper objectMapper = new ObjectMapper();
	      
	      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
	      
	      System.out.println("######## Map");
			for (String key : map.keySet()) {
				String value = String.valueOf(map.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			
			Map<String, Object> header = new HashMap<String, Object>();
			header = (Map<String, Object>) map.get("header");
			
			System.out.println("######## Header");
			for (String key : header.keySet()) {
				String value = String.valueOf(header.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			
			String aaa = (String) header.get("resultCode");
			
			System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
			System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
			
			
			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>) map.get("body");
			
			List<Home> items = new ArrayList<Home>();
			items = (List<Home>) body.get("items");
			
			System.out.println("items.size(): " + items.size());
			
//			for(Home item : items) {
//				System.out.println(item.getMM());
//			}
			
			model.addAllAttributes(header);
			model.addAllAttributes(body);
			


		
		
		
		return "test/publicCorona1List";
	}

	
	
}
