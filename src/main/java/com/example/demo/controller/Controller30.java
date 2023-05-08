package com.example.demo.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.mapper.*;

@Controller
@RequestMapping("sub30")
public class Controller30 {

	@Autowired
	private Mapper10 mapper;

	@GetMapping("link1")
	public void method1() {
		// A 고객의 돈 500원 차감
		mapper.minusA();
		// B 고객의 돈 300원 증가
		mapper.plusB();
	}
	
	@GetMapping("link2")
	public void method2() {
		// A 고객의 돈 500원 차감
		mapper.minusA(); 
		
		int a = 3 / 0;// runtime error
		
		// B 고객의 돈 300원 증가
		mapper.plusB();
	}

	@GetMapping("link3")
	@Transactional    // 중간에 런타임 예외발생 시 진행된 쿼리 rollback 해줌
	public void method3() {
		// A 고객의 돈 500원 차감
		mapper.minusA(); 
		
		int a = 3 / 0;// runtime error
		
		// B 고객의 돈 300원 증가
		mapper.plusB();
	}
	
	@GetMapping("link4")
	@Transactional    // checked exception에서는 rollbalck해주지 않음
	public void method4() throws Exception {
		// A 고객의 돈 500원 차감
		mapper.minusA(); 
		
		Class.forName("java.lang.String2"); // checked exception
		
		// B 고객의 돈 300원 증가
		mapper.plusB();
	}
	
	@GetMapping("link5")
	@Transactional(rollbackFor = Exception.class) //checked exception도 롤백 가능
	public void method5() throws Exception {
		// A 고객의 돈 500원 차감
		mapper.minusA(); 
		
		Class.forName("java.lang.String2"); // checked exception
		
		// B 고객의 돈 300원 증가
		mapper.plusB();
	}
}
