package com.example.demo.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("sub3")
public class Controller03 {
	
	@RequestMapping("link1")
	public void method1() {
		System.out.println("/sub3/link1 에서 일하는 메소드!!!");
	}
	
	@RequestMapping("link2")
	public void method2() {
		System.out.println("/sub3/link2에서 일하는 메소드!!!!");
	}
	
}
