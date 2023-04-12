package com.example.demo.controller;

import java.net.http.*;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.*;

@Controller
@RequestMapping("sub4")
public class Controller04 {
	//method argument (parameter)
	
	// 경로 : /sub04/link1
	@RequestMapping("link1")
	public void method1(HttpServletRequest request) {
		
		//1.request parameter 수집/가공
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		System.out.println("name : " + name);
		System.out.println("age : " + age);
		
		// 2. business logic
		
		// 3. add attribute
		
		//4. forward / redirect
		
	}
	//경로 : /sub4/link2?address=seoul&email=korea@gmail.com
	//address, email 파라미터 출력하는 메소드 작성
	@RequestMapping("link2")
	public void method2(HttpServletRequest request) {
		//1. request param
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		
		System.out.println("address : " + address);
		System.out.println("email : " + email);
	}
	
	//경로 : /sub4/link3?address=seoul
	@RequestMapping("link3")
	public void method3(@RequestParam("address") String address) {
		System.out.println("address : " + address);
	}
	
	//경로 : /sub4/link4?age=99
	//로 요청왔을 때 age request 파람을 출력하는 메소드 작성
	@RequestMapping("link4") 
	public void method4(@RequestParam("age") String myage) {
		System.out.println("age : " + myage);
		
		int age = Integer.parseInt(myage);
		System.out.println("int age : " + age);
	}	
	
	//경로 : /sub4/link5?score=80
	@RequestMapping("link5")
	public void method5(@RequestParam("score") int score) {
		System.out.println("score : " + score);
		// 2. 
		// 3
		// 4.
	}
	
	// 아규먼트와 파라미터가 값이 같다면 생략 가능
	//경로 : /sub4/link6?email=son@gamil.com
	/*
	 * @RequestMapping("link6") 
	 * public void method6(@RequestParam("email") Stringemail) { 
	 * 		System.out.println(email); 
	 * }
	 */
	@RequestMapping("link6")
	public void method6(@RequestParam String email) {
			System.out.println(email);
	}
	
	//경로 : /sub4/link7?age=33
	//method7 작성
	@RequestMapping("link7")
	public void method7(@RequestParam String age) {
		System.out.println("나이 : " + age);
	}
	
	//경로 : /sub4/link8
	@RequestMapping("link8")
	public void method8(String address) {  //@RequestParam으로 간주해 생략 가능
		System.out.println(address);
	}
	
	//경로 : /sub4/link9?score=99.7
	//method9작성
	@RequestMapping("link9")
	public void method9(double score) {
		System.out.println(score);
	}
	
}
