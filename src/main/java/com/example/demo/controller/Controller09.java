package com.example.demo.controller;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;

import jakarta.servlet.http.*;

@Controller
@RequestMapping("sub9")
public class Controller09 {

	// sub9/link1?name=son&age=22
	@RequestMapping("link1")
	public String method1(HttpServletRequest req, Model model) {
		// 1. request parameter 수집 /가공
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));

		Dto04 obj = new Dto04();
		obj.setName(name);
		obj.setAge(age);

		// 2. business logic

		// 3. add attribute
		model.addAttribute("value", obj);

		// 4.forward / redirect
		/// WEB-INF/views/sub9/link1.jsp로 포워드
		return "/sub9/link1";
	}

	@RequestMapping("link2")
	public String method2(@ModelAttribute("value") Dto04 obj) {

		return "/sub9/link1";
	}

	@RequestMapping("link3")
	public void method3(@ModelAttribute("attr") Dto04 dto) {
		// 1. request parameter 수집/가공
		// Dto04 객체 만들고
		// name 요청 파라미터를 위 객체에 셋팅
		// age 요청 파라미터를 위 객체에 셋팅

		// 3. add attribute 추가
		// 위 객체를 attr이름으로 model 추가

		// 4. forward / redirect
		// /WEB-INF/views/sub9/link3.jsp로 포워드
	}
	// /sub9/link4?name=cha&age=50
	@RequestMapping("link4")
	public void method4(Dto04 dto) {   // @ModelAttribute Dto04 dto
		// 1. request parameter 수집/가공
		// Dto04 객체 만들고
		// name 요청 파라미터를 위 객체에 셋팅
		// age 요청 파라미터를 위 객체에 셋팅

		// 3. add attribute 추가
		// 위 객체를 dto04이름으로 model 추가

		// 4. forward / redirect
		// /WEB-INF/views/sub9/link3.jsp로 포워드
	}
	
	//경로 : /sub9/link5?company=apple&model=ipad&price=800000
	@RequestMapping("link5")
	public void method5(Dto02 dto) {  //(@ModelAttribute("attributeName") attribute이름설정을 안하면 자동으로 객체의 소문자로 이름 정해짐
										//dto는 객체 이름 
										//그래서 jsp파일에서 ${dto02.model}이라 작성
		//1. 쿼리스트링 작성
		//2. jsp 작성
		//해서 dto의 프로퍼티 출력하기
	}
}


