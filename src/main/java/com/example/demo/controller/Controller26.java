package com.example.demo.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;
import com.example.demo.mapper.*;

@Controller
@RequestMapping("sub26")
public class Controller26 {

	@Autowired
	private Mapper06 mapper;
	
	// /sub26/link1?page=3	-> 3페이지
	// /sub26/link?page=1	-> 1페이지
	// /sub26/link1  		-> 1페이지
	@GetMapping("link1")
	public String method1(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model){
		System.out.println(page);
		
		// 쿼리에서 사용하는 시작인덱스
		Integer startIndex = (page-1)*20;
		
		//페이지네이션 가장 왼쪽번호, 오른쪽번호 구하기
		Integer leftPageNum = (page-1) / 10 * 10 + 1;
		Integer rightPageNum = leftPageNum + 9;
		
		// 이전 버튼 페이지 번호 구하기
		Integer prevPageNum = leftPageNum - 10;
		// 다음 버튼 페이지 번호 구하기
		Integer nextPageNum = rightPageNum + 1;
		
		//마지막 페이지 구하기
		Integer numOfRecord = mapper.countAll();
		Integer lastPageNum = (numOfRecord -1) / 20 + 1;
		
		//오른쪽 페이지 번호가 마지막 페이지 번호보다 클 수 없음
		rightPageNum = Math.min(rightPageNum, lastPageNum);
		
		List<Customer> list = mapper.listCustomer(startIndex);
		
		model.addAttribute("customerList", list);
		model.addAttribute("leftPageNum", leftPageNum);
		model.addAttribute("rightPageNum", rightPageNum);
		model.addAttribute("prevPageNum", prevPageNum);
		model.addAttribute("nextPageNum", nextPageNum);
		model.addAttribute("lasttPageNum", lastPageNum);
		model.addAttribute("currentPageNum", page);
		
		return "/sub13/link1";
	}
 }
