package com.example.demo.controller;

import java.sql.*;
import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;

@Controller
@RequestMapping("sub13")
public class Controller13 {
	
	@Value("${spring.datasource.url}") // 스프링으로 프로퍼티 읽을 때
	private String url;
	@Value("${spring.datasource.username}")
	private String name;
	@Value("${spring.datasource.password}")
	private String password;
	
	// Dto 
	
	@RequestMapping("link1")
	//고객주소 추가
	//전체고객 출력
	//jsp에서 테이블 형식으로 보여주기
	public void method1(Model model) throws Exception {
		String sql = """
				SELECT CustomerID, CustomerName, Address 
				FROM Customers
				""";
		List<Customer> obj = new ArrayList<>();
		//1.
		//2.
			
		Connection con = DriverManager.getConnection(url, name, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		try(con; stmt; rs;) {
			while(rs.next()) {
				int id = rs.getInt("customerID");
				String name = rs.getString("customerName");
				String address = rs.getString("address");
				System.out.println(id + ". " + name + ", 주소 : "  + address);  //콘솔 출력
				
				Customer customer = new Customer();
				customer.setId(id);
				customer.setName(name);
				customer.setAddress(address);
				obj.add(customer);
			}
		}
		
		
		//3. add attribute
		model.addAttribute("customerList", obj);
		
		//4. forward
	}
	
	@RequestMapping("link2")
	public void method2(Model model) throws Exception {
		String sql = """
				SELECT EmployeeID, LastName, FirstName 
				FROM Employees
				WHERE EmployeeID < 4
				""";
		List<Employee> obj = new ArrayList<>();
		//이 메소드 완성
		//Employee 클래스 작성
		//프로퍼티 (id(int), lastName(String), firstName(String))
		//jsp 작성
		
		Connection con = DriverManager.getConnection(url, name, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		try (con; stmt; rs;) {
			while(rs.next()) {
				Employee employee = new Employee();
				employee.setId(rs.getInt("employeeId"));
				employee.setLastName(rs.getString("lastName"));
				employee.setFirstName(rs.getString("firstName"));
				obj.add(employee);
			}
		}
		
		model.addAttribute("employeeList", obj);
	}
	
	
	// 경로 : /sub13/link3?id=? 쿼리스트링으로 고객아이디 지정
	@RequestMapping("link3")
	public String method3(@RequestParam String id, Model model) throws Exception {
		List<Customer> list = new ArrayList<>();
		String sql = """
				SELECT CustomerId, CustomerName, Address
				FROM Customers
				WHERE CustomerID = """;
		sql += id;
		
//		System.out.println(sql);
		
		Connection con = DriverManager.getConnection(url, name, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		try(con; stmt; rs;) {
			while(rs.next()) {
				Customer customer = new Customer();
				customer.setId(rs.getInt("customerid"));
				customer.setAddress(rs.getString("address"));
				customer.setName(rs.getString("customerName"));
				
				list.add(customer);
			}
		}
		model.addAttribute("customerList", list);
		
		return "/sub13/link1";
	}
	
	// 경로 : /sub13/link4?id=?
	@RequestMapping("link4")
	public String method4(@RequestParam String id, Model model) throws Exception {
		List<Customer> list = new ArrayList<>();
		String sql = """
				SELECT CustomerId, CustomerName, Address
				FROM Customers
				WHERE CustomerID = ? """;
//		sql += id; 가 아니라 JDBC의 도움을 받음 - preparedstatement의 set~()메소드 사용
		
//		System.out.println(sql);
		
		Connection con = DriverManager.getConnection(url, name, password);
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		
		ResultSet rs = stmt.executeQuery();
		
		try(con; stmt; rs;) {
			while(rs.next()) {
				Customer customer = new Customer();
				customer.setId(rs.getInt("customerid"));
				customer.setAddress(rs.getString("address"));
				customer.setName(rs.getString("customerName"));
				
				list.add(customer);
			}
		}
		model.addAttribute("customerList", list);
		
		return "/sub13/link1";
	}
	
	//sub13/link5?id=3
	@RequestMapping("link5")
	public String method5(@RequestParam String id, Model model) throws Exception {
		// 사용자에게 직원 id 입력받아서 
		// 쿼리완성하고 실행 후에
		// /sub13/link2로 포워드해서 직원1명 정보 출력
		String sql = """
				SELECT EmployeeId, lastName, firstName 
				FROM Employees
				WHERE EmployeeId = ?
				""";
		List<Employee> list = new ArrayList<>();
		
		Connection con = DriverManager.getConnection(url, name, password);
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		try(con; pstmt; rs;) {
			while(rs.next()) {
				Employee employee = new Employee();
				employee.setId(rs.getInt("employeeId"));
				employee.setFirstName(rs.getString("firstName"));
				employee.setLastName(rs.getString("lastName"));
				
				list.add(employee);
			}
		}
		
		model.addAttribute("employeeList", list);
		
		return "/sub13/link2";
	}

}
