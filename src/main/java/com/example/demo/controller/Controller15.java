package com.example.demo.controller;

import java.sql.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;

@Controller
@RequestMapping("sub15")
public class Controller15 {
	@Value("${spring.datasource.url}") // 스프링으로 프로퍼티 읽을 때
	private String url;
	@Value("${spring.datasource.username}")
	private String name;
	@Value("${spring.datasource.password}")
	private String password;

	@RequestMapping("link1")
	public void method1() throws Exception{
		// 새 고객 데이터 추가
		String sql ="""
				INSERT INTO Customers (CustomerID, CustomerName, City)
				VALUES (93, '서태웅', '부산')
				""";
		//INSERT, UPDATE, DELETE는
		//Statement의 executeUpdate 메소드 사용
		// 리턴값은 영향을 미친 레코드 수
		Connection con = DriverManager.getConnection(url, name, password);
		Statement stmt = con.createStatement(); 
		int count = stmt.executeUpdate(sql);
		
		try(con; stmt;) {
			
		}
		System.out.println(count + "개 행 추가됨");
	}
	
	//경로 : /sub15/link2
	//10 번째 직원 추가
	// 컬럼 : EmployeeID, LastName, FirstName 
	
	@RequestMapping("link2")
	public void method2() throws Exception{
		String sql = """
				INSERT INTO Employees (EmployeeID, lastName, firstName)
				VALUE (10, 'baeckho', 'kang')
				""";
		
		Connection con = DriverManager.getConnection(url, name, password);
		Statement stmt = con.createStatement();
		int count = stmt.executeUpdate(sql);
		
		try(con; stmt;) {
			
		}
		System.out.println(count + "개 행 추가됨");
	}
	
	// /sub15/link3?customerName=송태섭&city=부산&country=한국
	@RequestMapping("link3")
	public void method3(@RequestParam("customerName") String customerName, 
			@RequestParam("city") String city, 
			@RequestParam("country") String country
			) throws Exception {
		String sql = """
				INSERT INTO Customers (CustomerName, City, Country)
				VALUES (?, ?, ?)
				""";
		try (
				Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1,  customerName);
			pstmt.setString(2,  city);
			pstmt.setString(3,  country);
			int count = pstmt.executeUpdate();
			System.out.println(count + "개 행 추가됨");	
		}
	}
	
	// /sub15/link4?firstName=박지성&lastName=두개의심장
	//직원 정보 추가
	@RequestMapping("link4")
	public void method4(@RequestParam("firstName") String fName, 
			@RequestParam("lastName") String lName) throws Exception {
		String sql = """
				INSERT INTO Employees(firstName, lastName)
				VALUES (?, ?)
				""";
		try (
				Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, fName);
			pstmt.setString(2, lName);
			
			int count = pstmt.executeUpdate();
			System.out.println(count + "개 행 추가됨");
		}
	}
	
	@RequestMapping("link5")
	public void method5() {
		// form 이 있는 view로 포워드
		// view: /WEB/views/sub15/link6
	}
	@RequestMapping("link6")
	public void method6(@RequestParam("firstName") String firstName, 
						@RequestParam("lastName") String lastName) throws Exception{
		
		System.out.println(firstName);
		System.out.println(lastName);
		
		String sql = """
				INSERT INTO Employees (firstName, lastName)
				VALUES (?, ?)
				""";
		try (
				Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, firstName);
			pstmt.setString(2, lastName);
			int count = pstmt.executeUpdate();
		}	
	}
	
	//경로 : /sub15/link7
	//폼이 있는jsp로 포워드
	@RequestMapping("link7")
	public void method7() {
		
	}
	//경로 : /sub15/link8
	@RequestMapping("link8")
	public void method8(@RequestParam("name") String name,
			@RequestParam("city") String city,
			@RequestParam("country")String country) throws Exception{
		
		//3개의 메소드 파라미터 활용해서
		//suppliers 테이블에 레코드 추가
		
		String sql = """
				INSERT INTO Suppliers (SupplierName, City, Country)
				VALUES (?, ?, ?)
				""";
		try (
				Connection con = DriverManager.getConnection(url, this.name, password);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1,  name);
			pstmt.setString(2,  city);
			pstmt.setString(3, country);
			
			int count = pstmt.executeUpdate();
			System.out.println("추가됨");
		}
	}
	
	@RequestMapping("link9")
	public void method9() {
		
	}
	@RequestMapping("link10")
	public void mehtod10(@ModelAttribute("customer") Customer customer) throws Exception{  //@ModelAttribute("customer") 생략 가능
		
		String sql = """
				INSERT INTO Customers(CustomerName, ContactName, Address)
				VALUES (?, ?, ?)
				""";
		try (
				Connection con = DriverManager.getConnection(url, this.name, password);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
				pstmt.setString(1,  customer.getName());
				pstmt.setString(2,  customer.getContactName());
				pstmt.setString(3,  customer.getAddress());
				int cnt = pstmt.executeUpdate();
				System.out.println("추가됨");
		}	
	}
	
	// 경로 : /sub15/link11
	@RequestMapping("link11")
	public void method() {
		
	}
	//경로 : /sub15/link12
	@RequestMapping("link12") 
	@ResponseBody
	public String method12(Supplier supplier) throws Exception{
		// 공급자 테이블에 데이터 입력
		String sql = """
				INSERT INTO Suppliers (supplierName, contactName, address, city, postalCode, country, phone)
				VALUE(?, ?, ?, ?, ?, ?, ?)
				""";
		try (
				Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement pstmt = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);) {
			pstmt.setString(1,  supplier.getName());
			pstmt.setString(2,  supplier.getContactName());
			pstmt.setString(3,  supplier.getAddress());
			pstmt.setString(4,  supplier.getCity());
			pstmt.setString(5,  supplier.getPostalCode());
			pstmt.setString(6,  supplier.getCountry());
			pstmt.setString(7,  supplier.getPhone());
			int cnt = pstmt.executeUpdate();
			
			// 자동 생성된 컬럼(키) 값 얻기
			ResultSet key = pstmt.getGeneratedKeys(); //자동 생성된 컬럼과 레코드 리턴, 커서는 컬럼에
			
			int keyValue = 0;
			if (key.next()) {  //next() : 레코드 값을 리턴
				keyValue = key.getInt(1);
				
			}
			
			System.out.println("추가됨");
			System.out.println(keyValue + "번 공급자 데이터 입력됨");
			
			return keyValue + "번 공급자 데이터 입력됨";
		}
	}
	
	
	
}
