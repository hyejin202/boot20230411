package com.example.demo.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;
import com.example.demo.mapper.*;

@Controller
@RequestMapping("sub22")
public class Controller22 {
	
	@Autowired
	private Mapper03 mapper;
	
	@RequestMapping("link1")
	public void method1() {
		int cnt1 = mapper.sql1(12, "java");
		int cnt2 = mapper.sql1(10, "css");
		int cnt3 = mapper.sql1(32, "html");
		int cnt4 = mapper.sql1(99, "spring");
		
		System.out.println(cnt1);
		System.out.println(cnt2);
		System.out.println(cnt3);
		System.out.println(cnt4);
	}
	
	@RequestMapping("link2")
	public void method2() {
		int cnt1 = mapper.sql2(173.29, "abc");
		int cnt2 = mapper.sql2(182.2, "def");
		int cnt3 = mapper.sql2(161.9, "ghi");
		
		System.out.println(cnt1);
		System.out.println(cnt2);
		System.out.println(cnt3);
	}
	
	// /sub22/link3?val1=123.4&val2=홍길동
	@RequestMapping("link3")
	public void method3(Double val1, String val2) {
		System.out.println(mapper.sql2(val1, val2));
	}
	
	@RequestMapping("link4")
	public void method4() {
		Dto09 dto = new Dto09();
		dto.setProp1(300);
		dto.setProp2("hello MyBatis");
		dto.setProp3(2.12);
		
		int cnt = mapper.sql3(dto);
		System.out.println(cnt);
	}
	
	@RequestMapping("link5")
	public void method5() {
		Dto10 dto = new Dto10();
		dto.setAge(20);
		dto.setName("강백호");
		dto.setScore(77.77);
		
		int cnt = mapper.sql4(dto);
		System.out.println(cnt + "개 행 입력됨");
	}
	
	// /sub22/link6?age=29&name=송태섭&score=88.6
	@RequestMapping("link6")
	public void method6(@ModelAttribute Dto10 dto ) {
		int cnt = mapper.sql4(dto);
		System.out.println(cnt + "개 행 입력됨");
	}
	
	// MyTable36에 데이터 추가될 수 있게
	// 아래코드 수정하기
	// /sub22/link7?prop1=33&prop2=helloJava&prop3=9.99
	@RequestMapping("link7")
	public void method7(@ModelAttribute Dto09 dto ) {
		int cnt = mapper.sql3(dto);
		System.out.println(cnt + "개 행 입력됨");
	}
	
	@RequestMapping("link8")
	public void method8() {
		Dto09 dto1 = new Dto09();
		Dto10 dto2 = new Dto10();
		
		dto1.setProp1(345);
		dto2.setName("채소연");
		dto1.setProp3(99.99);
		
		int cnt = mapper.sql5(dto1, dto2);
		System.out.println(cnt + "개 행 추가됨");
	}
	
	@RequestMapping("link9")
	public void method9() {
		Dto09 dto1 = new Dto09();
		Dto10 dto2 = new Dto10();
		
		dto1.setProp1(9151120);
		dto1.setProp2("fall");
		dto1.setProp3(10.99);
		dto2.setAge(21);
		dto2.setName("winter");
		dto2.setScore(100.00);
		
		int cnt = mapper.sql6(dto1, dto2);
		System.out.println(cnt + "개 행 추가됨");
		
	}
	
	// /sub22/link10?prop1=7&prop2=lunch&prop3=3.41&age=88&name=mountine&score=8.9
	@RequestMapping("link10")
	public void method10(Dto09 dto1, Dto10 dto2) {
		int cnt = mapper.sql6(dto1, dto2);
		System.out.println(cnt + "개 행 추가됨");
	}
	
	// /sub22/link11?prop2=spring&prop3=412
	@RequestMapping("link11")
	public String method11(Dto11 dto) {
		System.out.println("prop1: " + dto.getProp1());
		int cnt = mapper.sql7(dto);
		System.out.println(cnt + "행 입력 완료");
		System.out.println("prop1: " + dto.getProp1());
		
		return dto.getProp1() + "번째 데이터 입력완료";
	}
	
	// /sub22/link12?age=40&name=son&score=9.9
	// 요청시 MyTable40에서 데이터 추가되도록 코드
	// 컨트롤러 메소드, 매퍼 메소드, 자바빈
	// *자바빈의 id 프로퍼티에 자동증가 컬럼값 받을 수 있게
	@RequestMapping("link12")
	public String method12(Dto12 dto) {
		int cnt = mapper.sql8(dto);
		System.out.println(cnt + "행 입력완료");
		System.out.println("Id : " + dto.getId());
		
		return dto.getId() + "번째 데이터 입력완료";
	}
	
	
	
	
	
	
}
