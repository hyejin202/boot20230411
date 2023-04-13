package com.example.demo.controller;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;

@Controller
@RequestMapping("sub10")
public class Controller10 {

	@RequestMapping("link1")
	public void method1(@RequestParam String name) {
		/*
		String name = request.getParameter("name");  //request파라미터로 꺼낸 값을 바로 attribute의 파라미터 값에 할당
		*/
	}
	
	@RequestMapping("link2")
	public void method2(@ModelAttribute Dto04 dto) {
		/*
		Dto04 dto = new Dto04();
		dto.setName(request.getParameter("name"));   //request파라미터로 꺼낸값을 프로퍼티에 설정 
		dto.setAge((request.getParameter("age"));
		
		//모델에 추가
		request.setAttribute("dto04", dto);
		*/
	}
	//@requestParam, @ModelAttribute 섞어서
	//경로 : sub10/link3?model=ray&price=3.14&name=son&age=22
	@RequestMapping("link3")
	public void method3(
						String model, 
						double price, 
						Dto04 obj ) {

		
	}
}
